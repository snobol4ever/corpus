                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_same_lunch$2F2_α
proc_same_lunch$2F2_α:
                        .global          proc_same_lunch$2F2_α
                        .global          proc_same_lunch$2F2_β
                        .global          proc_same_lunch$2F2_γ
                        .global          proc_same_lunch$2F2_ω
                        sub              rsp, 864
                        mov              [rsp + 840], rcx
                        mov              [rsp + 848], rdx
                        mov              [rsp + 856], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 784
                        mov              edx, 832
                        call             rt_jmp_frame_lexprep2@PLT
proc_same_lunch$2F2_α_body:
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rbp + 784], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx25_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx25_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx25_101
.Lx25_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx25_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_same_lunch$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_same_lunch$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
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
.Lx30_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx30_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx30_41
                        cmp              esi, 1
                                                                                        jne   .Lx30_55
                        mov              r8, rax
                                                                                        jmp   .Lx30_40
.Lx30_55:
                        cmp              esi, 2
                                                                                        jne   .Lx30_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx30_41
                        mov              r8, rax
                                                                                        jmp   .Lx30_40
.Lx30_56:
                        cmp              eax, 13
                                                                                        jne   .Lx30_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx30_41
                        cmp              rax, r8
                                                                                        je    .Lx30_41
                        mov              r8, rax
                                                                                        jmp   .Lx30_40
.Lx30_41:
                        lea              r9, [rbp + 736]
.Lx30_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx30_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx30_43
                        cmp              esi, 1
                                                                                        jne   .Lx30_57
                        mov              r9, rax
                                                                                        jmp   .Lx30_42
.Lx30_57:
                        cmp              esi, 2
                                                                                        jne   .Lx30_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx30_43
                        mov              r9, rax
                                                                                        jmp   .Lx30_42
.Lx30_58:
                        cmp              eax, 13
                                                                                        jne   .Lx30_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx30_43
                        cmp              rax, r9
                                                                                        je    .Lx30_43
                        mov              r9, rax
                                                                                        jmp   .Lx30_42
.Lx30_43:
                        cmp              r8, r9
                                                                                        je    .Lx30_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx30_44
                        cmp              eax, 99
                                                                                        je    .Lx30_44
                        cmp              eax, 13
                                                                                        jne   .Lx30_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx30_44
                                                                                        jmp   .Lx30_45
.Lx30_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx30_53
                        cmp              eax, 99
                                                                                        je    .Lx30_53
                        cmp              eax, 13
                                                                                        jne   .Lx30_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx30_53
                                                                                        jmp   .Lx30_46
.Lx30_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx30_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx30_53
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
                                                                                        jmp   .Lx30_51
.Lx30_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx30_47
                        cmp              eax, 99
                                                                                        je    .Lx30_47
                        cmp              eax, 13
                                                                                        jne   .Lx30_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx30_47
                                                                                        jmp   .Lx30_48
.Lx30_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx30_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx30_53
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
                                                                                        jmp   .Lx30_51
.Lx30_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx30_49
                        cmp              edx, 14
                                                                                        je    .Lx30_53
                                                                                        jmp   .Lx30_52
.Lx30_49:
                        cmp              edx, 14
                                                                                        je    .Lx30_52
                        cmp              ecx, 7
                                                                                        je    .Lx30_53
                        cmp              edx, 7
                                                                                        je    .Lx30_53
                        cmp              ecx, 6
                                                                                        jne   .Lx30_50
                        cmp              edx, 6
                                                                                        jne   .Lx30_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx30_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx30_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx30_51
                                                                                        jmp   .Lx30_52
.Lx30_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx30_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx30_53
.Lx30_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx30_54
.Lx30_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx30_54
.Lx30_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx30_54:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_same_lunch$2F2_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_same_lunch$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n8_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
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
                        lea              r9, [rbp + 656]
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
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_var_ref_α
n8_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n12_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 368]
                        lea              r8, [rbp + 368]
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
                        lea              r9, [rbp + 384]
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
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n13_var_ref_α
n11_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_proc_staged_α:
                        mov              qword ptr [rbp + 576], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx45_20
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx45_21
.Lx45_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             rt_arg_stage@PLT
.Lx45_21:
                        mov              edi, 4
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx45_1
                        lea              rcx, [rip + .Lx45_3]
                        lea              rdx, [rip + .Lx45_4]
                                                                                        jmp   rax
.Lx45_3:
                        mov              qword ptr [rbp + 584], rsp
                        mov              rax, qword ptr [rbp + 576]
                        test             rax, rax
                                                                                        jne   .Lx45_5
                        mov              qword ptr [rbp + 576], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx45_2
.Lx45_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx45_2
.Lx45_4:
                        mov              rax, qword ptr [rbp + 576]
                        test             rax, rax
                                                                                        jne   .Lx45_6
                        mov              qword ptr [rbp + 576], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx45_2
.Lx45_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx45_2
.Lx45_1:
                        call             rt_faildescr@PLT
.Lx45_2:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n15_var_ref_α
n12_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 584]
                                                                                        jmp   qword ptr [rsp]
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "early_lunch/1"
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
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
                                                                                        je    proc_same_lunch$2F2_ω
                                                                                        jmp   proc_same_lunch$2F2_ω
n14_op11_β:
                                                                                        jmp   proc_same_lunch$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n17_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_proc_staged_α:
                        mov              qword ptr [rbp + 496], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx54_20
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx54_21
.Lx54_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx54_21:
                        mov              edi, 4
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx54_1
                        lea              rcx, [rip + .Lx54_3]
                        lea              rdx, [rip + .Lx54_4]
                                                                                        jmp   rax
.Lx54_3:
                        mov              qword ptr [rbp + 504], rsp
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx54_5
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx54_2
.Lx54_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx54_2
.Lx54_4:
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx54_6
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx54_2
.Lx54_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx54_2
.Lx54_1:
                        call             rt_faildescr@PLT
.Lx54_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n12_call_proc_staged_β
                                                                                        jmp   n19_suspend_α
n17_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 504]
                                                                                        jmp   qword ptr [rsp]
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "early_lunch/1"
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
.Lx55_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx55_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx55_41
                        cmp              esi, 1
                                                                                        jne   .Lx55_55
                        mov              r8, rax
                                                                                        jmp   .Lx55_40
.Lx55_55:
                        cmp              esi, 2
                                                                                        jne   .Lx55_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx55_41
                        mov              r8, rax
                                                                                        jmp   .Lx55_40
.Lx55_56:
                        cmp              eax, 13
                                                                                        jne   .Lx55_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx55_41
                        cmp              rax, r8
                                                                                        je    .Lx55_41
                        mov              r8, rax
                                                                                        jmp   .Lx55_40
.Lx55_41:
                        lea              r9, [rbp + 304]
.Lx55_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx55_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx55_43
                        cmp              esi, 1
                                                                                        jne   .Lx55_57
                        mov              r9, rax
                                                                                        jmp   .Lx55_42
.Lx55_57:
                        cmp              esi, 2
                                                                                        jne   .Lx55_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx55_43
                        mov              r9, rax
                                                                                        jmp   .Lx55_42
.Lx55_58:
                        cmp              eax, 13
                                                                                        jne   .Lx55_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx55_43
                        cmp              rax, r9
                                                                                        je    .Lx55_43
                        mov              r9, rax
                                                                                        jmp   .Lx55_42
.Lx55_43:
                        cmp              r8, r9
                                                                                        je    .Lx55_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx55_44
                        cmp              eax, 99
                                                                                        je    .Lx55_44
                        cmp              eax, 13
                                                                                        jne   .Lx55_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx55_44
                                                                                        jmp   .Lx55_45
.Lx55_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx55_53
                        cmp              eax, 99
                                                                                        je    .Lx55_53
                        cmp              eax, 13
                                                                                        jne   .Lx55_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx55_53
                                                                                        jmp   .Lx55_46
.Lx55_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx55_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx55_53
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
                                                                                        jmp   .Lx55_51
.Lx55_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx55_47
                        cmp              eax, 99
                                                                                        je    .Lx55_47
                        cmp              eax, 13
                                                                                        jne   .Lx55_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx55_47
                                                                                        jmp   .Lx55_48
.Lx55_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx55_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx55_53
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
                                                                                        jmp   .Lx55_51
.Lx55_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx55_49
                        cmp              edx, 14
                                                                                        je    .Lx55_53
                                                                                        jmp   .Lx55_52
.Lx55_49:
                        cmp              edx, 14
                                                                                        je    .Lx55_52
                        cmp              ecx, 7
                                                                                        je    .Lx55_53
                        cmp              edx, 7
                                                                                        je    .Lx55_53
                        cmp              ecx, 6
                                                                                        jne   .Lx55_50
                        cmp              edx, 6
                                                                                        jne   .Lx55_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx55_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx55_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx55_51
                                                                                        jmp   .Lx55_52
.Lx55_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx55_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx55_53
.Lx55_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx55_54
.Lx55_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx55_54
.Lx55_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx55_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n20_var_ref_α
n18_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_suspend_α:
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_same_lunch$2F2_γ
n19_suspend_β:
                                                                                        jmp   n17_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n21_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_proc_staged_α:
                        mov              qword ptr [rbp + 224], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx61_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx61_21
.Lx61_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx61_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx61_1
                        lea              rcx, [rip + .Lx61_3]
                        lea              rdx, [rip + .Lx61_4]
                                                                                        jmp   rax
.Lx61_3:
                        mov              qword ptr [rbp + 232], rsp
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax
                                                                                        jne   .Lx61_5
                        mov              qword ptr [rbp + 224], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx61_2
.Lx61_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx61_2
.Lx61_4:
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax
                                                                                        jne   .Lx61_6
                        mov              qword ptr [rbp + 224], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx61_2
.Lx61_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx61_2
.Lx61_1:
                        call             rt_faildescr@PLT
.Lx61_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n22_var_ref_α
n21_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 232]
                                                                                        jmp   qword ptr [rsp]
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "late_lunch/1"
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n23_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx65_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx65_21
.Lx65_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx65_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx65_1
                        lea              rcx, [rip + .Lx65_3]
                        lea              rdx, [rip + .Lx65_4]
                                                                                        jmp   rax
.Lx65_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx65_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx65_2
.Lx65_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx65_2
.Lx65_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx65_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx65_2
.Lx65_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx65_2
.Lx65_1:
                        call             rt_faildescr@PLT
.Lx65_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n21_call_proc_staged_β
                                                                                        jmp   n24_suspend_α
n23_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "late_lunch/1"
#-----------------------------------------------------------------------------------------------------------------------
n24_suspend_α:
                        lea              rax, [rip + n24_suspend_β]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_same_lunch$2F2_γ
n24_suspend_β:
                                                                                        jmp   n23_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_same_lunch$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_same_lunch$2F2_β:
                                                                                        jmp   qword ptr [rbp + 784]
#-----------------------------------------------------------------------------------------------------------------------
proc_same_lunch$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_same_lunch$2F2_res]
                        push             rax
                        mov              rax, [rbp + 840]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_same_lunch$2F2_ω:
                        mov              rax, [rbp + 848]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_position$2F1_α
proc_position$2F1_α:
                        .global          proc_position$2F1_α
                        .global          proc_position$2F1_β
                        .global          proc_position$2F1_γ
                        .global          proc_position$2F1_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_position$2F1_α_body:
                        lea              rax, [rip + n72_suspend_β]
                        mov              qword ptr [rbp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx94_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx94_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx94_101
.Lx94_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx94_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n69_var_ref_α
n68_op11_β:
                                                                                        jmp   proc_position$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n70_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n71_op11_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "buyer"
#-----------------------------------------------------------------------------------------------------------------------
n71_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              rsi, qword ptr [rip + .Lx98_2]
                                                                                        jmp   .Lx98_3
.Lx98_2:
                        .quad            .Lx98_2_s
.Lx98_2_s:
                        .string          "buyer"
.Lx98_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n73_op11_α
                                                                                        jmp   n72_suspend_α
n71_op11_β:
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_suspend_α:
                        lea              rax, [rip + n72_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_position$2F1_γ
n72_suspend_β:
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n74_var_ref_α
n73_op11_β:
                                                                                        jmp   proc_position$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n76_op11_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              rsi, qword ptr [rip + .Lx105_2]
                                                                                        jmp   .Lx105_3
.Lx105_2:
                        .quad            .Lx105_2_s
.Lx105_2_s:
                        .string          "cashier"
.Lx105_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n78_op11_α
                                                                                        jmp   n77_suspend_α
n76_op11_β:
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_suspend_α:
                        lea              rax, [rip + n77_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_position$2F1_γ
n77_suspend_β:
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n79_var_ref_α
n78_op11_β:
                                                                                        jmp   proc_position$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n81_op11_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              rsi, qword ptr [rip + .Lx112_2]
                                                                                        jmp   .Lx112_3
.Lx112_2:
                        .quad            .Lx112_2_s
.Lx112_2_s:
                        .string          "clerk"
.Lx112_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n83_op11_α
                                                                                        jmp   n82_suspend_α
n81_op11_β:
                                                                                        jmp   n83_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_suspend_α:
                        lea              rax, [rip + n82_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_position$2F1_γ
n82_suspend_β:
                                                                                        jmp   n83_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n84_var_ref_α
n83_op11_β:
                                                                                        jmp   proc_position$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n86_op11_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "floorwalker"
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              rsi, qword ptr [rip + .Lx119_2]
                                                                                        jmp   .Lx119_3
.Lx119_2:
                        .quad            .Lx119_2_s
.Lx119_2_s:
                        .string          "floorwalker"
.Lx119_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n88_op11_α
                                                                                        jmp   n87_suspend_α
n86_op11_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_suspend_α:
                        lea              rax, [rip + n87_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_position$2F1_γ
n87_suspend_β:
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n88_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   n89_var_ref_α
n88_op11_β:
                                                                                        jmp   proc_position$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n91_op11_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "manager"
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              rsi, qword ptr [rip + .Lx126_2]
                                                                                        jmp   .Lx126_3
.Lx126_2:
                        .quad            .Lx126_2_s
.Lx126_2_s:
                        .string          "manager"
.Lx126_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n93_op11_α
                                                                                        jmp   n92_suspend_α
n91_op11_β:
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_suspend_α:
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_position$2F1_γ
n92_suspend_β:
                                                                                        jmp   n93_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
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
                                                                                        je    proc_position$2F1_ω
                                                                                        jmp   proc_position$2F1_ω
n93_op11_β:
                                                                                        jmp   proc_position$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_position$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_position$2F1_β:
                                                                                        jmp   qword ptr [rbp + 704]
#-----------------------------------------------------------------------------------------------------------------------
proc_position$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_position$2F1_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_position$2F1_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_puzzle$2F0_α
proc_puzzle$2F0_α:
                        .global          proc_puzzle$2F0_α
                        .global          proc_puzzle$2F0_β
                        .global          proc_puzzle$2F0_γ
                        .global          proc_puzzle$2F0_ω
                        sub              rsp, 2480
                        mov              [rsp + 2456], rcx
                        mov              [rsp + 2464], rdx
                        mov              [rsp + 2472], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2352
                        mov              edx, 2448
                        call             rt_jmp_frame_lexprep2@PLT
proc_puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n130_op11_α:
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
                                                                                        je    proc_puzzle$2F0_ω
                                                                                        jmp   n131_var_ref_α
n130_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n132_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_proc_staged_α:
                        mov              qword ptr [rbp + 2304], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx214_20
                        mov              rax, qword ptr [rbp + 2336]
                        mov              rdx, qword ptr [rbp + 2344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx214_21
.Lx214_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2336]
                        mov              rdx, qword ptr [rbp + 2344]
                        call             rt_arg_stage@PLT
.Lx214_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx214_1
                        lea              rcx, [rip + .Lx214_3]
                        lea              rdx, [rip + .Lx214_4]
                                                                                        jmp   rax
.Lx214_3:
                        mov              qword ptr [rbp + 2312], rsp
                        mov              rax, qword ptr [rbp + 2304]
                        test             rax, rax
                                                                                        jne   .Lx214_5
                        mov              qword ptr [rbp + 2304], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx214_2
.Lx214_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx214_2
.Lx214_4:
                        mov              rax, qword ptr [rbp + 2304]
                        test             rax, rax
                                                                                        jne   .Lx214_6
                        mov              qword ptr [rbp + 2304], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx214_2
.Lx214_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx214_2
.Lx214_1:
                        call             rt_faildescr@PLT
.Lx214_2:
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n134_op11_α
                                                                                        jmp   n133_var_ref_α
n132_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2312]
                                                                                        jmp   qword ptr [rsp]
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n135_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
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
n134_op11_β:
                                                                                        jmp   proc_puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n135_call_proc_staged_α:
                        mov              qword ptr [rbp + 2224], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx219_20
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx219_21
.Lx219_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        call             rt_arg_stage@PLT
.Lx219_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx219_1
                        lea              rcx, [rip + .Lx219_3]
                        lea              rdx, [rip + .Lx219_4]
                                                                                        jmp   rax
.Lx219_3:
                        mov              qword ptr [rbp + 2232], rsp
                        mov              rax, qword ptr [rbp + 2224]
                        test             rax, rax
                                                                                        jne   .Lx219_5
                        mov              qword ptr [rbp + 2224], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx219_2
.Lx219_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx219_2
.Lx219_4:
                        mov              rax, qword ptr [rbp + 2224]
                        test             rax, rax
                                                                                        jne   .Lx219_6
                        mov              qword ptr [rbp + 2224], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx219_2
.Lx219_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx219_2
.Lx219_1:
                        call             rt_faildescr@PLT
.Lx219_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n132_call_proc_staged_β
                                                                                        jmp   n136_var_ref_α
n135_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2232]
                                                                                        jmp   qword ptr [rsp]
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n137_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        mov              qword ptr [rbp + 2144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx223_20
                        mov              rax, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx223_21
.Lx223_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        call             rt_arg_stage@PLT
.Lx223_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx223_1
                        lea              rcx, [rip + .Lx223_3]
                        lea              rdx, [rip + .Lx223_4]
                                                                                        jmp   rax
.Lx223_3:
                        mov              qword ptr [rbp + 2152], rsp
                        mov              rax, qword ptr [rbp + 2144]
                        test             rax, rax
                                                                                        jne   .Lx223_5
                        mov              qword ptr [rbp + 2144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx223_2
.Lx223_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx223_2
.Lx223_4:
                        mov              rax, qword ptr [rbp + 2144]
                        test             rax, rax
                                                                                        jne   .Lx223_6
                        mov              qword ptr [rbp + 2144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx223_2
.Lx223_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx223_2
.Lx223_1:
                        call             rt_faildescr@PLT
.Lx223_2:
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n135_call_proc_staged_β
                                                                                        jmp   n138_var_ref_α
n137_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2152]
                                                                                        jmp   qword ptr [rsp]
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n139_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        mov              qword ptr [rbp + 2064], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx227_20
                        mov              rax, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx227_21
.Lx227_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2096]
                        mov              rdx, qword ptr [rbp + 2104]
                        call             rt_arg_stage@PLT
.Lx227_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx227_1
                        lea              rcx, [rip + .Lx227_3]
                        lea              rdx, [rip + .Lx227_4]
                                                                                        jmp   rax
.Lx227_3:
                        mov              qword ptr [rbp + 2072], rsp
                        mov              rax, qword ptr [rbp + 2064]
                        test             rax, rax
                                                                                        jne   .Lx227_5
                        mov              qword ptr [rbp + 2064], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx227_2
.Lx227_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx227_2
.Lx227_4:
                        mov              rax, qword ptr [rbp + 2064]
                        test             rax, rax
                                                                                        jne   .Lx227_6
                        mov              qword ptr [rbp + 2064], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx227_2
.Lx227_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx227_2
.Lx227_1:
                        call             rt_faildescr@PLT
.Lx227_2:
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n137_call_proc_staged_β
                                                                                        jmp   n140_var_ref_α
n139_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2072]
                                                                                        jmp   qword ptr [rsp]
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n141_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_proc_staged_α:
                        mov              qword ptr [rbp + 1984], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx231_20
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx231_21
.Lx231_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        call             rt_arg_stage@PLT
.Lx231_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx231_1
                        lea              rcx, [rip + .Lx231_3]
                        lea              rdx, [rip + .Lx231_4]
                                                                                        jmp   rax
.Lx231_3:
                        mov              qword ptr [rbp + 1992], rsp
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx231_5
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx231_2
.Lx231_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx231_2
.Lx231_4:
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx231_6
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx231_2
.Lx231_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx231_2
.Lx231_1:
                        call             rt_faildescr@PLT
.Lx231_2:
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n139_call_proc_staged_β
                                                                                        jmp   n142_var_ref_α
n141_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1992]
                                                                                        jmp   qword ptr [rsp]
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          "position/1"
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n143_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n144_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n147_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx243_20
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx243_21
.Lx243_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        call             rt_arg_stage@PLT
.Lx243_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx243_22
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx243_23
.Lx243_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        call             rt_arg_stage@PLT
.Lx243_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx243_24
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx243_25
.Lx243_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        call             rt_arg_stage@PLT
.Lx243_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx243_26
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx243_27
.Lx243_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        call             rt_arg_stage@PLT
.Lx243_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx243_28
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx243_29
.Lx243_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        call             rt_arg_stage@PLT
.Lx243_29:
                        mov              edi, 5
                        mov              esi, 5
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx243_1
                        lea              rcx, [rip + .Lx243_3]
                        lea              rdx, [rip + .Lx243_4]
                                                                                        jmp   rax
.Lx243_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx243_2
.Lx243_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx243_2
.Lx243_1:
                        call             rt_faildescr@PLT
.Lx243_2:
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n141_call_proc_staged_β
                                                                                        jmp   n148_var_ref_α
n147_call_proc_staged_β:
                                                                                        jmp   n141_call_proc_staged_β
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "all_diff5/5"
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n149_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n150_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_proc_staged_α:
                        mov              qword ptr [rbp + 1696], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx249_20
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx249_21
.Lx249_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        call             rt_arg_stage@PLT
.Lx249_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx249_22
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx249_23
.Lx249_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        call             rt_arg_stage@PLT
.Lx249_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx249_1
                        lea              rcx, [rip + .Lx249_3]
                        lea              rdx, [rip + .Lx249_4]
                                                                                        jmp   rax
.Lx249_3:
                        mov              qword ptr [rbp + 1704], rsp
                        mov              rax, qword ptr [rbp + 1696]
                        test             rax, rax
                                                                                        jne   .Lx249_5
                        mov              qword ptr [rbp + 1696], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx249_2
.Lx249_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx249_2
.Lx249_4:
                        mov              rax, qword ptr [rbp + 1696]
                        test             rax, rax
                                                                                        jne   .Lx249_6
                        mov              qword ptr [rbp + 1696], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx249_2
.Lx249_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx249_2
.Lx249_1:
                        call             rt_faildescr@PLT
.Lx249_2:
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n147_call_proc_staged_β
                                                                                        jmp   n151_var_ref_α
n150_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1704]
                                                                                        jmp   qword ptr [rsp]
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "same_lunch/2"
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n152_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_proc_staged_α:
                        mov              qword ptr [rbp + 1600], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx253_20
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx253_21
.Lx253_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        call             rt_arg_stage@PLT
.Lx253_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx253_1
                        lea              rcx, [rip + .Lx253_3]
                        lea              rdx, [rip + .Lx253_4]
                                                                                        jmp   rax
.Lx253_3:
                        mov              qword ptr [rbp + 1608], rsp
                        mov              rax, qword ptr [rbp + 1600]
                        test             rax, rax
                                                                                        jne   .Lx253_5
                        mov              qword ptr [rbp + 1600], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx253_2
.Lx253_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx253_2
.Lx253_4:
                        mov              rax, qword ptr [rbp + 1600]
                        test             rax, rax
                                                                                        jne   .Lx253_6
                        mov              qword ptr [rbp + 1600], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx253_2
.Lx253_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx253_2
.Lx253_1:
                        call             rt_faildescr@PLT
.Lx253_2:
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n150_call_proc_staged_β
                                                                                        jmp   n153_var_ref_α
n152_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1608]
                                                                                        jmp   qword ptr [rsp]
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "late_lunch/1"
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n154_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_proc_staged_α:
                        mov              qword ptr [rbp + 1520], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx257_20
                        mov              rax, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx257_21
.Lx257_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1552]
                        mov              rdx, qword ptr [rbp + 1560]
                        call             rt_arg_stage@PLT
.Lx257_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx257_1
                        lea              rcx, [rip + .Lx257_3]
                        lea              rdx, [rip + .Lx257_4]
                                                                                        jmp   rax
.Lx257_3:
                        mov              qword ptr [rbp + 1528], rsp
                        mov              rax, qword ptr [rbp + 1520]
                        test             rax, rax
                                                                                        jne   .Lx257_5
                        mov              qword ptr [rbp + 1520], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx257_2
.Lx257_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx257_2
.Lx257_4:
                        mov              rax, qword ptr [rbp + 1520]
                        test             rax, rax
                                                                                        jne   .Lx257_6
                        mov              qword ptr [rbp + 1520], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx257_2
.Lx257_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx257_2
.Lx257_1:
                        call             rt_faildescr@PLT
.Lx257_2:
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n152_call_proc_staged_β
                                                                                        jmp   n155_var_ref_α
n154_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1528]
                                                                                        jmp   qword ptr [rsp]
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "late_lunch/1"
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n157_op11_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "manager"
#-----------------------------------------------------------------------------------------------------------------------
n157_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1424]
                        mov              rsi, qword ptr [rip + .Lx261_2]
                                                                                        jmp   .Lx261_3
.Lx261_2:
                        .quad            .Lx261_2_s
.Lx261_2_s:
                        .string          "manager"
.Lx261_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n158_var_ref_α
                                                                                        jmp   n154_call_proc_staged_β
n157_op11_β:
                                                                                        jmp   n158_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n160_op11_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "manager"
#-----------------------------------------------------------------------------------------------------------------------
n160_op11_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              rsi, qword ptr [rip + .Lx265_2]
                                                                                        jmp   .Lx265_3
.Lx265_2:
                        .quad            .Lx265_2_s
.Lx265_2_s:
                        .string          "manager"
.Lx265_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n161_var_ref_α
                                                                                        jmp   n154_call_proc_staged_β
n160_op11_β:
                                                                                        jmp   n161_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n163_op11_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n163_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        mov              rsi, qword ptr [rip + .Lx269_2]
                                                                                        jmp   .Lx269_3
.Lx269_2:
                        .quad            .Lx269_2_s
.Lx269_2_s:
                        .string          "cashier"
.Lx269_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n164_var_ref_α
                                                                                        jmp   n154_call_proc_staged_β
n163_op11_β:
                                                                                        jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n166_op11_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n166_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        mov              rsi, qword ptr [rip + .Lx273_2]
                                                                                        jmp   .Lx273_3
.Lx273_2:
                        .quad            .Lx273_2_s
.Lx273_2_s:
                        .string          "clerk"
.Lx273_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n167_var_ref_α
                                                                                        jmp   n154_call_proc_staged_β
n166_op11_β:
                                                                                        jmp   n167_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n169_op11_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n169_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1104]
                        mov              rsi, qword ptr [rip + .Lx277_2]
                                                                                        jmp   .Lx277_3
.Lx277_2:
                        .quad            .Lx277_2_s
.Lx277_2_s:
                        .string          "cashier"
.Lx277_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n170_var_ref_α
                                                                                        jmp   n154_call_proc_staged_β
n169_op11_β:
                                                                                        jmp   n170_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n171_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n172_op11_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n172_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              rsi, qword ptr [rip + .Lx281_2]
                                                                                        jmp   .Lx281_3
.Lx281_2:
                        .quad            .Lx281_2_s
.Lx281_2_s:
                        .string          "clerk"
.Lx281_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n173_var_ref_α
                                                                                        jmp   n154_call_proc_staged_β
n172_op11_β:
                                                                                        jmp   n173_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n174_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n175_op11_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n175_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              rsi, qword ptr [rip + .Lx285_2]
                                                                                        jmp   .Lx285_3
.Lx285_2:
                        .quad            .Lx285_2_s
.Lx285_2_s:
                        .string          "cashier"
.Lx285_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n177_var_ref_α
                                                                                        jmp   n176_var_ref_α
n175_op11_β:
                                                                                        jmp   n177_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n180_op11_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n181_op11_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n180_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              rsi, qword ptr [rip + .Lx292_2]
                                                                                        jmp   .Lx292_3
.Lx292_2:
                        .quad            .Lx292_2_s
.Lx292_2_s:
                        .string          "clerk"
.Lx292_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n177_var_ref_α
                                                                                        jmp   n154_call_proc_staged_β
n180_op11_β:
                                                                                        jmp   n177_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n181_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              rsi, qword ptr [rip + .Lx293_2]
                                                                                        jmp   .Lx293_3
.Lx293_2:
                        .quad            .Lx293_2_s
.Lx293_2_s:
                        .string          "clerk"
.Lx293_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n183_var_ref_α
                                                                                        jmp   n182_var_ref_α
n181_op11_β:
                                                                                        jmp   n183_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2368]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n185_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n186_op11_α
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n187_op11_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n186_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lx300_2]
                                                                                        jmp   .Lx300_3
.Lx300_2:
                        .quad            .Lx300_2_s
.Lx300_2_s:
                        .string          "cashier"
.Lx300_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n183_var_ref_α
                                                                                        jmp   n154_call_proc_staged_β
n186_op11_β:
                                                                                        jmp   n183_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n187_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              rsi, qword ptr [rip + .Lx301_2]
                                                                                        jmp   .Lx301_3
.Lx301_2:
                        .quad            .Lx301_2_s
.Lx301_2_s:
                        .string          "clerk"
.Lx301_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n188_lit_string_α
                                                                                        jmp   n154_call_proc_staged_β
n187_op11_β:
                                                                                        jmp   n188_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n189_op11_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "Allen="
#-----------------------------------------------------------------------------------------------------------------------
n189_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn304:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn304]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n190_var_α
n189_op11_β:
                                                                                        jmp   n154_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n191_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n191_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn308:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn308]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n192_lit_string_α
n191_op11_β:
                                                                                        jmp   n154_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n193_op11_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          " Bennett="
#-----------------------------------------------------------------------------------------------------------------------
n193_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn311:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn311]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n194_var_α
n193_op11_β:
                                                                                        jmp   n154_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n195_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n195_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn315:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn315]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n196_lit_string_α
n195_op11_β:
                                                                                        jmp   n154_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n197_op11_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          " Clark="
#-----------------------------------------------------------------------------------------------------------------------
n197_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn318:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn318]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n198_var_α
n197_op11_β:
                                                                                        jmp   n154_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n199_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn322:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn322]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n200_lit_string_α
n199_op11_β:
                                                                                        jmp   n154_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n201_op11_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          " Davis="
#-----------------------------------------------------------------------------------------------------------------------
n201_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn325:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n202_var_α
n201_op11_β:
                                                                                        jmp   n154_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n203_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n203_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn329:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn329]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n204_lit_string_α
n203_op11_β:
                                                                                        jmp   n154_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n205_op11_α
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          " Ewing="
#-----------------------------------------------------------------------------------------------------------------------
n205_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn332:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn332]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n206_var_α
n205_op11_β:
                                                                                        jmp   n154_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n207_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n207_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn336:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn336]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n208_lit_string_α
n207_op11_β:
                                                                                        jmp   n154_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n209_op11_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n209_op11_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn339:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn339]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n154_call_proc_staged_β
                                                                                        jmp   n154_call_proc_staged_β
n209_op11_β:
                                                                                        jmp   n154_call_proc_staged_β
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
                        mov              rax, [rbp + 2456]
                        mov              rbp, [rbp + 2472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_puzzle$2F0_ω:
                        mov              rax, [rbp + 2464]
                        lea              rsp, [rbp + 2480]
                        mov              rbp, [rbp + 2472]
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
                        lea              rax, [rip + n342_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n340_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx346_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx346_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx346_101
.Lx346_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx346_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n341_call_proc_staged_α
n340_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n341_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 2
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx348_1
                        lea              rcx, [rip + .Lx348_3]
                        lea              rdx, [rip + .Lx348_4]
                                                                                        jmp   rax
.Lx348_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx348_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx348_2
.Lx348_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx348_2
.Lx348_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx348_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx348_2
.Lx348_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx348_2
.Lx348_1:
                        call             rt_faildescr@PLT
.Lx348_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n343_op11_α
                                                                                        jmp   n342_suspend_α
n341_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n342_suspend_α:
                        lea              rax, [rip + n342_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n342_suspend_β:
                                                                                        jmp   n341_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n343_op11_α:
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
                                                                                        jmp   n344_suspend_α
n343_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n344_suspend_α:
                        lea              rax, [rip + n344_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n344_suspend_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n345_op11_α:
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
n345_op11_β:
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
                        .globl           proc_early_lunch$2F1_α
proc_early_lunch$2F1_α:
                        .global          proc_early_lunch$2F1_α
                        .global          proc_early_lunch$2F1_β
                        .global          proc_early_lunch$2F1_γ
                        .global          proc_early_lunch$2F1_ω
                        sub              rsp, 544
                        mov              [rsp + 520], rcx
                        mov              [rsp + 528], rdx
                        mov              [rsp + 536], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 512
                        call             rt_jmp_frame_lexprep2@PLT
proc_early_lunch$2F1_α_body:
                        lea              rax, [rip + n365_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n355_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx372_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx372_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx372_101
.Lx372_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx372_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_early_lunch$2F1_ω
                                                                                        jmp   n356_var_ref_α
n355_op11_β:
                                                                                        jmp   proc_early_lunch$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n357_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n357_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n358_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n358_op11_α:
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
                        lea              r9, [rbp + 432]
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
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n360_op11_α
                                                                                        jmp   n359_var_ref_α
n358_op11_β:
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n361_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n360_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_early_lunch$2F1_ω
                                                                                        jmp   n362_var_ref_α
n360_op11_β:
                                                                                        jmp   proc_early_lunch$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n363_op11_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "cashier"
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n364_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n363_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx384_2]
                                                                                        jmp   .Lx384_3
.Lx384_2:
                        .quad            .Lx384_2_s
.Lx384_2_s:
                        .string          "cashier"
.Lx384_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n360_op11_α
                                                                                        jmp   n365_suspend_α
n363_op11_β:
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n366_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n365_suspend_α:
                        lea              rax, [rip + n365_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_early_lunch$2F1_γ
n365_suspend_β:
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n366_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx389_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx389_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx389_41
                        cmp              esi, 1
                                                                                        jne   .Lx389_55
                        mov              r8, rax
                                                                                        jmp   .Lx389_40
.Lx389_55:
                        cmp              esi, 2
                                                                                        jne   .Lx389_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx389_41
                        mov              r8, rax
                                                                                        jmp   .Lx389_40
.Lx389_56:
                        cmp              eax, 13
                                                                                        jne   .Lx389_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx389_41
                        cmp              rax, r8
                                                                                        je    .Lx389_41
                        mov              r8, rax
                                                                                        jmp   .Lx389_40
.Lx389_41:
                        lea              r9, [rbp + 224]
.Lx389_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx389_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx389_43
                        cmp              esi, 1
                                                                                        jne   .Lx389_57
                        mov              r9, rax
                                                                                        jmp   .Lx389_42
.Lx389_57:
                        cmp              esi, 2
                                                                                        jne   .Lx389_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx389_43
                        mov              r9, rax
                                                                                        jmp   .Lx389_42
.Lx389_58:
                        cmp              eax, 13
                                                                                        jne   .Lx389_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx389_43
                        cmp              rax, r9
                                                                                        je    .Lx389_43
                        mov              r9, rax
                                                                                        jmp   .Lx389_42
.Lx389_43:
                        cmp              r8, r9
                                                                                        je    .Lx389_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx389_44
                        cmp              eax, 99
                                                                                        je    .Lx389_44
                        cmp              eax, 13
                                                                                        jne   .Lx389_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx389_44
                                                                                        jmp   .Lx389_45
.Lx389_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx389_53
                        cmp              eax, 99
                                                                                        je    .Lx389_53
                        cmp              eax, 13
                                                                                        jne   .Lx389_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx389_53
                                                                                        jmp   .Lx389_46
.Lx389_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx389_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx389_53
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
                                                                                        jmp   .Lx389_51
.Lx389_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx389_47
                        cmp              eax, 99
                                                                                        je    .Lx389_47
                        cmp              eax, 13
                                                                                        jne   .Lx389_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx389_47
                                                                                        jmp   .Lx389_48
.Lx389_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx389_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx389_53
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
                                                                                        jmp   .Lx389_51
.Lx389_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx389_49
                        cmp              edx, 14
                                                                                        je    .Lx389_53
                                                                                        jmp   .Lx389_52
.Lx389_49:
                        cmp              edx, 14
                                                                                        je    .Lx389_52
                        cmp              ecx, 7
                                                                                        je    .Lx389_53
                        cmp              edx, 7
                                                                                        je    .Lx389_53
                        cmp              ecx, 6
                                                                                        jne   .Lx389_50
                        cmp              edx, 6
                                                                                        jne   .Lx389_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx389_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx389_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx389_51
                                                                                        jmp   .Lx389_52
.Lx389_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx389_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx389_53
.Lx389_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx389_54
.Lx389_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx389_54
.Lx389_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx389_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n368_op11_α
                                                                                        jmp   n367_var_ref_α
n366_op11_β:
                                                                                        jmp   n368_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n369_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n368_op11_α:
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
                                                                                        je    proc_early_lunch$2F1_ω
                                                                                        jmp   proc_early_lunch$2F1_ω
n368_op11_β:
                                                                                        jmp   proc_early_lunch$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n370_op11_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "floorwalker"
#-----------------------------------------------------------------------------------------------------------------------
n370_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              rsi, qword ptr [rip + .Lx394_2]
                                                                                        jmp   .Lx394_3
.Lx394_2:
                        .quad            .Lx394_2_s
.Lx394_2_s:
                        .string          "floorwalker"
.Lx394_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n368_op11_α
                                                                                        jmp   n371_suspend_α
n370_op11_β:
                                                                                        jmp   n368_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n371_suspend_α:
                        lea              rax, [rip + n371_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_early_lunch$2F1_γ
n371_suspend_β:
                                                                                        jmp   n368_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_early_lunch$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_early_lunch$2F1_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_early_lunch$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_early_lunch$2F1_res]
                        push             rax
                        mov              rax, [rbp + 520]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_early_lunch$2F1_ω:
                        mov              rax, [rbp + 528]
                        lea              rsp, [rbp + 544]
                        mov              rbp, [rbp + 536]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_all_diff5$2F5_α
proc_all_diff5$2F5_α:
                        .global          proc_all_diff5$2F5_α
                        .global          proc_all_diff5$2F5_β
                        .global          proc_all_diff5$2F5_γ
                        .global          proc_all_diff5$2F5_ω
                        sub              rsp, 1504
                        mov              [rsp + 1480], rcx
                        mov              [rsp + 1488], rdx
                        mov              [rsp + 1496], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1392
                        mov              edx, 1472
                        call             rt_jmp_frame_lexprep2@PLT
proc_all_diff5$2F5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n397_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx446_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx446_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx446_101
.Lx446_100:
                        lea              rdi, [rbp + 144]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx446_101:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_all_diff5$2F5_ω
                                                                                        jmp   n398_var_ref_α
n397_op11_β:
                                                                                        jmp   proc_all_diff5$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n398_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n399_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n399_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n400_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n400_op11_α:
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
.Lx451_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx451_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx451_41
                        cmp              esi, 1
                                                                                        jne   .Lx451_55
                        mov              r8, rax
                                                                                        jmp   .Lx451_40
.Lx451_55:
                        cmp              esi, 2
                                                                                        jne   .Lx451_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx451_41
                        mov              r8, rax
                                                                                        jmp   .Lx451_40
.Lx451_56:
                        cmp              eax, 13
                                                                                        jne   .Lx451_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx451_41
                        cmp              rax, r8
                                                                                        je    .Lx451_41
                        mov              r8, rax
                                                                                        jmp   .Lx451_40
.Lx451_41:
                        lea              r9, [rbp + 1344]
.Lx451_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx451_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx451_43
                        cmp              esi, 1
                                                                                        jne   .Lx451_57
                        mov              r9, rax
                                                                                        jmp   .Lx451_42
.Lx451_57:
                        cmp              esi, 2
                                                                                        jne   .Lx451_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx451_43
                        mov              r9, rax
                                                                                        jmp   .Lx451_42
.Lx451_58:
                        cmp              eax, 13
                                                                                        jne   .Lx451_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx451_43
                        cmp              rax, r9
                                                                                        je    .Lx451_43
                        mov              r9, rax
                                                                                        jmp   .Lx451_42
.Lx451_43:
                        cmp              r8, r9
                                                                                        je    .Lx451_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx451_44
                        cmp              eax, 99
                                                                                        je    .Lx451_44
                        cmp              eax, 13
                                                                                        jne   .Lx451_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx451_44
                                                                                        jmp   .Lx451_45
.Lx451_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx451_53
                        cmp              eax, 99
                                                                                        je    .Lx451_53
                        cmp              eax, 13
                                                                                        jne   .Lx451_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx451_53
                                                                                        jmp   .Lx451_46
.Lx451_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx451_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx451_53
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
                                                                                        jmp   .Lx451_51
.Lx451_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx451_47
                        cmp              eax, 99
                                                                                        je    .Lx451_47
                        cmp              eax, 13
                                                                                        jne   .Lx451_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx451_47
                                                                                        jmp   .Lx451_48
.Lx451_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx451_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx451_53
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
                                                                                        jmp   .Lx451_51
.Lx451_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx451_49
                        cmp              edx, 14
                                                                                        je    .Lx451_53
                                                                                        jmp   .Lx451_52
.Lx451_49:
                        cmp              edx, 14
                                                                                        je    .Lx451_52
                        cmp              ecx, 7
                                                                                        je    .Lx451_53
                        cmp              edx, 7
                                                                                        je    .Lx451_53
                        cmp              ecx, 6
                                                                                        jne   .Lx451_50
                        cmp              edx, 6
                                                                                        jne   .Lx451_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx451_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx451_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx451_51
                                                                                        jmp   .Lx451_52
.Lx451_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx451_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx451_53
.Lx451_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx451_54
.Lx451_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx451_54
.Lx451_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx451_54:
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n402_op11_α
                                                                                        jmp   n401_var_ref_α
n400_op11_β:
                                                                                        jmp   n402_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n403_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n402_op11_α:
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
                                                                                        je    proc_all_diff5$2F5_ω
                                                                                        jmp   proc_all_diff5$2F5_ω
n402_op11_β:
                                                                                        jmp   proc_all_diff5$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
n403_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n404_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n404_op11_α:
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
.Lx457_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx457_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx457_41
                        cmp              esi, 1
                                                                                        jne   .Lx457_55
                        mov              r8, rax
                                                                                        jmp   .Lx457_40
.Lx457_55:
                        cmp              esi, 2
                                                                                        jne   .Lx457_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx457_41
                        mov              r8, rax
                                                                                        jmp   .Lx457_40
.Lx457_56:
                        cmp              eax, 13
                                                                                        jne   .Lx457_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx457_41
                        cmp              rax, r8
                                                                                        je    .Lx457_41
                        mov              r8, rax
                                                                                        jmp   .Lx457_40
.Lx457_41:
                        lea              r9, [rbp + 1264]
.Lx457_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx457_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx457_43
                        cmp              esi, 1
                                                                                        jne   .Lx457_57
                        mov              r9, rax
                                                                                        jmp   .Lx457_42
.Lx457_57:
                        cmp              esi, 2
                                                                                        jne   .Lx457_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx457_43
                        mov              r9, rax
                                                                                        jmp   .Lx457_42
.Lx457_58:
                        cmp              eax, 13
                                                                                        jne   .Lx457_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx457_43
                        cmp              rax, r9
                                                                                        je    .Lx457_43
                        mov              r9, rax
                                                                                        jmp   .Lx457_42
.Lx457_43:
                        cmp              r8, r9
                                                                                        je    .Lx457_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx457_44
                        cmp              eax, 99
                                                                                        je    .Lx457_44
                        cmp              eax, 13
                                                                                        jne   .Lx457_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx457_44
                                                                                        jmp   .Lx457_45
.Lx457_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx457_53
                        cmp              eax, 99
                                                                                        je    .Lx457_53
                        cmp              eax, 13
                                                                                        jne   .Lx457_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx457_53
                                                                                        jmp   .Lx457_46
.Lx457_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx457_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx457_53
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
                                                                                        jmp   .Lx457_51
.Lx457_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx457_47
                        cmp              eax, 99
                                                                                        je    .Lx457_47
                        cmp              eax, 13
                                                                                        jne   .Lx457_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx457_47
                                                                                        jmp   .Lx457_48
.Lx457_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx457_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx457_53
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
                                                                                        jmp   .Lx457_51
.Lx457_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx457_49
                        cmp              edx, 14
                                                                                        je    .Lx457_53
                                                                                        jmp   .Lx457_52
.Lx457_49:
                        cmp              edx, 14
                                                                                        je    .Lx457_52
                        cmp              ecx, 7
                                                                                        je    .Lx457_53
                        cmp              edx, 7
                                                                                        je    .Lx457_53
                        cmp              ecx, 6
                                                                                        jne   .Lx457_50
                        cmp              edx, 6
                                                                                        jne   .Lx457_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx457_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx457_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx457_51
                                                                                        jmp   .Lx457_52
.Lx457_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx457_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx457_53
.Lx457_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx457_54
.Lx457_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx457_54
.Lx457_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx457_54:
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n402_op11_α
                                                                                        jmp   n405_var_ref_α
n404_op11_β:
                                                                                        jmp   n402_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n406_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n406_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n407_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n407_op11_α:
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
.Lx462_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx462_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx462_41
                        cmp              esi, 1
                                                                                        jne   .Lx462_55
                        mov              r8, rax
                                                                                        jmp   .Lx462_40
.Lx462_55:
                        cmp              esi, 2
                                                                                        jne   .Lx462_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx462_41
                        mov              r8, rax
                                                                                        jmp   .Lx462_40
.Lx462_56:
                        cmp              eax, 13
                                                                                        jne   .Lx462_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx462_41
                        cmp              rax, r8
                                                                                        je    .Lx462_41
                        mov              r8, rax
                                                                                        jmp   .Lx462_40
.Lx462_41:
                        lea              r9, [rbp + 1184]
.Lx462_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx462_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx462_43
                        cmp              esi, 1
                                                                                        jne   .Lx462_57
                        mov              r9, rax
                                                                                        jmp   .Lx462_42
.Lx462_57:
                        cmp              esi, 2
                                                                                        jne   .Lx462_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx462_43
                        mov              r9, rax
                                                                                        jmp   .Lx462_42
.Lx462_58:
                        cmp              eax, 13
                                                                                        jne   .Lx462_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx462_43
                        cmp              rax, r9
                                                                                        je    .Lx462_43
                        mov              r9, rax
                                                                                        jmp   .Lx462_42
.Lx462_43:
                        cmp              r8, r9
                                                                                        je    .Lx462_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx462_44
                        cmp              eax, 99
                                                                                        je    .Lx462_44
                        cmp              eax, 13
                                                                                        jne   .Lx462_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx462_44
                                                                                        jmp   .Lx462_45
.Lx462_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx462_53
                        cmp              eax, 99
                                                                                        je    .Lx462_53
                        cmp              eax, 13
                                                                                        jne   .Lx462_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx462_53
                                                                                        jmp   .Lx462_46
.Lx462_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx462_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx462_53
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
                                                                                        jmp   .Lx462_51
.Lx462_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx462_47
                        cmp              eax, 99
                                                                                        je    .Lx462_47
                        cmp              eax, 13
                                                                                        jne   .Lx462_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx462_47
                                                                                        jmp   .Lx462_48
.Lx462_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx462_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx462_53
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
                                                                                        jmp   .Lx462_51
.Lx462_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx462_49
                        cmp              edx, 14
                                                                                        je    .Lx462_53
                                                                                        jmp   .Lx462_52
.Lx462_49:
                        cmp              edx, 14
                                                                                        je    .Lx462_52
                        cmp              ecx, 7
                                                                                        je    .Lx462_53
                        cmp              edx, 7
                                                                                        je    .Lx462_53
                        cmp              ecx, 6
                                                                                        jne   .Lx462_50
                        cmp              edx, 6
                                                                                        jne   .Lx462_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx462_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx462_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx462_51
                                                                                        jmp   .Lx462_52
.Lx462_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx462_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx462_53
.Lx462_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx462_54
.Lx462_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx462_54
.Lx462_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx462_54:
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n402_op11_α
                                                                                        jmp   n408_var_ref_α
n407_op11_β:
                                                                                        jmp   n402_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n409_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n410_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n410_op11_α:
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
.Lx467_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_41
                        cmp              esi, 1
                                                                                        jne   .Lx467_55
                        mov              r8, rax
                                                                                        jmp   .Lx467_40
.Lx467_55:
                        cmp              esi, 2
                                                                                        jne   .Lx467_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_41
                        mov              r8, rax
                                                                                        jmp   .Lx467_40
.Lx467_56:
                        cmp              eax, 13
                                                                                        jne   .Lx467_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_41
                        cmp              rax, r8
                                                                                        je    .Lx467_41
                        mov              r8, rax
                                                                                        jmp   .Lx467_40
.Lx467_41:
                        lea              r9, [rbp + 1104]
.Lx467_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx467_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_43
                        cmp              esi, 1
                                                                                        jne   .Lx467_57
                        mov              r9, rax
                                                                                        jmp   .Lx467_42
.Lx467_57:
                        cmp              esi, 2
                                                                                        jne   .Lx467_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx467_43
                        mov              r9, rax
                                                                                        jmp   .Lx467_42
.Lx467_58:
                        cmp              eax, 13
                                                                                        jne   .Lx467_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx467_43
                        cmp              rax, r9
                                                                                        je    .Lx467_43
                        mov              r9, rax
                                                                                        jmp   .Lx467_42
.Lx467_43:
                        cmp              r8, r9
                                                                                        je    .Lx467_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_44
                        cmp              eax, 99
                                                                                        je    .Lx467_44
                        cmp              eax, 13
                                                                                        jne   .Lx467_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx467_44
                                                                                        jmp   .Lx467_45
.Lx467_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_53
                        cmp              eax, 99
                                                                                        je    .Lx467_53
                        cmp              eax, 13
                                                                                        jne   .Lx467_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx467_53
                                                                                        jmp   .Lx467_46
.Lx467_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx467_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx467_53
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
                                                                                        jmp   .Lx467_51
.Lx467_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx467_47
                        cmp              eax, 99
                                                                                        je    .Lx467_47
                        cmp              eax, 13
                                                                                        jne   .Lx467_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx467_47
                                                                                        jmp   .Lx467_48
.Lx467_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx467_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx467_53
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
                                                                                        jmp   .Lx467_51
.Lx467_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx467_49
                        cmp              edx, 14
                                                                                        je    .Lx467_53
                                                                                        jmp   .Lx467_52
.Lx467_49:
                        cmp              edx, 14
                                                                                        je    .Lx467_52
                        cmp              ecx, 7
                                                                                        je    .Lx467_53
                        cmp              edx, 7
                                                                                        je    .Lx467_53
                        cmp              ecx, 6
                                                                                        jne   .Lx467_50
                        cmp              edx, 6
                                                                                        jne   .Lx467_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx467_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx467_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx467_51
                                                                                        jmp   .Lx467_52
.Lx467_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx467_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx467_53
.Lx467_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx467_54
.Lx467_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx467_54
.Lx467_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx467_54:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n402_op11_α
                                                                                        jmp   n411_var_ref_α
n410_op11_β:
                                                                                        jmp   n402_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n411_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n412_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n412_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n413_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n413_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1008]
                        lea              r8, [rbp + 1008]
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
                        lea              r9, [rbp + 1024]
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
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n402_op11_α
                                                                                        jmp   n414_var_ref_α
n413_op11_β:
                                                                                        jmp   n402_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n415_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n415_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n416_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n416_op11_α:
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
                        lea              r9, [rbp + 944]
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
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n417_var_ref_α
                                                                                        jmp   n402_op11_α
n416_op11_β:
                                                                                        jmp   n417_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n418_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n419_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n419_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 848]
                        lea              r8, [rbp + 848]
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
                        lea              r9, [rbp + 864]
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
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n420_var_ref_α
                                                                                        jmp   n402_op11_α
n419_op11_β:
                                                                                        jmp   n420_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n420_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n421_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n422_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n422_op11_α:
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
                        lea              r9, [rbp + 784]
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
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n423_var_ref_α
                                                                                        jmp   n402_op11_α
n422_op11_β:
                                                                                        jmp   n423_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n424_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n425_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n425_op11_α:
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
                        lea              r9, [rbp + 704]
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
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n426_var_ref_α
                                                                                        jmp   n402_op11_α
n425_op11_β:
                                                                                        jmp   n426_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n427_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n428_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n428_op11_α:
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
                        lea              r9, [rbp + 624]
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
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n429_var_ref_α
                                                                                        jmp   n402_op11_α
n428_op11_β:
                                                                                        jmp   n429_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n430_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n431_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n431_op11_α:
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
                        lea              r9, [rbp + 544]
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
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n432_var_ref_α
                                                                                        jmp   n402_op11_α
n431_op11_β:
                                                                                        jmp   n432_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n433_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n434_op11_α:
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
.Lx507_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx507_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        cmp              esi, 1
                                                                                        jne   .Lx507_55
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_55:
                        cmp              esi, 2
                                                                                        jne   .Lx507_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_56:
                        cmp              eax, 13
                                                                                        jne   .Lx507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_41
                        cmp              rax, r8
                                                                                        je    .Lx507_41
                        mov              r8, rax
                                                                                        jmp   .Lx507_40
.Lx507_41:
                        lea              r9, [rbp + 464]
.Lx507_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx507_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_43
                        cmp              esi, 1
                                                                                        jne   .Lx507_57
                        mov              r9, rax
                                                                                        jmp   .Lx507_42
.Lx507_57:
                        cmp              esi, 2
                                                                                        jne   .Lx507_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx507_43
                        mov              r9, rax
                                                                                        jmp   .Lx507_42
.Lx507_58:
                        cmp              eax, 13
                                                                                        jne   .Lx507_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx507_43
                        cmp              rax, r9
                                                                                        je    .Lx507_43
                        mov              r9, rax
                                                                                        jmp   .Lx507_42
.Lx507_43:
                        cmp              r8, r9
                                                                                        je    .Lx507_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_44
                        cmp              eax, 99
                                                                                        je    .Lx507_44
                        cmp              eax, 13
                                                                                        jne   .Lx507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx507_44
                                                                                        jmp   .Lx507_45
.Lx507_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_53
                        cmp              eax, 99
                                                                                        je    .Lx507_53
                        cmp              eax, 13
                                                                                        jne   .Lx507_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx507_53
                                                                                        jmp   .Lx507_46
.Lx507_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx507_53
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
                                                                                        jmp   .Lx507_51
.Lx507_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx507_47
                        cmp              eax, 99
                                                                                        je    .Lx507_47
                        cmp              eax, 13
                                                                                        jne   .Lx507_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx507_47
                                                                                        jmp   .Lx507_48
.Lx507_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx507_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx507_53
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
                                                                                        jmp   .Lx507_51
.Lx507_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx507_49
                        cmp              edx, 14
                                                                                        je    .Lx507_53
                                                                                        jmp   .Lx507_52
.Lx507_49:
                        cmp              edx, 14
                                                                                        je    .Lx507_52
                        cmp              ecx, 7
                                                                                        je    .Lx507_53
                        cmp              edx, 7
                                                                                        je    .Lx507_53
                        cmp              ecx, 6
                                                                                        jne   .Lx507_50
                        cmp              edx, 6
                                                                                        jne   .Lx507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx507_51
                                                                                        jmp   .Lx507_52
.Lx507_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx507_53
.Lx507_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx507_54
.Lx507_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx507_54
.Lx507_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx507_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n435_var_ref_α
                                                                                        jmp   n402_op11_α
n434_op11_β:
                                                                                        jmp   n435_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n436_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n437_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n437_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 368]
                        lea              r8, [rbp + 368]
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
                        lea              r9, [rbp + 384]
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
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n438_var_ref_α
                                                                                        jmp   n402_op11_α
n437_op11_β:
                                                                                        jmp   n438_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n439_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n440_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n440_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
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
                        lea              r9, [rbp + 304]
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
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n441_var_ref_α
                                                                                        jmp   n402_op11_α
n440_op11_β:
                                                                                        jmp   n441_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n441_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n442_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n443_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n443_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
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
                        lea              r9, [rbp + 224]
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
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n444_move_label_α
                                                                                        jmp   n402_op11_α
n443_op11_β:
                                                                                        jmp   n444_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n444_move_label_α:
                        lea              rax, [rip + n402_op11_α]
                        mov              qword ptr [rbp + 112], rax
                                                                                        jmp   proc_all_diff5$2F5_γ
#-----------------------------------------------------------------------------------------------------------------------
n445_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 112]
n445_disjunction_β:
                                                                                        jmp   proc_all_diff5$2F5_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_β:
                                                                                        jmp   n445_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1480]
                        lea              rsp, [rbp + 1504]
                        mov              rbp, [rbp + 1496]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_all_diff5$2F5_ω:
                        mov              rax, [rbp + 1488]
                        lea              rsp, [rbp + 1504]
                        mov              rbp, [rbp + 1496]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_late_lunch$2F1_α
proc_late_lunch$2F1_α:
                        .global          proc_late_lunch$2F1_α
                        .global          proc_late_lunch$2F1_β
                        .global          proc_late_lunch$2F1_γ
                        .global          proc_late_lunch$2F1_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 688
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_late_lunch$2F1_α_body:
                        lea              rax, [rip + n537_suspend_β]
                        mov              qword ptr [rbp + 688], rax
#-----------------------------------------------------------------------------------------------------------------------
n527_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx552_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx552_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx552_101
.Lx552_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx552_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_late_lunch$2F1_ω
                                                                                        jmp   n528_var_ref_α
n527_op11_β:
                                                                                        jmp   proc_late_lunch$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n528_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n529_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n530_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n530_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
.Lx557_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx557_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx557_41
                        cmp              esi, 1
                                                                                        jne   .Lx557_55
                        mov              r8, rax
                                                                                        jmp   .Lx557_40
.Lx557_55:
                        cmp              esi, 2
                                                                                        jne   .Lx557_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx557_41
                        mov              r8, rax
                                                                                        jmp   .Lx557_40
.Lx557_56:
                        cmp              eax, 13
                                                                                        jne   .Lx557_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx557_41
                        cmp              rax, r8
                                                                                        je    .Lx557_41
                        mov              r8, rax
                                                                                        jmp   .Lx557_40
.Lx557_41:
                        lea              r9, [rbp + 640]
.Lx557_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx557_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx557_43
                        cmp              esi, 1
                                                                                        jne   .Lx557_57
                        mov              r9, rax
                                                                                        jmp   .Lx557_42
.Lx557_57:
                        cmp              esi, 2
                                                                                        jne   .Lx557_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx557_43
                        mov              r9, rax
                                                                                        jmp   .Lx557_42
.Lx557_58:
                        cmp              eax, 13
                                                                                        jne   .Lx557_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx557_43
                        cmp              rax, r9
                                                                                        je    .Lx557_43
                        mov              r9, rax
                                                                                        jmp   .Lx557_42
.Lx557_43:
                        cmp              r8, r9
                                                                                        je    .Lx557_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx557_44
                        cmp              eax, 99
                                                                                        je    .Lx557_44
                        cmp              eax, 13
                                                                                        jne   .Lx557_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx557_44
                                                                                        jmp   .Lx557_45
.Lx557_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx557_53
                        cmp              eax, 99
                                                                                        je    .Lx557_53
                        cmp              eax, 13
                                                                                        jne   .Lx557_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx557_53
                                                                                        jmp   .Lx557_46
.Lx557_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx557_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx557_53
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
                                                                                        jmp   .Lx557_51
.Lx557_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx557_47
                        cmp              eax, 99
                                                                                        je    .Lx557_47
                        cmp              eax, 13
                                                                                        jne   .Lx557_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx557_47
                                                                                        jmp   .Lx557_48
.Lx557_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx557_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx557_53
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
                                                                                        jmp   .Lx557_51
.Lx557_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx557_49
                        cmp              edx, 14
                                                                                        je    .Lx557_53
                                                                                        jmp   .Lx557_52
.Lx557_49:
                        cmp              edx, 14
                                                                                        je    .Lx557_52
                        cmp              ecx, 7
                                                                                        je    .Lx557_53
                        cmp              edx, 7
                                                                                        je    .Lx557_53
                        cmp              ecx, 6
                                                                                        jne   .Lx557_50
                        cmp              edx, 6
                                                                                        jne   .Lx557_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx557_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx557_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx557_51
                                                                                        jmp   .Lx557_52
.Lx557_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx557_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx557_53
.Lx557_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx557_54
.Lx557_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx557_54
.Lx557_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx557_54:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n532_op11_α
                                                                                        jmp   n531_var_ref_α
n530_op11_β:
                                                                                        jmp   n532_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n531_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n533_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n532_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    proc_late_lunch$2F1_ω
                                                                                        jmp   n534_var_ref_α
n532_op11_β:
                                                                                        jmp   proc_late_lunch$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n535_op11_α
.Lx561_0:
                        .quad            .Lx561_0_s
.Lx561_0_s:
                        .string          "buyer"
#-----------------------------------------------------------------------------------------------------------------------
n534_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n536_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n535_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              rsi, qword ptr [rip + .Lx564_2]
                                                                                        jmp   .Lx564_3
.Lx564_2:
                        .quad            .Lx564_2_s
.Lx564_2_s:
                        .string          "buyer"
.Lx564_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n532_op11_α
                                                                                        jmp   n537_suspend_α
n535_op11_β:
                                                                                        jmp   n532_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n538_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n537_suspend_α:
                        lea              rax, [rip + n537_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_late_lunch$2F1_γ
n537_suspend_β:
                                                                                        jmp   n532_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n538_op11_α:
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
.Lx569_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx569_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx569_41
                        cmp              esi, 1
                                                                                        jne   .Lx569_55
                        mov              r8, rax
                                                                                        jmp   .Lx569_40
.Lx569_55:
                        cmp              esi, 2
                                                                                        jne   .Lx569_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx569_41
                        mov              r8, rax
                                                                                        jmp   .Lx569_40
.Lx569_56:
                        cmp              eax, 13
                                                                                        jne   .Lx569_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx569_41
                        cmp              rax, r8
                                                                                        je    .Lx569_41
                        mov              r8, rax
                                                                                        jmp   .Lx569_40
.Lx569_41:
                        lea              r9, [rbp + 432]
.Lx569_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx569_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx569_43
                        cmp              esi, 1
                                                                                        jne   .Lx569_57
                        mov              r9, rax
                                                                                        jmp   .Lx569_42
.Lx569_57:
                        cmp              esi, 2
                                                                                        jne   .Lx569_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx569_43
                        mov              r9, rax
                                                                                        jmp   .Lx569_42
.Lx569_58:
                        cmp              eax, 13
                                                                                        jne   .Lx569_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx569_43
                        cmp              rax, r9
                                                                                        je    .Lx569_43
                        mov              r9, rax
                                                                                        jmp   .Lx569_42
.Lx569_43:
                        cmp              r8, r9
                                                                                        je    .Lx569_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx569_44
                        cmp              eax, 99
                                                                                        je    .Lx569_44
                        cmp              eax, 13
                                                                                        jne   .Lx569_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx569_44
                                                                                        jmp   .Lx569_45
.Lx569_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx569_53
                        cmp              eax, 99
                                                                                        je    .Lx569_53
                        cmp              eax, 13
                                                                                        jne   .Lx569_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx569_53
                                                                                        jmp   .Lx569_46
.Lx569_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx569_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx569_53
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
                                                                                        jmp   .Lx569_51
.Lx569_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx569_47
                        cmp              eax, 99
                                                                                        je    .Lx569_47
                        cmp              eax, 13
                                                                                        jne   .Lx569_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx569_47
                                                                                        jmp   .Lx569_48
.Lx569_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx569_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx569_53
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
                                                                                        jmp   .Lx569_51
.Lx569_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx569_49
                        cmp              edx, 14
                                                                                        je    .Lx569_53
                                                                                        jmp   .Lx569_52
.Lx569_49:
                        cmp              edx, 14
                                                                                        je    .Lx569_52
                        cmp              ecx, 7
                                                                                        je    .Lx569_53
                        cmp              edx, 7
                                                                                        je    .Lx569_53
                        cmp              ecx, 6
                                                                                        jne   .Lx569_50
                        cmp              edx, 6
                                                                                        jne   .Lx569_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx569_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx569_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx569_51
                                                                                        jmp   .Lx569_52
.Lx569_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx569_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx569_53
.Lx569_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx569_54
.Lx569_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx569_54
.Lx569_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx569_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n539_var_ref_α
n538_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n541_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n540_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_late_lunch$2F1_ω
                                                                                        jmp   n542_var_ref_α
n540_op11_β:
                                                                                        jmp   proc_late_lunch$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n543_op11_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "clerk"
#-----------------------------------------------------------------------------------------------------------------------
n542_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n544_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n543_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx576_2]
                                                                                        jmp   .Lx576_3
.Lx576_2:
                        .quad            .Lx576_2_s
.Lx576_2_s:
                        .string          "clerk"
.Lx576_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n545_suspend_α
n543_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n546_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n545_suspend_α:
                        lea              rax, [rip + n545_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_late_lunch$2F1_γ
n545_suspend_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n546_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx581_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx581_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_41
                        cmp              esi, 1
                                                                                        jne   .Lx581_55
                        mov              r8, rax
                                                                                        jmp   .Lx581_40
.Lx581_55:
                        cmp              esi, 2
                                                                                        jne   .Lx581_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx581_41
                        mov              r8, rax
                                                                                        jmp   .Lx581_40
.Lx581_56:
                        cmp              eax, 13
                                                                                        jne   .Lx581_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_41
                        cmp              rax, r8
                                                                                        je    .Lx581_41
                        mov              r8, rax
                                                                                        jmp   .Lx581_40
.Lx581_41:
                        lea              r9, [rbp + 224]
.Lx581_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx581_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_43
                        cmp              esi, 1
                                                                                        jne   .Lx581_57
                        mov              r9, rax
                                                                                        jmp   .Lx581_42
.Lx581_57:
                        cmp              esi, 2
                                                                                        jne   .Lx581_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx581_43
                        mov              r9, rax
                                                                                        jmp   .Lx581_42
.Lx581_58:
                        cmp              eax, 13
                                                                                        jne   .Lx581_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx581_43
                        cmp              rax, r9
                                                                                        je    .Lx581_43
                        mov              r9, rax
                                                                                        jmp   .Lx581_42
.Lx581_43:
                        cmp              r8, r9
                                                                                        je    .Lx581_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx581_44
                        cmp              eax, 99
                                                                                        je    .Lx581_44
                        cmp              eax, 13
                                                                                        jne   .Lx581_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx581_44
                                                                                        jmp   .Lx581_45
.Lx581_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx581_53
                        cmp              eax, 99
                                                                                        je    .Lx581_53
                        cmp              eax, 13
                                                                                        jne   .Lx581_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx581_53
                                                                                        jmp   .Lx581_46
.Lx581_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx581_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx581_53
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
                                                                                        jmp   .Lx581_51
.Lx581_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx581_47
                        cmp              eax, 99
                                                                                        je    .Lx581_47
                        cmp              eax, 13
                                                                                        jne   .Lx581_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx581_47
                                                                                        jmp   .Lx581_48
.Lx581_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx581_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx581_53
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
                                                                                        jmp   .Lx581_51
.Lx581_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx581_49
                        cmp              edx, 14
                                                                                        je    .Lx581_53
                                                                                        jmp   .Lx581_52
.Lx581_49:
                        cmp              edx, 14
                                                                                        je    .Lx581_52
                        cmp              ecx, 7
                                                                                        je    .Lx581_53
                        cmp              edx, 7
                                                                                        je    .Lx581_53
                        cmp              ecx, 6
                                                                                        jne   .Lx581_50
                        cmp              edx, 6
                                                                                        jne   .Lx581_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx581_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx581_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx581_51
                                                                                        jmp   .Lx581_52
.Lx581_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx581_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx581_53
.Lx581_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx581_54
.Lx581_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx581_54
.Lx581_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx581_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n548_op11_α
                                                                                        jmp   n547_var_ref_α
n546_op11_β:
                                                                                        jmp   n548_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n549_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n548_op11_α:
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
                                                                                        je    proc_late_lunch$2F1_ω
                                                                                        jmp   proc_late_lunch$2F1_ω
n548_op11_β:
                                                                                        jmp   proc_late_lunch$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n549_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n550_op11_α
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "manager"
#-----------------------------------------------------------------------------------------------------------------------
n550_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              rsi, qword ptr [rip + .Lx586_2]
                                                                                        jmp   .Lx586_3
.Lx586_2:
                        .quad            .Lx586_2_s
.Lx586_2_s:
                        .string          "manager"
.Lx586_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n548_op11_α
                                                                                        jmp   n551_suspend_α
n550_op11_β:
                                                                                        jmp   n548_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n551_suspend_α:
                        lea              rax, [rip + n551_suspend_β]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_late_lunch$2F1_γ
n551_suspend_β:
                                                                                        jmp   n548_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_late_lunch$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_late_lunch$2F1_β:
                                                                                        jmp   qword ptr [rbp + 688]
#-----------------------------------------------------------------------------------------------------------------------
proc_late_lunch$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_late_lunch$2F1_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_late_lunch$2F1_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "same_lunch/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_same_lunch$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 832
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "position/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_position$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 720
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
                        mov              esi, 2448
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
.Lstartup_pname4:       .string          "early_lunch/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_early_lunch$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 512
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "all_diff5/5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_all_diff5$2F5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1472
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "late_lunch/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_late_lunch$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
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
n589_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx594_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx594_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx594_101
.Lx594_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx594_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n590_call_proc_staged_α
n589_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n590_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              edi, 3
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx596_1
                        lea              rcx, [rip + .Lx596_3]
                        lea              rdx, [rip + .Lx596_4]
                                                                                        jmp   rax
.Lx596_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx596_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx596_2
.Lx596_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx596_2
.Lx596_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx596_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx596_2
.Lx596_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx596_2
.Lx596_1:
                        call             rt_faildescr@PLT
.Lx596_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n592_op11_α
                                                                                        jmp   n591_move_label_α
n590_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx596_0:
                        .quad            .Lx596_0_s
.Lx596_0_s:
                        .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n591_move_label_α:
                        lea              rax, [rip + n590_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n592_op11_α:
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
n592_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n593_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n593_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n593_disjunction_α
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
