                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_shift_cgc$2F2_α
proc_shift_cgc$2F2_α:
                        .global          proc_shift_cgc$2F2_α
                        .global          proc_shift_cgc$2F2_β
                        .global          proc_shift_cgc$2F2_γ
                        .global          proc_shift_cgc$2F2_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_shift_cgc$2F2_α_body:
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx20_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx20_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx20_101
.Lx20_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx20_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_shift_cgc$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_shift_cgc$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
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
.Lx25_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx25_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx25_41
                        cmp              esi, 1
                                                                                        jne   .Lx25_55
                        mov              r8, rax
                                                                                        jmp   .Lx25_40
.Lx25_55:
                        cmp              esi, 2
                                                                                        jne   .Lx25_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx25_41
                        mov              r8, rax
                                                                                        jmp   .Lx25_40
.Lx25_56:
                        cmp              eax, 13
                                                                                        jne   .Lx25_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx25_41
                        cmp              rax, r8
                                                                                        je    .Lx25_41
                        mov              r8, rax
                                                                                        jmp   .Lx25_40
.Lx25_41:
                        lea              r9, [rbp + 608]
.Lx25_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx25_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx25_43
                        cmp              esi, 1
                                                                                        jne   .Lx25_57
                        mov              r9, rax
                                                                                        jmp   .Lx25_42
.Lx25_57:
                        cmp              esi, 2
                                                                                        jne   .Lx25_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx25_43
                        mov              r9, rax
                                                                                        jmp   .Lx25_42
.Lx25_58:
                        cmp              eax, 13
                                                                                        jne   .Lx25_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx25_43
                        cmp              rax, r9
                                                                                        je    .Lx25_43
                        mov              r9, rax
                                                                                        jmp   .Lx25_42
.Lx25_43:
                        cmp              r8, r9
                                                                                        je    .Lx25_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx25_44
                        cmp              eax, 99
                                                                                        je    .Lx25_44
                        cmp              eax, 13
                                                                                        jne   .Lx25_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx25_44
                                                                                        jmp   .Lx25_45
.Lx25_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx25_53
                        cmp              eax, 99
                                                                                        je    .Lx25_53
                        cmp              eax, 13
                                                                                        jne   .Lx25_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx25_53
                                                                                        jmp   .Lx25_46
.Lx25_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx25_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx25_53
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
                                                                                        jmp   .Lx25_51
.Lx25_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx25_47
                        cmp              eax, 99
                                                                                        je    .Lx25_47
                        cmp              eax, 13
                                                                                        jne   .Lx25_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx25_47
                                                                                        jmp   .Lx25_48
.Lx25_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx25_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx25_53
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
                                                                                        jmp   .Lx25_51
.Lx25_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx25_49
                        cmp              edx, 14
                                                                                        je    .Lx25_53
                                                                                        jmp   .Lx25_52
.Lx25_49:
                        cmp              edx, 14
                                                                                        je    .Lx25_52
                        cmp              ecx, 7
                                                                                        je    .Lx25_53
                        cmp              edx, 7
                                                                                        je    .Lx25_53
                        cmp              ecx, 6
                                                                                        jne   .Lx25_50
                        cmp              edx, 6
                                                                                        jne   .Lx25_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx25_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx25_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx25_51
                                                                                        jmp   .Lx25_52
.Lx25_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx25_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx25_53
.Lx25_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx25_54
.Lx25_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx25_54
.Lx25_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx25_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n6_var_ref_α
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
                                                                                        je    proc_shift_cgc$2F2_ω
                                                                                        jmp   proc_shift_cgc$2F2_ω
n5_op11_β:
                                                                                        jmp   proc_shift_cgc$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        lea              r8, [rbp + 512]
.Lx31_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx31_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx31_41
                        cmp              esi, 1
                                                                                        jne   .Lx31_55
                        mov              r8, rax
                                                                                        jmp   .Lx31_40
.Lx31_55:
                        cmp              esi, 2
                                                                                        jne   .Lx31_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx31_41
                        mov              r8, rax
                                                                                        jmp   .Lx31_40
.Lx31_56:
                        cmp              eax, 13
                                                                                        jne   .Lx31_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx31_41
                        cmp              rax, r8
                                                                                        je    .Lx31_41
                        mov              r8, rax
                                                                                        jmp   .Lx31_40
.Lx31_41:
                        lea              r9, [rbp + 528]
.Lx31_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx31_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx31_43
                        cmp              esi, 1
                                                                                        jne   .Lx31_57
                        mov              r9, rax
                                                                                        jmp   .Lx31_42
.Lx31_57:
                        cmp              esi, 2
                                                                                        jne   .Lx31_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx31_43
                        mov              r9, rax
                                                                                        jmp   .Lx31_42
.Lx31_58:
                        cmp              eax, 13
                                                                                        jne   .Lx31_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx31_43
                        cmp              rax, r9
                                                                                        je    .Lx31_43
                        mov              r9, rax
                                                                                        jmp   .Lx31_42
.Lx31_43:
                        cmp              r8, r9
                                                                                        je    .Lx31_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx31_44
                        cmp              eax, 99
                                                                                        je    .Lx31_44
                        cmp              eax, 13
                                                                                        jne   .Lx31_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx31_44
                                                                                        jmp   .Lx31_45
.Lx31_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx31_53
                        cmp              eax, 99
                                                                                        je    .Lx31_53
                        cmp              eax, 13
                                                                                        jne   .Lx31_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx31_53
                                                                                        jmp   .Lx31_46
.Lx31_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx31_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx31_53
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
                                                                                        jmp   .Lx31_51
.Lx31_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx31_47
                        cmp              eax, 99
                                                                                        je    .Lx31_47
                        cmp              eax, 13
                                                                                        jne   .Lx31_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx31_47
                                                                                        jmp   .Lx31_48
.Lx31_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx31_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx31_53
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
                                                                                        jmp   .Lx31_51
.Lx31_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx31_49
                        cmp              edx, 14
                                                                                        je    .Lx31_53
                                                                                        jmp   .Lx31_52
.Lx31_49:
                        cmp              edx, 14
                                                                                        je    .Lx31_52
                        cmp              ecx, 7
                                                                                        je    .Lx31_53
                        cmp              edx, 7
                                                                                        je    .Lx31_53
                        cmp              ecx, 6
                                                                                        jne   .Lx31_50
                        cmp              edx, 6
                                                                                        jne   .Lx31_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx31_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx31_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx31_51
                                                                                        jmp   .Lx31_52
.Lx31_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx31_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx31_53
.Lx31_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx31_54
.Lx31_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx31_54
.Lx31_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx31_54:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n8_var_ref_α
n7_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n10_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx37_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx37_21
.Lx37_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx37_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx37_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx37_23
.Lx37_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx37_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx37_1
                        lea              rcx, [rip + .Lx37_3]
                        lea              rdx, [rip + .Lx37_4]
                                                                                        jmp   rax
.Lx37_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx37_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx37_2
.Lx37_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx37_2
.Lx37_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx37_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx37_2
.Lx37_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx37_2
.Lx37_1:
                        call             rt_faildescr@PLT
.Lx37_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n11_lit_string_α
n10_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "length/2"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n12_var_ref_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "count_thread"
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
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
                                                                                        je    n5_op11_α
                                                                                        jmp   n14_var_ref_α
n13_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n15_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx45_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx45_21
.Lx45_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx45_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx45_22
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx45_23
.Lx45_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx45_23:
                        mov              rdi, qword ptr [rip + .Lx45_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx45_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx45_3]
                        lea              rdx, [rip + .Lx45_4]
                                                                                        jmp   rax
.Lx45_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx45_2
.Lx45_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx45_2
.Lx45_1:
                        call             rt_faildescr@PLT
.Lx45_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n10_call_proc_staged_β
                                                                                        jmp   n16_lit_string_α
n15_call_proc_staged_β:
                                                                                        jmp   n10_call_proc_staged_β
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "maplist/2"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n17_var_ref_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "join"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n18_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx50_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx50_21
.Lx50_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx50_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx50_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx50_23
.Lx50_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx50_23:
                        mov              rdi, qword ptr [rip + .Lx50_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx50_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx50_3]
                        lea              rdx, [rip + .Lx50_4]
                                                                                        jmp   rax
.Lx50_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx50_2
.Lx50_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx50_2
.Lx50_1:
                        call             rt_faildescr@PLT
.Lx50_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n15_call_proc_staged_β
                                                                                        jmp   n19_suspend_α
n18_call_proc_staged_β:
                                                                                        jmp   n15_call_proc_staged_β
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "maplist/2"
#-----------------------------------------------------------------------------------------------------------------------
n19_suspend_α:
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_shift_cgc$2F2_γ
n19_suspend_β:
                                                                                        jmp   n18_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_shift_cgc$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_shift_cgc$2F2_β:
                                                                                        jmp   qword ptr [rbp + 656]
#-----------------------------------------------------------------------------------------------------------------------
proc_shift_cgc$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_shift_cgc$2F2_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_shift_cgc$2F2_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F1_α
proc_test$2F1_α:
                        .global          proc_test$2F1_α
                        .global          proc_test$2F1_β
                        .global          proc_test$2F1_γ
                        .global          proc_test$2F1_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 304
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F1_α_body:
                        lea              rax, [rip + n61_suspend_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx62_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx62_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx62_101
.Lx62_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx62_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n54_var_ref_α
n53_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n55_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n56_op11_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "shift_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              rsi, qword ptr [rip + .Lx66_2]
                                                                                        jmp   .Lx66_3
.Lx66_2:
                        .quad            .Lx66_2_s
.Lx66_2_s:
                        .string          "shift_cgc"
.Lx66_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n58_op11_α
                                                                                        jmp   n57_lit_integer_α
n56_op11_β:
                                                                                        jmp   n58_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n59_lit_integer_α
.Lx67_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
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
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   proc_test$2F1_ω
n58_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n60_call_proc_staged_α
.Lx69_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n60_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx71_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx71_21
.Lx71_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx71_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx71_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx71_23
.Lx71_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx71_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx71_1
                        lea              rcx, [rip + .Lx71_3]
                        lea              rdx, [rip + .Lx71_4]
                                                                                        jmp   rax
.Lx71_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx71_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx71_2
.Lx71_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx71_2
.Lx71_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx71_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx71_2
.Lx71_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx71_2
.Lx71_1:
                        call             rt_faildescr@PLT
.Lx71_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n58_op11_α
                                                                                        jmp   n61_suspend_α
n60_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "shift_cgc/2"
#-----------------------------------------------------------------------------------------------------------------------
n61_suspend_α:
                        lea              rax, [rip + n61_suspend_β]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F1_γ
n61_suspend_β:
                                                                                        jmp   n60_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F1_res]
                        push             rax
                        mov              rax, [rbp + 312]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_step_$2F0_α
proc_step_$2F0_α:
                        .global          proc_step_$2F0_α
                        .global          proc_step_$2F0_β
                        .global          proc_step_$2F0_γ
                        .global          proc_step_$2F0_ω
                        sub              rsp, 672
                        mov              [rsp + 648], rcx
                        mov              [rsp + 656], rdx
                        mov              [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 592
                        mov              edx, 640
                        call             rt_jmp_frame_lexprep2@PLT
proc_step_$2F0_α_body:
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rbp + 592], rax
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx93_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx93_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx93_101
.Lx93_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx93_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_step_$2F0_ω
                                                                                        jmp   n75_lit_string_α
n74_op11_β:
                                                                                        jmp   proc_step_$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n76_var_ref_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "counter"
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n77_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n79_var_ref_α
                                                                                        jmp   n78_op11_α
n77_op11_β:
                                                                                        jmp   n79_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn99:               .string          "$retract"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn99]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n79_var_ref_α
                                                                                        jmp   n80_var_ref_α
n78_op11_β:
                                                                                        jmp   n79_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n83_op11_α
.Lx104_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n84_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n86_op11_α
                                                                                        jmp   n85_lit_string_α
n83_op11_β:
                                                                                        jmp   n86_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n87_op11_α
.Lx108_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n88_var_ref_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "counter"
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
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
                                                                                        je    proc_step_$2F0_ω
                                                                                        jmp   proc_step_$2F0_ω
n86_op11_β:
                                                                                        jmp   proc_step_$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n86_op11_α
                                                                                        jmp   n89_op11_α
n87_op11_β:
                                                                                        jmp   n86_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n90_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n86_op11_α
                                                                                        jmp   n85_lit_string_α
n89_op11_β:
                                                                                        jmp   n86_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
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
                                                                                        je    n86_op11_α
                                                                                        jmp   n91_op11_α
n90_op11_β:
                                                                                        jmp   n86_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn117:              .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n86_op11_α
                                                                                        jmp   n92_suspend_α
n91_op11_β:
                                                                                        jmp   n86_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_suspend_α:
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_step_$2F0_γ
n92_suspend_β:
                                                                                        jmp   n86_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_step_$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_step_$2F0_β:
                                                                                        jmp   qword ptr [rbp + 592]
#-----------------------------------------------------------------------------------------------------------------------
proc_step_$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_step_$2F0_res]
                        push             rax
                        mov              rax, [rbp + 648]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_step_$2F0_ω:
                        mov              rax, [rbp + 656]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_length$2F2_α
proc_length$2F2_α:
                        .global          proc_length$2F2_α
                        .global          proc_length$2F2_β
                        .global          proc_length$2F2_γ
                        .global          proc_length$2F2_ω
                        sub              rsp, 496
                        mov              [rsp + 472], rcx
                        mov              [rsp + 480], rdx
                        mov              [rsp + 488], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 464
                        call             rt_jmp_frame_lexprep2@PLT
proc_length$2F2_α_body:
                        lea              rax, [rip + n132_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx133_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx133_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx133_101
.Lx133_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx133_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   n121_var_ref_α
n120_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n123_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
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
.Lx138_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx138_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx138_41
                        cmp              esi, 1
                                                                                        jne   .Lx138_55
                        mov              r8, rax
                                                                                        jmp   .Lx138_40
.Lx138_55:
                        cmp              esi, 2
                                                                                        jne   .Lx138_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx138_41
                        mov              r8, rax
                                                                                        jmp   .Lx138_40
.Lx138_56:
                        cmp              eax, 13
                                                                                        jne   .Lx138_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx138_41
                        cmp              rax, r8
                                                                                        je    .Lx138_41
                        mov              r8, rax
                                                                                        jmp   .Lx138_40
.Lx138_41:
                        lea              r9, [rbp + 368]
.Lx138_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx138_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx138_43
                        cmp              esi, 1
                                                                                        jne   .Lx138_57
                        mov              r9, rax
                                                                                        jmp   .Lx138_42
.Lx138_57:
                        cmp              esi, 2
                                                                                        jne   .Lx138_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx138_43
                        mov              r9, rax
                                                                                        jmp   .Lx138_42
.Lx138_58:
                        cmp              eax, 13
                                                                                        jne   .Lx138_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx138_43
                        cmp              rax, r9
                                                                                        je    .Lx138_43
                        mov              r9, rax
                                                                                        jmp   .Lx138_42
.Lx138_43:
                        cmp              r8, r9
                                                                                        je    .Lx138_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx138_44
                        cmp              eax, 99
                                                                                        je    .Lx138_44
                        cmp              eax, 13
                                                                                        jne   .Lx138_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx138_44
                                                                                        jmp   .Lx138_45
.Lx138_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx138_53
                        cmp              eax, 99
                                                                                        je    .Lx138_53
                        cmp              eax, 13
                                                                                        jne   .Lx138_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx138_53
                                                                                        jmp   .Lx138_46
.Lx138_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx138_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx138_53
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
                                                                                        jmp   .Lx138_51
.Lx138_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx138_47
                        cmp              eax, 99
                                                                                        je    .Lx138_47
                        cmp              eax, 13
                                                                                        jne   .Lx138_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx138_47
                                                                                        jmp   .Lx138_48
.Lx138_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx138_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx138_53
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
                                                                                        jmp   .Lx138_51
.Lx138_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx138_49
                        cmp              edx, 14
                                                                                        je    .Lx138_53
                                                                                        jmp   .Lx138_52
.Lx138_49:
                        cmp              edx, 14
                                                                                        je    .Lx138_52
                        cmp              ecx, 7
                                                                                        je    .Lx138_53
                        cmp              edx, 7
                                                                                        je    .Lx138_53
                        cmp              ecx, 6
                                                                                        jne   .Lx138_50
                        cmp              edx, 6
                                                                                        jne   .Lx138_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx138_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx138_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx138_51
                                                                                        jmp   .Lx138_52
.Lx138_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx138_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx138_53
.Lx138_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx138_54
.Lx138_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx138_54
.Lx138_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx138_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n125_op11_α
                                                                                        jmp   n124_var_ref_α
n123_op11_β:
                                                                                        jmp   n125_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n125_op11_α:
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
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   proc_length$2F2_ω
n125_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n127_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n127_op11_α:
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
.Lx144_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx144_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx144_41
                        cmp              esi, 1
                                                                                        jne   .Lx144_55
                        mov              r8, rax
                                                                                        jmp   .Lx144_40
.Lx144_55:
                        cmp              esi, 2
                                                                                        jne   .Lx144_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx144_41
                        mov              r8, rax
                                                                                        jmp   .Lx144_40
.Lx144_56:
                        cmp              eax, 13
                                                                                        jne   .Lx144_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx144_41
                        cmp              rax, r8
                                                                                        je    .Lx144_41
                        mov              r8, rax
                                                                                        jmp   .Lx144_40
.Lx144_41:
                        lea              r9, [rbp + 288]
.Lx144_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx144_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx144_43
                        cmp              esi, 1
                                                                                        jne   .Lx144_57
                        mov              r9, rax
                                                                                        jmp   .Lx144_42
.Lx144_57:
                        cmp              esi, 2
                                                                                        jne   .Lx144_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx144_43
                        mov              r9, rax
                                                                                        jmp   .Lx144_42
.Lx144_58:
                        cmp              eax, 13
                                                                                        jne   .Lx144_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx144_43
                        cmp              rax, r9
                                                                                        je    .Lx144_43
                        mov              r9, rax
                                                                                        jmp   .Lx144_42
.Lx144_43:
                        cmp              r8, r9
                                                                                        je    .Lx144_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx144_44
                        cmp              eax, 99
                                                                                        je    .Lx144_44
                        cmp              eax, 13
                                                                                        jne   .Lx144_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx144_44
                                                                                        jmp   .Lx144_45
.Lx144_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx144_53
                        cmp              eax, 99
                                                                                        je    .Lx144_53
                        cmp              eax, 13
                                                                                        jne   .Lx144_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx144_53
                                                                                        jmp   .Lx144_46
.Lx144_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx144_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx144_53
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
                                                                                        jmp   .Lx144_51
.Lx144_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx144_47
                        cmp              eax, 99
                                                                                        je    .Lx144_47
                        cmp              eax, 13
                                                                                        jne   .Lx144_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx144_47
                                                                                        jmp   .Lx144_48
.Lx144_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx144_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx144_53
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
                                                                                        jmp   .Lx144_51
.Lx144_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx144_49
                        cmp              edx, 14
                                                                                        je    .Lx144_53
                                                                                        jmp   .Lx144_52
.Lx144_49:
                        cmp              edx, 14
                                                                                        je    .Lx144_52
                        cmp              ecx, 7
                                                                                        je    .Lx144_53
                        cmp              edx, 7
                                                                                        je    .Lx144_53
                        cmp              ecx, 6
                                                                                        jne   .Lx144_50
                        cmp              edx, 6
                                                                                        jne   .Lx144_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx144_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx144_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx144_51
                                                                                        jmp   .Lx144_52
.Lx144_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx144_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx144_53
.Lx144_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx144_54
.Lx144_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx144_54
.Lx144_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx144_54:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n125_op11_α
                                                                                        jmp   n128_var_ref_α
n127_op11_β:
                                                                                        jmp   n125_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n129_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n130_var_ref_α
.Lx147_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n131_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx151_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx151_21
.Lx151_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx151_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx151_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx151_23
.Lx151_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx151_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx151_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx151_25
.Lx151_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx151_25:
                        mov              edi, 20
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx151_1
                        lea              rcx, [rip + .Lx151_3]
                        lea              rdx, [rip + .Lx151_4]
                                                                                        jmp   rax
.Lx151_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx151_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx151_2
.Lx151_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx151_2
.Lx151_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx151_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx151_2
.Lx151_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx151_2
.Lx151_1:
                        call             rt_faildescr@PLT
.Lx151_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n125_op11_α
                                                                                        jmp   n132_suspend_α
n131_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n132_suspend_α:
                        lea              rax, [rip + n132_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_length$2F2_γ
n132_suspend_β:
                                                                                        jmp   n131_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_length$2F2_res]
                        push             rax
                        mov              rax, [rbp + 472]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_ω:
                        mov              rax, [rbp + 480]
                        lea              rsp, [rbp + 496]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_step$2F0_α
proc_step$2F0_α:
                        .global          proc_step$2F0_α
                        .global          proc_step$2F0_β
                        .global          proc_step$2F0_γ
                        .global          proc_step$2F0_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_step$2F0_α_body:
                        lea              rax, [rip + n158_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n154_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx160_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx160_101
.Lx160_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx160_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_step$2F0_ω
                                                                                        jmp   n155_lit_string_α
n154_op11_β:
                                                                                        jmp   proc_step$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n156_lit_string_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "step"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n157_call_proc_staged_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "step_"
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx164_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx164_21
.Lx164_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx164_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx164_22
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx164_23
.Lx164_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx164_23:
                        mov              rdi, qword ptr [rip + .Lx164_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx164_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx164_3]
                        lea              rdx, [rip + .Lx164_4]
                                                                                        jmp   rax
.Lx164_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx164_2
.Lx164_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx164_2
.Lx164_1:
                        call             rt_faildescr@PLT
.Lx164_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n159_op11_α
                                                                                        jmp   n158_suspend_α
n157_call_proc_staged_β:
                                                                                        jmp   n159_op11_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "with_mutex/2"
#-----------------------------------------------------------------------------------------------------------------------
n158_suspend_α:
                        lea              rax, [rip + n158_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_step$2F0_γ
n158_suspend_β:
                                                                                        jmp   n157_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n159_op11_α:
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
                                                                                        je    proc_step$2F0_ω
                                                                                        jmp   proc_step$2F0_ω
n159_op11_β:
                                                                                        jmp   proc_step$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_step$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_step$2F0_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_step$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_step$2F0_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_step$2F0_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_count_thread$2F2_α
proc_count_thread$2F2_α:
                        .global          proc_count_thread$2F2_α
                        .global          proc_count_thread$2F2_β
                        .global          proc_count_thread$2F2_γ
                        .global          proc_count_thread$2F2_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_count_thread$2F2_α_body:
                        lea              rax, [rip + n187_suspend_β]
                        mov              qword ptr [rbp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n168_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx188_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx188_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx188_101
.Lx188_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx188_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_count_thread$2F2_ω
                                                                                        jmp   n169_var_ref_α
n168_op11_β:
                                                                                        jmp   proc_count_thread$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n170_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n171_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n171_op11_α:
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
.Lx193_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx193_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx193_41
                        cmp              esi, 1
                                                                                        jne   .Lx193_55
                        mov              r8, rax
                                                                                        jmp   .Lx193_40
.Lx193_55:
                        cmp              esi, 2
                                                                                        jne   .Lx193_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx193_41
                        mov              r8, rax
                                                                                        jmp   .Lx193_40
.Lx193_56:
                        cmp              eax, 13
                                                                                        jne   .Lx193_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx193_41
                        cmp              rax, r8
                                                                                        je    .Lx193_41
                        mov              r8, rax
                                                                                        jmp   .Lx193_40
.Lx193_41:
                        lea              r9, [rbp + 624]
.Lx193_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx193_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx193_43
                        cmp              esi, 1
                                                                                        jne   .Lx193_57
                        mov              r9, rax
                                                                                        jmp   .Lx193_42
.Lx193_57:
                        cmp              esi, 2
                                                                                        jne   .Lx193_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx193_43
                        mov              r9, rax
                                                                                        jmp   .Lx193_42
.Lx193_58:
                        cmp              eax, 13
                                                                                        jne   .Lx193_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx193_43
                        cmp              rax, r9
                                                                                        je    .Lx193_43
                        mov              r9, rax
                                                                                        jmp   .Lx193_42
.Lx193_43:
                        cmp              r8, r9
                                                                                        je    .Lx193_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx193_44
                        cmp              eax, 99
                                                                                        je    .Lx193_44
                        cmp              eax, 13
                                                                                        jne   .Lx193_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx193_44
                                                                                        jmp   .Lx193_45
.Lx193_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx193_53
                        cmp              eax, 99
                                                                                        je    .Lx193_53
                        cmp              eax, 13
                                                                                        jne   .Lx193_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx193_53
                                                                                        jmp   .Lx193_46
.Lx193_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx193_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx193_53
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
                                                                                        jmp   .Lx193_51
.Lx193_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx193_47
                        cmp              eax, 99
                                                                                        je    .Lx193_47
                        cmp              eax, 13
                                                                                        jne   .Lx193_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx193_47
                                                                                        jmp   .Lx193_48
.Lx193_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx193_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx193_53
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
                                                                                        jmp   .Lx193_51
.Lx193_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx193_49
                        cmp              edx, 14
                                                                                        je    .Lx193_53
                                                                                        jmp   .Lx193_52
.Lx193_49:
                        cmp              edx, 14
                                                                                        je    .Lx193_52
                        cmp              ecx, 7
                                                                                        je    .Lx193_53
                        cmp              edx, 7
                                                                                        je    .Lx193_53
                        cmp              ecx, 6
                                                                                        jne   .Lx193_50
                        cmp              edx, 6
                                                                                        jne   .Lx193_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx193_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx193_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx193_51
                                                                                        jmp   .Lx193_52
.Lx193_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx193_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx193_53
.Lx193_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx193_54
.Lx193_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx193_54
.Lx193_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx193_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n173_op11_α
                                                                                        jmp   n172_var_ref_α
n171_op11_β:
                                                                                        jmp   n173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n174_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n173_op11_α:
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
                                                                                        je    proc_count_thread$2F2_ω
                                                                                        jmp   proc_count_thread$2F2_ω
n173_op11_β:
                                                                                        jmp   proc_count_thread$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n175_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n175_op11_α:
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
.Lx199_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx199_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_41
                        cmp              esi, 1
                                                                                        jne   .Lx199_55
                        mov              r8, rax
                                                                                        jmp   .Lx199_40
.Lx199_55:
                        cmp              esi, 2
                                                                                        jne   .Lx199_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx199_41
                        mov              r8, rax
                                                                                        jmp   .Lx199_40
.Lx199_56:
                        cmp              eax, 13
                                                                                        jne   .Lx199_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_41
                        cmp              rax, r8
                                                                                        je    .Lx199_41
                        mov              r8, rax
                                                                                        jmp   .Lx199_40
.Lx199_41:
                        lea              r9, [rbp + 544]
.Lx199_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx199_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_43
                        cmp              esi, 1
                                                                                        jne   .Lx199_57
                        mov              r9, rax
                                                                                        jmp   .Lx199_42
.Lx199_57:
                        cmp              esi, 2
                                                                                        jne   .Lx199_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx199_43
                        mov              r9, rax
                                                                                        jmp   .Lx199_42
.Lx199_58:
                        cmp              eax, 13
                                                                                        jne   .Lx199_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx199_43
                        cmp              rax, r9
                                                                                        je    .Lx199_43
                        mov              r9, rax
                                                                                        jmp   .Lx199_42
.Lx199_43:
                        cmp              r8, r9
                                                                                        je    .Lx199_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx199_44
                        cmp              eax, 99
                                                                                        je    .Lx199_44
                        cmp              eax, 13
                                                                                        jne   .Lx199_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx199_44
                                                                                        jmp   .Lx199_45
.Lx199_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx199_53
                        cmp              eax, 99
                                                                                        je    .Lx199_53
                        cmp              eax, 13
                                                                                        jne   .Lx199_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx199_53
                                                                                        jmp   .Lx199_46
.Lx199_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx199_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx199_53
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
                                                                                        jmp   .Lx199_51
.Lx199_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx199_47
                        cmp              eax, 99
                                                                                        je    .Lx199_47
                        cmp              eax, 13
                                                                                        jne   .Lx199_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx199_47
                                                                                        jmp   .Lx199_48
.Lx199_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx199_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx199_53
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
                                                                                        jmp   .Lx199_51
.Lx199_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx199_49
                        cmp              edx, 14
                                                                                        je    .Lx199_53
                                                                                        jmp   .Lx199_52
.Lx199_49:
                        cmp              edx, 14
                                                                                        je    .Lx199_52
                        cmp              ecx, 7
                                                                                        je    .Lx199_53
                        cmp              edx, 7
                                                                                        je    .Lx199_53
                        cmp              ecx, 6
                                                                                        jne   .Lx199_50
                        cmp              edx, 6
                                                                                        jne   .Lx199_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx199_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx199_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx199_51
                                                                                        jmp   .Lx199_52
.Lx199_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx199_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx199_53
.Lx199_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx199_54
.Lx199_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx199_54
.Lx199_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx199_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n173_op11_α
                                                                                        jmp   n176_lit_string_α
n175_op11_β:
                                                                                        jmp   n173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n177_var_ref_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "count"
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n178_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n178_op11_α:
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
                                                                                        je    n173_op11_α
                                                                                        jmp   n179_var_ref_α
n178_op11_β:
                                                                                        jmp   n173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n180_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n181_lit_string_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n182_lit_integer_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "stack_limit"
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n183_op11_α
.Lx208_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n183_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    proc_count_thread$2F2_ω
                                                                                        jmp   n184_lit_string_α
n183_op11_β:
                                                                                        jmp   proc_count_thread$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n185_op11_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n185_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n173_op11_α
                                                                                        jmp   n186_call_proc_staged_α
n185_op11_β:
                                                                                        jmp   n173_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n186_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx213_21
.Lx213_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx213_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_22
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx213_23
.Lx213_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx213_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_24
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx213_25
.Lx213_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             rt_arg_stage@PLT
.Lx213_25:
                        mov              rdi, qword ptr [rip + .Lx213_0]
                        mov              esi, 3
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
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n173_op11_α
                                                                                        jmp   n187_suspend_α
n186_call_proc_staged_β:
                                                                                        jmp   n173_op11_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "thread_create/3"
#-----------------------------------------------------------------------------------------------------------------------
n187_suspend_α:
                        lea              rax, [rip + n187_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_count_thread$2F2_γ
n187_suspend_β:
                                                                                        jmp   n186_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_count_thread$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_count_thread$2F2_β:
                                                                                        jmp   qword ptr [rbp + 672]
#-----------------------------------------------------------------------------------------------------------------------
proc_count_thread$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_count_thread$2F2_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_count_thread$2F2_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 640
                        mov              [rsp + 616], rcx
                        mov              [rsp + 624], rdx
                        mov              [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 608
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n216_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx235_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx235_101
.Lx235_100:
                        lea              rdi, [rbp + 128]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx235_101:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n217_var_ref_α
n216_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n218_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n219_op11_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "cgc"
#-----------------------------------------------------------------------------------------------------------------------
n219_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              rsi, qword ptr [rip + .Lx239_2]
                                                                                        jmp   .Lx239_3
.Lx239_2:
                        .quad            .Lx239_2_s
.Lx239_2_s:
                        .string          "cgc"
.Lx239_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n221_op11_α
                                                                                        jmp   n220_var_ref_α
n219_op11_β:
                                                                                        jmp   n221_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n221_op11_α:
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
n221_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n223_op11_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "shift_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n223_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              rsi, qword ptr [rip + .Lx244_2]
                                                                                        jmp   .Lx244_3
.Lx244_2:
                        .quad            .Lx244_2_s
.Lx244_2_s:
                        .string          "shift_cgc"
.Lx244_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n221_op11_α
                                                                                        jmp   n224_var_ref_α
n223_op11_β:
                                                                                        jmp   n221_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n225_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n226_op11_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n226_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              rsi, qword ptr [rip + .Lx248_2]
                                                                                        jmp   .Lx248_3
.Lx248_2:
                        .quad            .Lx248_2_s
.Lx248_2_s:
                        .string          "[]"
.Lx248_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n221_op11_α
                                                                                        jmp   n227_var_ref_α
n226_op11_β:
                                                                                        jmp   n221_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n228_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n229_lit_integer_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "shift_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n230_lit_integer_α
.Lx252_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n231_op11_α
.Lx253_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n231_op11_α:
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
                                                                                        je    n221_op11_α
                                                                                        jmp   n232_op11_α
n231_op11_β:
                                                                                        jmp   n221_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n232_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx255_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx255_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx255_41
                        cmp              esi, 1
                                                                                        jne   .Lx255_55
                        mov              r8, rax
                                                                                        jmp   .Lx255_40
.Lx255_55:
                        cmp              esi, 2
                                                                                        jne   .Lx255_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx255_41
                        mov              r8, rax
                                                                                        jmp   .Lx255_40
.Lx255_56:
                        cmp              eax, 13
                                                                                        jne   .Lx255_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx255_41
                        cmp              rax, r8
                                                                                        je    .Lx255_41
                        mov              r8, rax
                                                                                        jmp   .Lx255_40
.Lx255_41:
                        lea              r9, [rbp + 208]
.Lx255_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx255_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx255_43
                        cmp              esi, 1
                                                                                        jne   .Lx255_57
                        mov              r9, rax
                                                                                        jmp   .Lx255_42
.Lx255_57:
                        cmp              esi, 2
                                                                                        jne   .Lx255_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx255_43
                        mov              r9, rax
                                                                                        jmp   .Lx255_42
.Lx255_58:
                        cmp              eax, 13
                                                                                        jne   .Lx255_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx255_43
                        cmp              rax, r9
                                                                                        je    .Lx255_43
                        mov              r9, rax
                                                                                        jmp   .Lx255_42
.Lx255_43:
                        cmp              r8, r9
                                                                                        je    .Lx255_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx255_44
                        cmp              eax, 99
                                                                                        je    .Lx255_44
                        cmp              eax, 13
                                                                                        jne   .Lx255_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx255_44
                                                                                        jmp   .Lx255_45
.Lx255_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx255_53
                        cmp              eax, 99
                                                                                        je    .Lx255_53
                        cmp              eax, 13
                                                                                        jne   .Lx255_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx255_53
                                                                                        jmp   .Lx255_46
.Lx255_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx255_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx255_53
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
                                                                                        jmp   .Lx255_51
.Lx255_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx255_47
                        cmp              eax, 99
                                                                                        je    .Lx255_47
                        cmp              eax, 13
                                                                                        jne   .Lx255_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx255_47
                                                                                        jmp   .Lx255_48
.Lx255_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx255_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx255_53
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
                                                                                        jmp   .Lx255_51
.Lx255_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx255_49
                        cmp              edx, 14
                                                                                        je    .Lx255_53
                                                                                        jmp   .Lx255_52
.Lx255_49:
                        cmp              edx, 14
                                                                                        je    .Lx255_52
                        cmp              ecx, 7
                                                                                        je    .Lx255_53
                        cmp              edx, 7
                                                                                        je    .Lx255_53
                        cmp              ecx, 6
                                                                                        jne   .Lx255_50
                        cmp              edx, 6
                                                                                        jne   .Lx255_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx255_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx255_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx255_51
                                                                                        jmp   .Lx255_52
.Lx255_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx255_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx255_53
.Lx255_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx255_54
.Lx255_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx255_54
.Lx255_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx255_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n221_op11_α
                                                                                        jmp   n233_move_label_α
n232_op11_β:
                                                                                        jmp   n221_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n233_move_label_α:
                        lea              rax, [rip + n221_op11_α]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_pj_test$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n234_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 96]
n234_disjunction_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   n234_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 616]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_dcα:
                        pop              r11
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 608], r11
                        lea              rax, [rip + .Lx260_2]
                        mov              qword ptr [rbp + 616], rax
                        lea              rax, [rip + .Lx260_3]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 608
                        mov              edx, 608
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pj_test$2F4_α_body
.Lx260_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx260_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -640
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lshift$2F0_α
proc_lshift$2F0_α:
                        .global          proc_lshift$2F0_α
                        .global          proc_lshift$2F0_β
                        .global          proc_lshift$2F0_γ
                        .global          proc_lshift$2F0_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        call             rt_jmp_frame_lexprep2@PLT
proc_lshift$2F0_α_body:
                        lea              rax, [rip + n269_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n261_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx270_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx270_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx270_101
.Lx270_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx270_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_lshift$2F0_ω
                                                                                        jmp   n262_lit_string_α
n261_op11_β:
                                                                                        jmp   proc_lshift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n263_var_ref_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "local_shifts"
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n264_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx275_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx275_21
.Lx275_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx275_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx275_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx275_23
.Lx275_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx275_23:
                        mov              rdi, qword ptr [rip + .Lx275_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx275_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx275_3]
                        lea              rdx, [rip + .Lx275_4]
                                                                                        jmp   rax
.Lx275_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx275_2
.Lx275_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx275_2
.Lx275_1:
                        call             rt_faildescr@PLT
.Lx275_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n266_op11_α
                                                                                        jmp   n265_var_ref_α
n264_call_proc_staged_β:
                                                                                        jmp   n266_op11_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n265_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 272]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n267_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n266_op11_α:
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
                                                                                        je    proc_lshift$2F0_ω
                                                                                        jmp   proc_lshift$2F0_ω
n266_op11_β:
                                                                                        jmp   proc_lshift$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n267_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx280_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx280_21
.Lx280_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx280_21:
                        mov              edi, 8
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx280_1
                        lea              rcx, [rip + .Lx280_3]
                        lea              rdx, [rip + .Lx280_4]
                                                                                        jmp   rax
.Lx280_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx280_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx280_2
.Lx280_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx280_2
.Lx280_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx280_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx280_2
.Lx280_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx280_2
.Lx280_1:
                        call             rt_faildescr@PLT
.Lx280_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n264_call_proc_staged_β
                                                                                        jmp   n268_op19_α
n267_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "lshift/1"
#-----------------------------------------------------------------------------------------------------------------------
n268_op19_α:
                                                                                        jmp   n269_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n269_suspend_α:
                        lea              rax, [rip + n269_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_lshift$2F0_γ
n269_suspend_β:
                                                                                        jmp   n267_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_lshift$2F0_res]
                        push             rax
                        mov              rax, [rbp + 296]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F0_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lshift$2F1_α
proc_lshift$2F1_α:
                        .global          proc_lshift$2F1_α
                        .global          proc_lshift$2F1_β
                        .global          proc_lshift$2F1_γ
                        .global          proc_lshift$2F1_ω
                        sub              rsp, 560
                        mov              [rsp + 536], rcx
                        mov              [rsp + 544], rdx
                        mov              [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 528
                        call             rt_jmp_frame_lexprep2@PLT
proc_lshift$2F1_α_body:
                        lea              rax, [rip + n297_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n284_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx300_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx300_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx300_101
.Lx300_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx300_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_lshift$2F1_ω
                                                                                        jmp   n285_var_ref_α
n284_op11_β:
                                                                                        jmp   proc_lshift$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n286_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n287_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n287_op11_α:
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
.Lx305_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx305_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx305_41
                        cmp              esi, 1
                                                                                        jne   .Lx305_55
                        mov              r8, rax
                                                                                        jmp   .Lx305_40
.Lx305_55:
                        cmp              esi, 2
                                                                                        jne   .Lx305_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx305_41
                        mov              r8, rax
                                                                                        jmp   .Lx305_40
.Lx305_56:
                        cmp              eax, 13
                                                                                        jne   .Lx305_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx305_41
                        cmp              rax, r8
                                                                                        je    .Lx305_41
                        mov              r8, rax
                                                                                        jmp   .Lx305_40
.Lx305_41:
                        lea              r9, [rbp + 432]
.Lx305_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx305_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx305_43
                        cmp              esi, 1
                                                                                        jne   .Lx305_57
                        mov              r9, rax
                                                                                        jmp   .Lx305_42
.Lx305_57:
                        cmp              esi, 2
                                                                                        jne   .Lx305_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx305_43
                        mov              r9, rax
                                                                                        jmp   .Lx305_42
.Lx305_58:
                        cmp              eax, 13
                                                                                        jne   .Lx305_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx305_43
                        cmp              rax, r9
                                                                                        je    .Lx305_43
                        mov              r9, rax
                                                                                        jmp   .Lx305_42
.Lx305_43:
                        cmp              r8, r9
                                                                                        je    .Lx305_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx305_44
                        cmp              eax, 99
                                                                                        je    .Lx305_44
                        cmp              eax, 13
                                                                                        jne   .Lx305_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx305_44
                                                                                        jmp   .Lx305_45
.Lx305_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx305_53
                        cmp              eax, 99
                                                                                        je    .Lx305_53
                        cmp              eax, 13
                                                                                        jne   .Lx305_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx305_53
                                                                                        jmp   .Lx305_46
.Lx305_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx305_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx305_53
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
                                                                                        jmp   .Lx305_51
.Lx305_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx305_47
                        cmp              eax, 99
                                                                                        je    .Lx305_47
                        cmp              eax, 13
                                                                                        jne   .Lx305_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx305_47
                                                                                        jmp   .Lx305_48
.Lx305_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx305_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx305_53
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
                                                                                        jmp   .Lx305_51
.Lx305_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx305_49
                        cmp              edx, 14
                                                                                        je    .Lx305_53
                                                                                        jmp   .Lx305_52
.Lx305_49:
                        cmp              edx, 14
                                                                                        je    .Lx305_52
                        cmp              ecx, 7
                                                                                        je    .Lx305_53
                        cmp              edx, 7
                                                                                        je    .Lx305_53
                        cmp              ecx, 6
                                                                                        jne   .Lx305_50
                        cmp              edx, 6
                                                                                        jne   .Lx305_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx305_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx305_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx305_51
                                                                                        jmp   .Lx305_52
.Lx305_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx305_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx305_53
.Lx305_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx305_54
.Lx305_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx305_54
.Lx305_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx305_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n288_lit_string_α
n287_op11_β:
                                                                                        jmp   n289_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n290_var_ref_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "local_shifts"
#-----------------------------------------------------------------------------------------------------------------------
n289_op11_α:
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
                                                                                        je    proc_lshift$2F1_ω
                                                                                        jmp   n291_var_ref_α
n289_op11_β:
                                                                                        jmp   proc_lshift$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n292_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n293_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n292_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx313_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx313_21
.Lx313_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx313_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx313_22
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx313_23
.Lx313_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx313_23:
                        mov              rdi, qword ptr [rip + .Lx313_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx313_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx313_3]
                        lea              rdx, [rip + .Lx313_4]
                                                                                        jmp   rax
.Lx313_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx313_2
.Lx313_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx313_2
.Lx313_1:
                        call             rt_faildescr@PLT
.Lx313_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n289_op11_α
                                                                                        jmp   n294_var_ref_α
n292_call_proc_staged_β:
                                                                                        jmp   n289_op11_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "statistics/2"
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n295_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n296_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n295_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 128]
                        lea              r8, [rbp + 128]
.Lx318_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx318_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx318_41
                        cmp              esi, 1
                                                                                        jne   .Lx318_55
                        mov              r8, rax
                                                                                        jmp   .Lx318_40
.Lx318_55:
                        cmp              esi, 2
                                                                                        jne   .Lx318_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx318_41
                        mov              r8, rax
                                                                                        jmp   .Lx318_40
.Lx318_56:
                        cmp              eax, 13
                                                                                        jne   .Lx318_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx318_41
                        cmp              rax, r8
                                                                                        je    .Lx318_41
                        mov              r8, rax
                                                                                        jmp   .Lx318_40
.Lx318_41:
                        lea              r9, [rbp + 144]
.Lx318_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx318_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx318_43
                        cmp              esi, 1
                                                                                        jne   .Lx318_57
                        mov              r9, rax
                                                                                        jmp   .Lx318_42
.Lx318_57:
                        cmp              esi, 2
                                                                                        jne   .Lx318_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx318_43
                        mov              r9, rax
                                                                                        jmp   .Lx318_42
.Lx318_58:
                        cmp              eax, 13
                                                                                        jne   .Lx318_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx318_43
                        cmp              rax, r9
                                                                                        je    .Lx318_43
                        mov              r9, rax
                                                                                        jmp   .Lx318_42
.Lx318_43:
                        cmp              r8, r9
                                                                                        je    .Lx318_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx318_44
                        cmp              eax, 99
                                                                                        je    .Lx318_44
                        cmp              eax, 13
                                                                                        jne   .Lx318_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx318_44
                                                                                        jmp   .Lx318_45
.Lx318_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx318_53
                        cmp              eax, 99
                                                                                        je    .Lx318_53
                        cmp              eax, 13
                                                                                        jne   .Lx318_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx318_53
                                                                                        jmp   .Lx318_46
.Lx318_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx318_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx318_53
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
                                                                                        jmp   .Lx318_51
.Lx318_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx318_47
                        cmp              eax, 99
                                                                                        je    .Lx318_47
                        cmp              eax, 13
                                                                                        jne   .Lx318_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx318_47
                                                                                        jmp   .Lx318_48
.Lx318_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx318_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx318_53
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
                                                                                        jmp   .Lx318_51
.Lx318_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx318_49
                        cmp              edx, 14
                                                                                        je    .Lx318_53
                                                                                        jmp   .Lx318_52
.Lx318_49:
                        cmp              edx, 14
                                                                                        je    .Lx318_52
                        cmp              ecx, 7
                                                                                        je    .Lx318_53
                        cmp              edx, 7
                                                                                        je    .Lx318_53
                        cmp              ecx, 6
                                                                                        jne   .Lx318_50
                        cmp              edx, 6
                                                                                        jne   .Lx318_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx318_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx318_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx318_51
                                                                                        jmp   .Lx318_52
.Lx318_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx318_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx318_53
.Lx318_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx318_54
.Lx318_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx318_54
.Lx318_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx318_54:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n298_op11_α
                                                                                        jmp   n297_suspend_α
n295_op11_β:
                                                                                        jmp   n298_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n296_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx320_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx320_21
.Lx320_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx320_21:
                        mov              edi, 8
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx320_1
                        lea              rcx, [rip + .Lx320_3]
                        lea              rdx, [rip + .Lx320_4]
                                                                                        jmp   rax
.Lx320_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx320_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx320_2
.Lx320_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx320_2
.Lx320_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx320_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx320_2
.Lx320_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx320_2
.Lx320_1:
                        call             rt_faildescr@PLT
.Lx320_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n292_call_proc_staged_β
                                                                                        jmp   n299_suspend_α
n296_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "lshift/1"
#-----------------------------------------------------------------------------------------------------------------------
n297_suspend_α:
                        lea              rax, [rip + n297_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_lshift$2F1_γ
n297_suspend_β:
                                                                                        jmp   n298_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n298_op11_α:
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
                                                                                        je    proc_lshift$2F1_ω
                                                                                        jmp   proc_lshift$2F1_ω
n298_op11_β:
                                                                                        jmp   proc_lshift$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n299_suspend_α:
                        lea              rax, [rip + n299_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_lshift$2F1_γ
n299_suspend_β:
                                                                                        jmp   n296_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F1_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_lshift$2F1_res]
                        push             rax
                        mov              rax, [rbp + 536]
                        mov              rbp, [rbp + 552]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_lshift$2F1_ω:
                        mov              rax, [rbp + 544]
                        lea              rsp, [rbp + 560]
                        mov              rbp, [rbp + 552]
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
                        lea              rax, [rip + n330_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n327_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n328_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n329_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_gen_α:
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
.Lx337_60:
                        .section         .rodata
.Lbynamegenfn135:       .string          "$between"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn135]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        lea              rcx, [rbp + 128]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_between$2F3_ω
                                                                                        jmp   n330_suspend_α
n329_call_builtin_gen_β:
                                                                                        jmp   .Lx337_60
#-----------------------------------------------------------------------------------------------------------------------
n330_suspend_α:
                        lea              rax, [rip + n330_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_between$2F3_γ
n330_suspend_β:
                                                                                        jmp   n329_call_builtin_gen_β
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
                        .globl           proc_count$2F1_α
proc_count$2F1_α:
                        .global          proc_count$2F1_α
                        .global          proc_count$2F1_β
                        .global          proc_count$2F1_γ
                        .global          proc_count$2F1_ω
                        sub              rsp, 880
                        mov              [rsp + 856], rcx
                        mov              [rsp + 864], rdx
                        mov              [rsp + 872], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 784
                        mov              edx, 848
                        call             rt_jmp_frame_lexprep2@PLT
proc_count$2F1_α_body:
                        lea              rax, [rip + n353_suspend_β]
                        mov              qword ptr [rbp + 784], rax
#-----------------------------------------------------------------------------------------------------------------------
n340_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx364_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx364_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx364_101
.Lx364_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx364_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_count$2F1_ω
                                                                                        jmp   n341_var_ref_α
n340_op11_β:
                                                                                        jmp   proc_count$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n342_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n343_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n343_op11_α:
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
.Lx369_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx369_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx369_41
                        cmp              esi, 1
                                                                                        jne   .Lx369_55
                        mov              r8, rax
                                                                                        jmp   .Lx369_40
.Lx369_55:
                        cmp              esi, 2
                                                                                        jne   .Lx369_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx369_41
                        mov              r8, rax
                                                                                        jmp   .Lx369_40
.Lx369_56:
                        cmp              eax, 13
                                                                                        jne   .Lx369_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx369_41
                        cmp              rax, r8
                                                                                        je    .Lx369_41
                        mov              r8, rax
                                                                                        jmp   .Lx369_40
.Lx369_41:
                        lea              r9, [rbp + 736]
.Lx369_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx369_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx369_43
                        cmp              esi, 1
                                                                                        jne   .Lx369_57
                        mov              r9, rax
                                                                                        jmp   .Lx369_42
.Lx369_57:
                        cmp              esi, 2
                                                                                        jne   .Lx369_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx369_43
                        mov              r9, rax
                                                                                        jmp   .Lx369_42
.Lx369_58:
                        cmp              eax, 13
                                                                                        jne   .Lx369_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx369_43
                        cmp              rax, r9
                                                                                        je    .Lx369_43
                        mov              r9, rax
                                                                                        jmp   .Lx369_42
.Lx369_43:
                        cmp              r8, r9
                                                                                        je    .Lx369_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx369_44
                        cmp              eax, 99
                                                                                        je    .Lx369_44
                        cmp              eax, 13
                                                                                        jne   .Lx369_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx369_44
                                                                                        jmp   .Lx369_45
.Lx369_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx369_53
                        cmp              eax, 99
                                                                                        je    .Lx369_53
                        cmp              eax, 13
                                                                                        jne   .Lx369_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx369_53
                                                                                        jmp   .Lx369_46
.Lx369_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx369_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx369_53
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
                                                                                        jmp   .Lx369_51
.Lx369_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx369_47
                        cmp              eax, 99
                                                                                        je    .Lx369_47
                        cmp              eax, 13
                                                                                        jne   .Lx369_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx369_47
                                                                                        jmp   .Lx369_48
.Lx369_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx369_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx369_53
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
                                                                                        jmp   .Lx369_51
.Lx369_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx369_49
                        cmp              edx, 14
                                                                                        je    .Lx369_53
                                                                                        jmp   .Lx369_52
.Lx369_49:
                        cmp              edx, 14
                                                                                        je    .Lx369_52
                        cmp              ecx, 7
                                                                                        je    .Lx369_53
                        cmp              edx, 7
                                                                                        je    .Lx369_53
                        cmp              ecx, 6
                                                                                        jne   .Lx369_50
                        cmp              edx, 6
                                                                                        jne   .Lx369_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx369_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx369_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx369_51
                                                                                        jmp   .Lx369_52
.Lx369_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx369_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx369_53
.Lx369_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx369_54
.Lx369_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx369_54
.Lx369_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx369_54:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n345_op11_α
                                                                                        jmp   n344_lit_integer_α
n343_op11_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n346_var_ref_α
.Lx370_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n345_op11_α:
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
                                                                                        je    proc_count$2F1_ω
                                                                                        jmp   n347_var_ref_α
n345_op11_β:
                                                                                        jmp   proc_count$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n348_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n349_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n350_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n351_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n350_call_proc_staged_α:
                        mov              qword ptr [rbp + 624], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx381_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx381_21
.Lx381_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx381_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx381_22
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx381_23
.Lx381_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx381_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx381_24
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx381_25
.Lx381_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        call             rt_arg_stage@PLT
.Lx381_25:
                        mov              edi, 9
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx381_1
                        lea              rcx, [rip + .Lx381_3]
                        lea              rdx, [rip + .Lx381_4]
                                                                                        jmp   rax
.Lx381_3:
                        mov              qword ptr [rbp + 632], rsp
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax
                                                                                        jne   .Lx381_5
                        mov              qword ptr [rbp + 624], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx381_2
.Lx381_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx381_2
.Lx381_4:
                        mov              rax, qword ptr [rbp + 624]
                        test             rax, rax
                                                                                        jne   .Lx381_6
                        mov              qword ptr [rbp + 624], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx381_2
.Lx381_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx381_2
.Lx381_1:
                        call             rt_faildescr@PLT
.Lx381_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n345_op11_α
                                                                                        jmp   n352_lit_string_α
n350_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 632]
                                                                                        jmp   qword ptr [rsp]
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n351_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 128]
                        lea              r8, [rbp + 128]
.Lx382_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx382_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_41
                        cmp              esi, 1
                                                                                        jne   .Lx382_55
                        mov              r8, rax
                                                                                        jmp   .Lx382_40
.Lx382_55:
                        cmp              esi, 2
                                                                                        jne   .Lx382_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx382_41
                        mov              r8, rax
                                                                                        jmp   .Lx382_40
.Lx382_56:
                        cmp              eax, 13
                                                                                        jne   .Lx382_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_41
                        cmp              rax, r8
                                                                                        je    .Lx382_41
                        mov              r8, rax
                                                                                        jmp   .Lx382_40
.Lx382_41:
                        lea              r9, [rbp + 144]
.Lx382_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx382_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_43
                        cmp              esi, 1
                                                                                        jne   .Lx382_57
                        mov              r9, rax
                                                                                        jmp   .Lx382_42
.Lx382_57:
                        cmp              esi, 2
                                                                                        jne   .Lx382_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx382_43
                        mov              r9, rax
                                                                                        jmp   .Lx382_42
.Lx382_58:
                        cmp              eax, 13
                                                                                        jne   .Lx382_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_43
                        cmp              rax, r9
                                                                                        je    .Lx382_43
                        mov              r9, rax
                                                                                        jmp   .Lx382_42
.Lx382_43:
                        cmp              r8, r9
                                                                                        je    .Lx382_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_44
                        cmp              eax, 99
                                                                                        je    .Lx382_44
                        cmp              eax, 13
                                                                                        jne   .Lx382_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx382_44
                                                                                        jmp   .Lx382_45
.Lx382_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_53
                        cmp              eax, 99
                                                                                        je    .Lx382_53
                        cmp              eax, 13
                                                                                        jne   .Lx382_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx382_53
                                                                                        jmp   .Lx382_46
.Lx382_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx382_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx382_53
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
                                                                                        jmp   .Lx382_51
.Lx382_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_47
                        cmp              eax, 99
                                                                                        je    .Lx382_47
                        cmp              eax, 13
                                                                                        jne   .Lx382_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx382_47
                                                                                        jmp   .Lx382_48
.Lx382_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx382_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx382_53
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
                                                                                        jmp   .Lx382_51
.Lx382_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx382_49
                        cmp              edx, 14
                                                                                        je    .Lx382_53
                                                                                        jmp   .Lx382_52
.Lx382_49:
                        cmp              edx, 14
                                                                                        je    .Lx382_52
                        cmp              ecx, 7
                                                                                        je    .Lx382_53
                        cmp              edx, 7
                                                                                        je    .Lx382_53
                        cmp              ecx, 6
                                                                                        jne   .Lx382_50
                        cmp              edx, 6
                                                                                        jne   .Lx382_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx382_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx382_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx382_51
                                                                                        jmp   .Lx382_52
.Lx382_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx382_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx382_53
.Lx382_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx382_54
.Lx382_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx382_54
.Lx382_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx382_54:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n354_op11_α
                                                                                        jmp   n353_suspend_α
n351_op11_β:
                                                                                        jmp   n354_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n355_lit_string_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n353_suspend_α:
                        lea              rax, [rip + n353_suspend_β]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_count$2F1_γ
n353_suspend_β:
                                                                                        jmp   n354_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n354_op11_α:
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
                                                                                        je    proc_count$2F1_ω
                                                                                        jmp   proc_count$2F1_ω
n354_op11_β:
                                                                                        jmp   proc_count$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n356_lit_string_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "resource_error"
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n357_op11_α
.Lx388_0:
                        .quad            .Lx388_0_s
.Lx388_0_s:
                        .string          "stack"
#-----------------------------------------------------------------------------------------------------------------------
n357_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    proc_count$2F1_ω
                                                                                        jmp   n358_var_ref_α
n357_op11_β:
                                                                                        jmp   proc_count$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n359_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n359_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n345_op11_α
                                                                                        jmp   n360_op11_α
n359_op11_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n360_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx393_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx393_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx393_101
.Lx393_100:
                        lea              rdi, [rbp + 448]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx393_101:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n345_op11_α
                                                                                        jmp   n361_call_proc_staged_α
n360_op11_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n361_call_proc_staged_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              edi, 11
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx395_1
                        lea              rcx, [rip + .Lx395_3]
                        lea              rdx, [rip + .Lx395_4]
                                                                                        jmp   rax
.Lx395_3:
                        mov              qword ptr [rbp + 536], rsp
                        mov              rax, qword ptr [rbp + 528]
                        test             rax, rax
                                                                                        jne   .Lx395_5
                        mov              qword ptr [rbp + 528], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx395_2
.Lx395_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx395_2
.Lx395_4:
                        mov              rax, qword ptr [rbp + 528]
                        test             rax, rax
                                                                                        jne   .Lx395_6
                        mov              qword ptr [rbp + 528], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx395_2
.Lx395_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx395_2
.Lx395_1:
                        call             rt_faildescr@PLT
.Lx395_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n363_op11_α
                                                                                        jmp   n362_suspend_α
n361_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 536]
                                                                                        jmp   qword ptr [rsp]
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "count2/0"
#-----------------------------------------------------------------------------------------------------------------------
n362_suspend_α:
                        lea              rax, [rip + n362_suspend_β]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_count$2F1_γ
n362_suspend_β:
                                                                                        jmp   n350_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n363_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn399:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n350_call_proc_staged_β
                                                                                        jmp   n363_op11_α
n363_op11_β:
                                                                                        jmp   n350_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_count$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_count$2F1_β:
                                                                                        jmp   qword ptr [rbp + 784]
#-----------------------------------------------------------------------------------------------------------------------
proc_count$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_count$2F1_res]
                        push             rax
                        mov              rax, [rbp + 856]
                        mov              rbp, [rbp + 872]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_count$2F1_ω:
                        mov              rax, [rbp + 864]
                        lea              rsp, [rbp + 880]
                        mov              rbp, [rbp + 872]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_count2$2F0_α
proc_count2$2F0_α:
                        .global          proc_count2$2F0_α
                        .global          proc_count2$2F0_β
                        .global          proc_count2$2F0_γ
                        .global          proc_count2$2F0_ω
                        sub              rsp, 336
                        mov              [rsp + 312], rcx
                        mov              [rsp + 320], rdx
                        mov              [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 304
                        call             rt_jmp_frame_lexprep2@PLT
proc_count2$2F0_α_body:
                        lea              rax, [rip + n407_suspend_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n400_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx408_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx408_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx408_101
.Lx408_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx408_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_count2$2F0_ω
                                                                                        jmp   n401_call_proc_staged_α
n400_op11_β:
                                                                                        jmp   proc_count2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              edi, 4
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx410_1
                        lea              rcx, [rip + .Lx410_3]
                        lea              rdx, [rip + .Lx410_4]
                                                                                        jmp   rax
.Lx410_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx410_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx410_2
.Lx410_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx410_2
.Lx410_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx410_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx410_2
.Lx410_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx410_2
.Lx410_1:
                        call             rt_faildescr@PLT
.Lx410_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n403_op11_α
                                                                                        jmp   n402_lit_real_α
n401_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx410_0:
                        .quad            .Lx410_0_s
.Lx410_0_s:
                        .string          "step/0"
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_real_α:
                        mov              qword ptr [rbp + 224], 7
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n404_call_proc_staged_α
.Lx411_0:
                        .quad            4576918229304087675
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
                                                                                        je    proc_count2$2F0_ω
                                                                                        jmp   proc_count2$2F0_ω
n403_op11_β:
                                                                                        jmp   proc_count2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n404_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx414_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx414_21
.Lx414_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx414_21:
                        mov              rdi, qword ptr [rip + .Lx414_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx414_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx414_3]
                        lea              rdx, [rip + .Lx414_4]
                                                                                        jmp   rax
.Lx414_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx414_2
.Lx414_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx414_2
.Lx414_1:
                        call             rt_faildescr@PLT
.Lx414_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n406_call_proc_staged_α
                                                                                        jmp   n405_call_proc_staged_α
n404_call_proc_staged_β:
                                                                                        jmp   n406_call_proc_staged_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "maybe/1"
#-----------------------------------------------------------------------------------------------------------------------
n405_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 7
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx416_1
                        lea              rcx, [rip + .Lx416_3]
                        lea              rdx, [rip + .Lx416_4]
                                                                                        jmp   rax
.Lx416_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx416_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx416_2
.Lx416_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx416_2
.Lx416_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx416_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx416_2
.Lx416_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx416_2
.Lx416_1:
                        call             rt_faildescr@PLT
.Lx416_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n401_call_proc_staged_β
                                                                                        jmp   n406_call_proc_staged_α
n405_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "lshift/0"
#-----------------------------------------------------------------------------------------------------------------------
n406_call_proc_staged_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              edi, 11
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx418_1
                        lea              rcx, [rip + .Lx418_3]
                        lea              rdx, [rip + .Lx418_4]
                                                                                        jmp   rax
.Lx418_3:
                        mov              qword ptr [rbp + 104], rsp
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx418_5
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx418_2
.Lx418_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx418_2
.Lx418_4:
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx418_6
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx418_2
.Lx418_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx418_2
.Lx418_1:
                        call             rt_faildescr@PLT
.Lx418_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n401_call_proc_staged_β
                                                                                        jmp   n407_suspend_α
n406_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   qword ptr [rsp]
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "count2/0"
#-----------------------------------------------------------------------------------------------------------------------
n407_suspend_α:
                        lea              rax, [rip + n407_suspend_β]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_count2$2F0_γ
n407_suspend_β:
                                                                                        jmp   n406_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_count2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_count2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_count2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_count2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 312]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_count2$2F0_ω:
                        mov              rax, [rbp + 320]
                        lea              rsp, [rbp + 336]
                        mov              rbp, [rbp + 328]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_6$2F0_α
proc_pj_dir_6$2F0_α:
                        .global          proc_pj_dir_6$2F0_α
                        .global          proc_pj_dir_6$2F0_β
                        .global          proc_pj_dir_6$2F0_γ
                        .global          proc_pj_dir_6$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_6$2F0_α_body:
                        lea              rax, [rip + n424_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n421_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx426_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx426_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx426_101
.Lx426_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx426_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_6$2F0_ω
                                                                                        jmp   n422_lit_string_α
n421_op11_β:
                                                                                        jmp   proc_pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n423_call_proc_staged_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "cgc"
#-----------------------------------------------------------------------------------------------------------------------
n423_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx429_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx429_21
.Lx429_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx429_21:
                        mov              rdi, qword ptr [rip + .Lx429_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx429_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx429_3]
                        lea              rdx, [rip + .Lx429_4]
                                                                                        jmp   rax
.Lx429_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx429_2
.Lx429_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx429_2
.Lx429_1:
                        call             rt_faildescr@PLT
.Lx429_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n425_op11_α
                                                                                        jmp   n424_suspend_α
n423_call_proc_staged_β:
                                                                                        jmp   n425_op11_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n424_suspend_α:
                        lea              rax, [rip + n424_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_6$2F0_γ
n424_suspend_β:
                                                                                        jmp   n423_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n425_op11_α:
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
                                                                                        je    proc_pj_dir_6$2F0_ω
                                                                                        jmp   proc_pj_dir_6$2F0_ω
n425_op11_β:
                                                                                        jmp   proc_pj_dir_6$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_6$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_6$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_4$2F0_α
proc_pj_dir_4$2F0_α:
                        .global          proc_pj_dir_4$2F0_α
                        .global          proc_pj_dir_4$2F0_β
                        .global          proc_pj_dir_4$2F0_γ
                        .global          proc_pj_dir_4$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n440_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n433_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx441_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx441_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx441_101
.Lx441_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx441_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n434_lit_string_α
n433_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n435_lit_string_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n436_lit_integer_α
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "counter"
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n437_op11_α
.Lx444_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n437_op11_α:
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
                                                                                        je    n439_op11_α
                                                                                        jmp   n438_call_proc_staged_α
n437_op11_β:
                                                                                        jmp   n439_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n438_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx447_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx447_21
.Lx447_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx447_21:
                        mov              rdi, qword ptr [rip + .Lx447_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx447_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx447_3]
                        lea              rdx, [rip + .Lx447_4]
                                                                                        jmp   rax
.Lx447_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx447_2
.Lx447_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx447_2
.Lx447_1:
                        call             rt_faildescr@PLT
.Lx447_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n439_op11_α
                                                                                        jmp   n440_suspend_α
n438_call_proc_staged_β:
                                                                                        jmp   n439_op11_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n439_op11_α:
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
n439_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n440_suspend_α:
                        lea              rax, [rip + n440_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n440_suspend_β:
                                                                                        jmp   n438_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_4$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
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
                        lea              rax, [rip + n457_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n451_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx458_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx458_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx458_101
.Lx458_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx458_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n452_lit_string_α
n451_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n453_lit_string_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n454_op11_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "debug"
#-----------------------------------------------------------------------------------------------------------------------
n454_op11_α:
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
                                                                                        je    n456_op11_α
                                                                                        jmp   n455_call_proc_staged_α
n454_op11_β:
                                                                                        jmp   n456_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n455_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx463_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx463_21
.Lx463_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx463_21:
                        mov              rdi, qword ptr [rip + .Lx463_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx463_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx463_3]
                        lea              rdx, [rip + .Lx463_4]
                                                                                        jmp   rax
.Lx463_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx463_2
.Lx463_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx463_2
.Lx463_1:
                        call             rt_faildescr@PLT
.Lx463_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n456_op11_α
                                                                                        jmp   n457_suspend_α
n455_call_proc_staged_β:
                                                                                        jmp   n456_op11_α
.Lx463_0:
                        .quad            .Lx463_0_s
.Lx463_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n456_op11_α:
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
n456_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n457_suspend_α:
                        lea              rax, [rip + n457_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n457_suspend_β:
                                                                                        jmp   n455_call_proc_staged_β
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
                        lea              rax, [rip + n478_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n467_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx479_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx479_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx479_101
.Lx479_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx479_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n468_lit_string_α
n467_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n469_lit_string_α
.Lx480_0:
                        .quad            .Lx480_0_s
.Lx480_0_s:
                        .string          "test_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n470_lit_string_α
.Lx481_0:
                        .quad            .Lx481_0_s
.Lx481_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n471_lit_string_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n472_lit_integer_α
.Lx483_0:
                        .quad            .Lx483_0_s
.Lx483_0_s:
                        .string          "test_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n473_op11_α
.Lx484_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n473_op11_α:
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
                                                                                        jmp   n474_lit_string_α
n473_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n475_op11_α
.Lx486_0:
                        .quad            .Lx486_0_s
.Lx486_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n475_op11_α:
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
                                                                                        je    n477_op11_α
                                                                                        jmp   n476_call_proc_staged_α
n475_op11_β:
                                                                                        jmp   n477_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n476_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx489_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx489_21
.Lx489_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx489_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx489_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx489_23
.Lx489_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx489_23:
                        mov              rdi, qword ptr [rip + .Lx489_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx489_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx489_3]
                        lea              rdx, [rip + .Lx489_4]
                                                                                        jmp   rax
.Lx489_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx489_2
.Lx489_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx489_2
.Lx489_1:
                        call             rt_faildescr@PLT
.Lx489_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n477_op11_α
                                                                                        jmp   n478_suspend_α
n476_call_proc_staged_β:
                                                                                        jmp   n477_op11_α
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n477_op11_α:
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
n477_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n478_suspend_α:
                        lea              rax, [rip + n478_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n478_suspend_β:
                                                                                        jmp   n476_call_proc_staged_β
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
                        .globl           proc_join$2F1_α
proc_join$2F1_α:
                        .global          proc_join$2F1_α
                        .global          proc_join$2F1_β
                        .global          proc_join$2F1_γ
                        .global          proc_join$2F1_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
proc_join$2F1_α_body:
                        lea              rax, [rip + n506_suspend_β]
                        mov              qword ptr [rbp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n493_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx507_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx507_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx507_101
.Lx507_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx507_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_join$2F1_ω
                                                                                        jmp   n494_var_ref_α
n493_op11_β:
                                                                                        jmp   proc_join$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n495_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n495_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n496_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n496_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        lea              r8, [rbp + 384]
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
                        lea              r9, [rbp + 400]
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
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n498_op11_α
                                                                                        jmp   n497_var_ref_α
n496_op11_β:
                                                                                        jmp   n498_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n499_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n498_op11_α:
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
                                                                                        je    proc_join$2F1_ω
                                                                                        jmp   proc_join$2F1_ω
n498_op11_β:
                                                                                        jmp   proc_join$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n500_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n500_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx519_20
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx519_21
.Lx519_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx519_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx519_22
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx519_23
.Lx519_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx519_23:
                        mov              rdi, qword ptr [rip + .Lx519_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx519_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx519_3]
                        lea              rdx, [rip + .Lx519_4]
                                                                                        jmp   rax
.Lx519_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx519_2
.Lx519_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx519_2
.Lx519_1:
                        call             rt_faildescr@PLT
.Lx519_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n498_op11_α
                                                                                        jmp   n501_lit_string_α
n500_call_proc_staged_β:
                                                                                        jmp   n498_op11_α
.Lx519_0:
                        .quad            .Lx519_0_s
.Lx519_0_s:
                        .string          "thread_join/2"
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n502_var_ref_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n503_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n503_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n504_op11_α
.Lx523_0:
                        .quad            .Lx523_0_s
.Lx523_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n504_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n498_op11_α
                                                                                        jmp   n505_call_proc_staged_α
n504_op11_β:
                                                                                        jmp   n498_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n505_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx526_21
.Lx526_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx526_21:
                        mov              rdi, qword ptr [rip + .Lx526_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx526_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx526_3]
                        lea              rdx, [rip + .Lx526_4]
                                                                                        jmp   rax
.Lx526_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx526_2
.Lx526_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx526_2
.Lx526_1:
                        call             rt_faildescr@PLT
.Lx526_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n500_call_proc_staged_β
                                                                                        jmp   n506_suspend_α
n505_call_proc_staged_β:
                                                                                        jmp   n500_call_proc_staged_β
.Lx526_0:
                        .quad            .Lx526_0_s
.Lx526_0_s:
                        .string          "assertion/1"
#-----------------------------------------------------------------------------------------------------------------------
n506_suspend_α:
                        lea              rax, [rip + n506_suspend_β]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_join$2F1_γ
n506_suspend_β:
                                                                                        jmp   n505_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_join$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_join$2F1_β:
                                                                                        jmp   qword ptr [rbp + 448]
#-----------------------------------------------------------------------------------------------------------------------
proc_join$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_join$2F1_res]
                        push             rax
                        mov              rax, [rbp + 504]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_join$2F1_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_5$2F0_α
proc_pj_dir_5$2F0_α:
                        .global          proc_pj_dir_5$2F0_α
                        .global          proc_pj_dir_5$2F0_β
                        .global          proc_pj_dir_5$2F0_γ
                        .global          proc_pj_dir_5$2F0_ω
                        sub              rsp, 720
                        mov              [rsp + 696], rcx
                        mov              [rsp + 704], rdx
                        mov              [rsp + 712], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 688
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n547_suspend_β]
                        mov              qword ptr [rbp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n529_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx548_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx548_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx548_101
.Lx548_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx548_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n530_lit_string_α
n529_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n531_lit_string_α
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "cgc"
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n532_lit_string_α
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n532_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n533_lit_string_α
.Lx551_0:
                        .quad            .Lx551_0_s
.Lx551_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx552_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n534_op11_α
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n534_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n535_lit_string_α
n534_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n536_lit_string_α
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n537_lit_string_α
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "condition"
#-----------------------------------------------------------------------------------------------------------------------
n537_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n538_lit_string_α
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "current_prolog_flag"
#-----------------------------------------------------------------------------------------------------------------------
n538_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n539_lit_string_α
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "threads"
#-----------------------------------------------------------------------------------------------------------------------
n539_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n540_op11_α
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n540_op11_α:
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
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n541_op11_α
n540_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n541_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n542_lit_string_α
n541_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n543_op11_α
.Lx561_0:
                        .quad            .Lx561_0_s
.Lx561_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n543_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n544_op11_α
n543_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n544_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n546_op11_α
                                                                                        jmp   n545_call_proc_staged_α
n544_op11_β:
                                                                                        jmp   n546_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n545_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx565_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx565_21
.Lx565_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx565_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx565_22
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx565_23
.Lx565_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        call             rt_arg_stage@PLT
.Lx565_23:
                        mov              rdi, qword ptr [rip + .Lx565_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx565_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx565_3]
                        lea              rdx, [rip + .Lx565_4]
                                                                                        jmp   rax
.Lx565_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx565_2
.Lx565_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx565_2
.Lx565_1:
                        call             rt_faildescr@PLT
.Lx565_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n546_op11_α
                                                                                        jmp   n547_suspend_α
n545_call_proc_staged_β:
                                                                                        jmp   n546_op11_α
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "begin_tests/2"
#-----------------------------------------------------------------------------------------------------------------------
n546_op11_α:
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
n546_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n547_suspend_α:
                        lea              rax, [rip + n547_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_5$2F0_γ
n547_suspend_β:
                                                                                        jmp   n545_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_β:
                                                                                        jmp   qword ptr [rbp + 672]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_5$2F0_res]
                        push             rax
                        mov              rax, [rbp + 696]
                        mov              rbp, [rbp + 712]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_ω:
                        mov              rax, [rbp + 704]
                        lea              rsp, [rbp + 720]
                        mov              rbp, [rbp + 712]
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
                        lea              rax, [rip + n575_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n569_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx576_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx576_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx576_101
.Lx576_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx576_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n570_lit_string_α
n569_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n571_lit_string_α
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n572_op11_α
.Lx578_0:
                        .quad            .Lx578_0_s
.Lx578_0_s:
                        .string          "apply"
#-----------------------------------------------------------------------------------------------------------------------
n572_op11_α:
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
                                                                                        je    n574_op11_α
                                                                                        jmp   n573_call_proc_staged_α
n572_op11_β:
                                                                                        jmp   n574_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n573_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx581_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx581_21
.Lx581_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx581_21:
                        mov              rdi, qword ptr [rip + .Lx581_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx581_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx581_3]
                        lea              rdx, [rip + .Lx581_4]
                                                                                        jmp   rax
.Lx581_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx581_2
.Lx581_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx581_2
.Lx581_1:
                        call             rt_faildescr@PLT
.Lx581_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n574_op11_α
                                                                                        jmp   n575_suspend_α
n573_call_proc_staged_β:
                                                                                        jmp   n574_op11_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n574_op11_α:
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
n574_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n575_suspend_α:
                        lea              rax, [rip + n575_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n575_suspend_β:
                                                                                        jmp   n573_call_proc_staged_β
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
                        lea              rax, [rip + n591_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n585_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx592_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx592_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx592_101
.Lx592_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx592_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n586_lit_string_α
n585_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n587_lit_string_α
.Lx593_0:
                        .quad            .Lx593_0_s
.Lx593_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n588_op11_α
.Lx594_0:
                        .quad            .Lx594_0_s
.Lx594_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n588_op11_α:
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
                                                                                        je    n590_op11_α
                                                                                        jmp   n589_call_proc_staged_α
n588_op11_β:
                                                                                        jmp   n590_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n589_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx597_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx597_21
.Lx597_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx597_21:
                        mov              rdi, qword ptr [rip + .Lx597_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx597_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx597_3]
                        lea              rdx, [rip + .Lx597_4]
                                                                                        jmp   rax
.Lx597_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx597_2
.Lx597_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx597_2
.Lx597_1:
                        call             rt_faildescr@PLT
.Lx597_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n590_op11_α
                                                                                        jmp   n591_suspend_α
n589_call_proc_staged_β:
                                                                                        jmp   n590_op11_α
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n590_op11_α:
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
n590_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n591_suspend_α:
                        lea              rax, [rip + n591_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n591_suspend_β:
                                                                                        jmp   n589_call_proc_staged_β
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
                        .globl           proc_$length_$2F3_α
proc_$length_$2F3_α:
                        .global          proc_$length_$2F3_α
                        .global          proc_$length_$2F3_β
                        .global          proc_$length_$2F3_γ
                        .global          proc_$length_$2F3_ω
                        sub              rsp, 1344
                        mov              [rsp + 1320], rcx
                        mov              [rsp + 1328], rdx
                        mov              [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1216
                        mov              edx, 1312
                        call             rt_jmp_frame_lexprep2@PLT
proc_$length_$2F3_α_body:
                        lea              rax, [rip + n626_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
#-----------------------------------------------------------------------------------------------------------------------
n601_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx642_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx642_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx642_101
.Lx642_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx642_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   n602_var_ref_α
n601_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n603_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n604_lit_string_α
.Lx645_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n604_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n605_op11_α
.Lx646_0:
                        .quad            .Lx646_0_s
.Lx646_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n605_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1120]
                        lea              r8, [rbp + 1120]
.Lx647_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx647_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_111
                        cmp              esi, 1
                                                                                        jne   .Lx647_112
                        mov              r8, rax
                                                                                        jmp   .Lx647_110
.Lx647_112:
                        cmp              esi, 2
                                                                                        jne   .Lx647_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx647_111
                        mov              r8, rax
                                                                                        jmp   .Lx647_110
.Lx647_113:
                        cmp              eax, 13
                                                                                        jne   .Lx647_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_111
                        cmp              rax, r8
                                                                                        je    .Lx647_111
                        mov              r8, rax
                                                                                        jmp   .Lx647_110
.Lx647_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx647_114
                        cmp              eax, 99
                                                                                        je    .Lx647_114
                        cmp              eax, 13
                                                                                        jne   .Lx647_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx647_114
                                                                                        jmp   .Lx647_118
.Lx647_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx647_115
                        cmp              eax, 6
                                                                                        je    .Lx647_114
                        cmp              eax, 1
                                                                                        jne   .Lx647_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx647_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx647_114
                                                                                        jmp   .Lx647_116
.Lx647_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx647_117
.Lx647_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx647_117
.Lx647_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx647_117:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n607_var_ref_α
                                                                                        jmp   n606_var_ref_α
n605_op11_β:
                                                                                        jmp   n607_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n606_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n608_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n607_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n609_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n610_op11_α
.Lx652_0:
                        .quad            .Lx652_0_s
.Lx652_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx653_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n611_lit_integer_α
.Lx653_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n610_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              rsi, qword ptr [rip + .Lx654_2]
                                                                                        jmp   .Lx654_3
.Lx654_2:
                        .quad            .Lx654_2_s
.Lx654_2_s:
                        .string          "[]"
.Lx654_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n613_op11_α
                                                                                        jmp   n612_var_ref_α
n610_op11_β:
                                                                                        jmp   n613_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n611_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n614_op11_α
.Lx655_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n612_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n615_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n613_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   n607_var_ref_α
n613_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n614_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 720]
                        lea              r8, [rbp + 720]
.Lx659_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx659_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx659_111
                        cmp              esi, 1
                                                                                        jne   .Lx659_112
                        mov              r8, rax
                                                                                        jmp   .Lx659_110
.Lx659_112:
                        cmp              esi, 2
                                                                                        jne   .Lx659_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx659_111
                        mov              r8, rax
                                                                                        jmp   .Lx659_110
.Lx659_113:
                        cmp              eax, 13
                                                                                        jne   .Lx659_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx659_111
                        cmp              rax, r8
                                                                                        je    .Lx659_111
                        mov              r8, rax
                                                                                        jmp   .Lx659_110
.Lx659_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx659_114
                        cmp              eax, 99
                                                                                        je    .Lx659_114
                        cmp              eax, 13
                                                                                        jne   .Lx659_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx659_114
                                                                                        jmp   .Lx659_118
.Lx659_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx659_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx659_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx659_115
                                                                                        jmp   .Lx659_114
.Lx659_119:
                        cmp              eax, 6
                                                                                        jne   .Lx659_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx659_114
                                                                                        jmp   .Lx659_115
.Lx659_120:
                        cmp              eax, 1
                                                                                        jne   .Lx659_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx659_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx659_114
                                                                                        jmp   .Lx659_115
.Lx659_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx659_117
.Lx659_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx659_117
.Lx659_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx659_117:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n616_var_ref_α
n614_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n615_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n618_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n619_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n617_op11_α:
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
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   proc_$length_$2F3_ω
n617_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n618_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 960]
                        lea              r8, [rbp + 960]
.Lx665_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx665_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx665_41
                        cmp              esi, 1
                                                                                        jne   .Lx665_55
                        mov              r8, rax
                                                                                        jmp   .Lx665_40
.Lx665_55:
                        cmp              esi, 2
                                                                                        jne   .Lx665_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx665_41
                        mov              r8, rax
                                                                                        jmp   .Lx665_40
.Lx665_56:
                        cmp              eax, 13
                                                                                        jne   .Lx665_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx665_41
                        cmp              rax, r8
                                                                                        je    .Lx665_41
                        mov              r8, rax
                                                                                        jmp   .Lx665_40
.Lx665_41:
                        lea              r9, [rbp + 976]
.Lx665_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx665_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx665_43
                        cmp              esi, 1
                                                                                        jne   .Lx665_57
                        mov              r9, rax
                                                                                        jmp   .Lx665_42
.Lx665_57:
                        cmp              esi, 2
                                                                                        jne   .Lx665_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx665_43
                        mov              r9, rax
                                                                                        jmp   .Lx665_42
.Lx665_58:
                        cmp              eax, 13
                                                                                        jne   .Lx665_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx665_43
                        cmp              rax, r9
                                                                                        je    .Lx665_43
                        mov              r9, rax
                                                                                        jmp   .Lx665_42
.Lx665_43:
                        cmp              r8, r9
                                                                                        je    .Lx665_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx665_44
                        cmp              eax, 99
                                                                                        je    .Lx665_44
                        cmp              eax, 13
                                                                                        jne   .Lx665_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx665_44
                                                                                        jmp   .Lx665_45
.Lx665_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx665_53
                        cmp              eax, 99
                                                                                        je    .Lx665_53
                        cmp              eax, 13
                                                                                        jne   .Lx665_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx665_53
                                                                                        jmp   .Lx665_46
.Lx665_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx665_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx665_53
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
                                                                                        jmp   .Lx665_51
.Lx665_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx665_47
                        cmp              eax, 99
                                                                                        je    .Lx665_47
                        cmp              eax, 13
                                                                                        jne   .Lx665_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx665_47
                                                                                        jmp   .Lx665_48
.Lx665_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx665_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx665_53
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
                                                                                        jmp   .Lx665_51
.Lx665_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx665_49
                        cmp              edx, 14
                                                                                        je    .Lx665_53
                                                                                        jmp   .Lx665_52
.Lx665_49:
                        cmp              edx, 14
                                                                                        je    .Lx665_52
                        cmp              ecx, 7
                                                                                        je    .Lx665_53
                        cmp              edx, 7
                                                                                        je    .Lx665_53
                        cmp              ecx, 6
                                                                                        jne   .Lx665_50
                        cmp              edx, 6
                                                                                        jne   .Lx665_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx665_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx665_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx665_51
                                                                                        jmp   .Lx665_52
.Lx665_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx665_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx665_53
.Lx665_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx665_54
.Lx665_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx665_54
.Lx665_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx665_54:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n613_op11_α
                                                                                        jmp   n620_var_ref_α
n618_op11_β:
                                                                                        jmp   n613_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n619_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n621_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n620_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n622_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n623_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n622_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n624_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n623_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
.Lx674_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx674_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx674_61
                        cmp              esi, 1
                                                                                        jne   .Lx674_62
                        mov              r8, rax
                                                                                        jmp   .Lx674_60
.Lx674_62:
                        cmp              esi, 2
                                                                                        jne   .Lx674_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx674_61
                        mov              r8, rax
                                                                                        jmp   .Lx674_60
.Lx674_63:
                        cmp              eax, 13
                                                                                        jne   .Lx674_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx674_61
                        cmp              rax, r8
                                                                                        je    .Lx674_61
                        mov              r8, rax
                                                                                        jmp   .Lx674_60
.Lx674_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx674_80
                        cmp              eax, 99
                                                                                        je    .Lx674_80
                        cmp              eax, 13
                                                                                        jne   .Lx674_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx674_80
                                                                                        jmp   .Lx674_74
.Lx674_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx674_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx674_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx674_73
                        lea              r9, [rbp + 640]
.Lx674_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx674_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx674_65
                        cmp              esi, 1
                                                                                        jne   .Lx674_66
                        mov              r9, rax
                                                                                        jmp   .Lx674_64
.Lx674_66:
                        cmp              esi, 2
                                                                                        jne   .Lx674_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx674_65
                        mov              r9, rax
                                                                                        jmp   .Lx674_64
.Lx674_67:
                        cmp              eax, 13
                                                                                        jne   .Lx674_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx674_65
                        cmp              rax, r9
                                                                                        je    .Lx674_65
                        mov              r9, rax
                                                                                        jmp   .Lx674_64
.Lx674_65:
                        lea              rcx, [rbp + 656]
.Lx674_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx674_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx674_69
                        cmp              esi, 1
                                                                                        jne   .Lx674_70
                        mov              rcx, rax
                                                                                        jmp   .Lx674_68
.Lx674_70:
                        cmp              esi, 2
                                                                                        jne   .Lx674_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx674_69
                        mov              rcx, rax
                                                                                        jmp   .Lx674_68
.Lx674_71:
                        cmp              eax, 13
                                                                                        jne   .Lx674_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx674_69
                        cmp              rax, rcx
                                                                                        je    .Lx674_69
                        mov              rcx, rax
                                                                                        jmp   .Lx674_68
.Lx674_69:
                        cmp              r9, rcx
                                                                                        je    .Lx674_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx674_75
                        cmp              eax, 99
                                                                                        je    .Lx674_75
                        cmp              eax, 13
                                                                                        jne   .Lx674_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx674_75
                                                                                        jmp   .Lx674_72
.Lx674_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx674_76
                        cmp              eax, 99
                                                                                        je    .Lx674_76
                        cmp              eax, 13
                                                                                        jne   .Lx674_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx674_76
                                                                                        jmp   .Lx674_72
.Lx674_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx674_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx674_72
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
                                                                                        jmp   .Lx674_77
.Lx674_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx674_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx674_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx674_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx674_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx674_72
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
                        lea              r9, [rbp + 640]
.Lx674_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx674_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx674_82
                        cmp              esi, 1
                                                                                        jne   .Lx674_83
                        mov              r9, rax
                                                                                        jmp   .Lx674_81
.Lx674_83:
                        cmp              esi, 2
                                                                                        jne   .Lx674_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx674_82
                        mov              r9, rax
                                                                                        jmp   .Lx674_81
.Lx674_84:
                        cmp              eax, 13
                                                                                        jne   .Lx674_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx674_82
                        cmp              rax, r9
                                                                                        je    .Lx674_82
                        mov              r9, rax
                                                                                        jmp   .Lx674_81
.Lx674_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx674_85
                        cmp              eax, 99
                                                                                        je    .Lx674_85
                        cmp              eax, 13
                                                                                        jne   .Lx674_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx674_85
                                                                                        jmp   .Lx674_86
.Lx674_85:
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
                                                                                        jmp   .Lx674_87
.Lx674_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx674_87:
                        lea              rcx, [rbp + 656]
.Lx674_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx674_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx674_89
                        cmp              esi, 1
                                                                                        jne   .Lx674_90
                        mov              rcx, rax
                                                                                        jmp   .Lx674_88
.Lx674_90:
                        cmp              esi, 2
                                                                                        jne   .Lx674_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx674_89
                        mov              rcx, rax
                                                                                        jmp   .Lx674_88
.Lx674_91:
                        cmp              eax, 13
                                                                                        jne   .Lx674_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx674_89
                        cmp              rax, rcx
                                                                                        je    .Lx674_89
                        mov              rcx, rax
                                                                                        jmp   .Lx674_88
.Lx674_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx674_92
                        cmp              eax, 99
                                                                                        je    .Lx674_92
                        cmp              eax, 13
                                                                                        jne   .Lx674_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx674_92
                                                                                        jmp   .Lx674_93
.Lx674_92:
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
                                                                                        jmp   .Lx674_94
.Lx674_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx674_94:
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
                                                                                        jmp   .Lx674_77
.Lx674_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx674_77
.Lx674_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx674_77:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n625_var_ref_α
n623_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n624_op11_α:
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
.Lx675_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx675_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_41
                        cmp              esi, 1
                                                                                        jne   .Lx675_55
                        mov              r8, rax
                                                                                        jmp   .Lx675_40
.Lx675_55:
                        cmp              esi, 2
                                                                                        jne   .Lx675_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx675_41
                        mov              r8, rax
                                                                                        jmp   .Lx675_40
.Lx675_56:
                        cmp              eax, 13
                                                                                        jne   .Lx675_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_41
                        cmp              rax, r8
                                                                                        je    .Lx675_41
                        mov              r8, rax
                                                                                        jmp   .Lx675_40
.Lx675_41:
                        lea              r9, [rbp + 896]
.Lx675_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx675_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_43
                        cmp              esi, 1
                                                                                        jne   .Lx675_57
                        mov              r9, rax
                                                                                        jmp   .Lx675_42
.Lx675_57:
                        cmp              esi, 2
                                                                                        jne   .Lx675_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx675_43
                        mov              r9, rax
                                                                                        jmp   .Lx675_42
.Lx675_58:
                        cmp              eax, 13
                                                                                        jne   .Lx675_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_43
                        cmp              rax, r9
                                                                                        je    .Lx675_43
                        mov              r9, rax
                                                                                        jmp   .Lx675_42
.Lx675_43:
                        cmp              r8, r9
                                                                                        je    .Lx675_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx675_44
                        cmp              eax, 99
                                                                                        je    .Lx675_44
                        cmp              eax, 13
                                                                                        jne   .Lx675_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx675_44
                                                                                        jmp   .Lx675_45
.Lx675_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx675_53
                        cmp              eax, 99
                                                                                        je    .Lx675_53
                        cmp              eax, 13
                                                                                        jne   .Lx675_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx675_53
                                                                                        jmp   .Lx675_46
.Lx675_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx675_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx675_53
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
                                                                                        jmp   .Lx675_51
.Lx675_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx675_47
                        cmp              eax, 99
                                                                                        je    .Lx675_47
                        cmp              eax, 13
                                                                                        jne   .Lx675_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx675_47
                                                                                        jmp   .Lx675_48
.Lx675_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx675_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx675_53
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
                                                                                        jmp   .Lx675_51
.Lx675_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx675_49
                        cmp              edx, 14
                                                                                        je    .Lx675_53
                                                                                        jmp   .Lx675_52
.Lx675_49:
                        cmp              edx, 14
                                                                                        je    .Lx675_52
                        cmp              ecx, 7
                                                                                        je    .Lx675_53
                        cmp              edx, 7
                                                                                        je    .Lx675_53
                        cmp              ecx, 6
                                                                                        jne   .Lx675_50
                        cmp              edx, 6
                                                                                        jne   .Lx675_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx675_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx675_51
                                                                                        jmp   .Lx675_52
.Lx675_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx675_53
.Lx675_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx675_54
.Lx675_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx675_54
.Lx675_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx675_54:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n613_op11_α
                                                                                        jmp   n626_suspend_α
n624_op11_β:
                                                                                        jmp   n613_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n625_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n627_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n626_suspend_α:
                        lea              rax, [rip + n626_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$length_$2F3_γ
n626_suspend_β:
                                                                                        jmp   n613_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n627_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n628_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n628_op11_α:
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
.Lx682_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx682_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx682_41
                        cmp              esi, 1
                                                                                        jne   .Lx682_55
                        mov              r8, rax
                                                                                        jmp   .Lx682_40
.Lx682_55:
                        cmp              esi, 2
                                                                                        jne   .Lx682_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx682_41
                        mov              r8, rax
                                                                                        jmp   .Lx682_40
.Lx682_56:
                        cmp              eax, 13
                                                                                        jne   .Lx682_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx682_41
                        cmp              rax, r8
                                                                                        je    .Lx682_41
                        mov              r8, rax
                                                                                        jmp   .Lx682_40
.Lx682_41:
                        lea              r9, [rbp + 544]
.Lx682_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx682_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx682_43
                        cmp              esi, 1
                                                                                        jne   .Lx682_57
                        mov              r9, rax
                                                                                        jmp   .Lx682_42
.Lx682_57:
                        cmp              esi, 2
                                                                                        jne   .Lx682_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx682_43
                        mov              r9, rax
                                                                                        jmp   .Lx682_42
.Lx682_58:
                        cmp              eax, 13
                                                                                        jne   .Lx682_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx682_43
                        cmp              rax, r9
                                                                                        je    .Lx682_43
                        mov              r9, rax
                                                                                        jmp   .Lx682_42
.Lx682_43:
                        cmp              r8, r9
                                                                                        je    .Lx682_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx682_44
                        cmp              eax, 99
                                                                                        je    .Lx682_44
                        cmp              eax, 13
                                                                                        jne   .Lx682_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx682_44
                                                                                        jmp   .Lx682_45
.Lx682_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx682_53
                        cmp              eax, 99
                                                                                        je    .Lx682_53
                        cmp              eax, 13
                                                                                        jne   .Lx682_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx682_53
                                                                                        jmp   .Lx682_46
.Lx682_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx682_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx682_53
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
                                                                                        jmp   .Lx682_51
.Lx682_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx682_47
                        cmp              eax, 99
                                                                                        je    .Lx682_47
                        cmp              eax, 13
                                                                                        jne   .Lx682_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx682_47
                                                                                        jmp   .Lx682_48
.Lx682_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx682_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx682_53
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
                                                                                        jmp   .Lx682_51
.Lx682_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx682_49
                        cmp              edx, 14
                                                                                        je    .Lx682_53
                                                                                        jmp   .Lx682_52
.Lx682_49:
                        cmp              edx, 14
                                                                                        je    .Lx682_52
                        cmp              ecx, 7
                                                                                        je    .Lx682_53
                        cmp              edx, 7
                                                                                        je    .Lx682_53
                        cmp              ecx, 6
                                                                                        jne   .Lx682_50
                        cmp              edx, 6
                                                                                        jne   .Lx682_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx682_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx682_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx682_51
                                                                                        jmp   .Lx682_52
.Lx682_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx682_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx682_53
.Lx682_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx682_54
.Lx682_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx682_54
.Lx682_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx682_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n629_var_ref_α
n628_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n629_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n630_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n630_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n631_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n631_op11_α:
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
.Lx687_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx687_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx687_41
                        cmp              esi, 1
                                                                                        jne   .Lx687_55
                        mov              r8, rax
                                                                                        jmp   .Lx687_40
.Lx687_55:
                        cmp              esi, 2
                                                                                        jne   .Lx687_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx687_41
                        mov              r8, rax
                                                                                        jmp   .Lx687_40
.Lx687_56:
                        cmp              eax, 13
                                                                                        jne   .Lx687_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx687_41
                        cmp              rax, r8
                                                                                        je    .Lx687_41
                        mov              r8, rax
                                                                                        jmp   .Lx687_40
.Lx687_41:
                        lea              r9, [rbp + 464]
.Lx687_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx687_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx687_43
                        cmp              esi, 1
                                                                                        jne   .Lx687_57
                        mov              r9, rax
                                                                                        jmp   .Lx687_42
.Lx687_57:
                        cmp              esi, 2
                                                                                        jne   .Lx687_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx687_43
                        mov              r9, rax
                                                                                        jmp   .Lx687_42
.Lx687_58:
                        cmp              eax, 13
                                                                                        jne   .Lx687_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx687_43
                        cmp              rax, r9
                                                                                        je    .Lx687_43
                        mov              r9, rax
                                                                                        jmp   .Lx687_42
.Lx687_43:
                        cmp              r8, r9
                                                                                        je    .Lx687_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx687_44
                        cmp              eax, 99
                                                                                        je    .Lx687_44
                        cmp              eax, 13
                                                                                        jne   .Lx687_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx687_44
                                                                                        jmp   .Lx687_45
.Lx687_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx687_53
                        cmp              eax, 99
                                                                                        je    .Lx687_53
                        cmp              eax, 13
                                                                                        jne   .Lx687_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx687_53
                                                                                        jmp   .Lx687_46
.Lx687_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx687_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx687_53
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
                                                                                        jmp   .Lx687_51
.Lx687_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx687_47
                        cmp              eax, 99
                                                                                        je    .Lx687_47
                        cmp              eax, 13
                                                                                        jne   .Lx687_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx687_47
                                                                                        jmp   .Lx687_48
.Lx687_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx687_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx687_53
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
                                                                                        jmp   .Lx687_51
.Lx687_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx687_49
                        cmp              edx, 14
                                                                                        je    .Lx687_53
                                                                                        jmp   .Lx687_52
.Lx687_49:
                        cmp              edx, 14
                                                                                        je    .Lx687_52
                        cmp              ecx, 7
                                                                                        je    .Lx687_53
                        cmp              edx, 7
                                                                                        je    .Lx687_53
                        cmp              ecx, 6
                                                                                        jne   .Lx687_50
                        cmp              edx, 6
                                                                                        jne   .Lx687_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx687_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx687_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx687_51
                                                                                        jmp   .Lx687_52
.Lx687_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx687_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx687_53
.Lx687_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx687_54
.Lx687_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx687_54
.Lx687_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx687_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n632_var_ref_α
n631_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n632_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n633_var_α
#-----------------------------------------------------------------------------------------------------------------------
n633_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n634_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n635_op11_α
.Lx692_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n635_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n636_op11_α
n635_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n636_op11_α:
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
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n637_var_ref_α
n636_op11_β:
                                                                                        jmp   n617_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n637_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n638_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n638_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n639_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n639_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n640_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n640_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx702_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx702_21
.Lx702_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx702_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx702_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx702_23
.Lx702_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx702_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx702_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx702_25
.Lx702_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx702_25:
                        mov              edi, 20
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx702_1
                        lea              rcx, [rip + .Lx702_3]
                        lea              rdx, [rip + .Lx702_4]
                                                                                        jmp   rax
.Lx702_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx702_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx702_2
.Lx702_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx702_2
.Lx702_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx702_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx702_2
.Lx702_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx702_2
.Lx702_1:
                        call             rt_faildescr@PLT
.Lx702_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n617_op11_α
                                                                                        jmp   n641_suspend_α
n640_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx702_0:
                        .quad            .Lx702_0_s
.Lx702_0_s:
                        .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n641_suspend_α:
                        lea              rax, [rip + n641_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$length_$2F3_γ
n641_suspend_β:
                                                                                        jmp   n640_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1216]
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$length_$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1320]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_ω:
                        mov              rax, [rbp + 1328]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_cgc$2F0_α
proc_test_cgc$2F0_α:
                        .global          proc_test_cgc$2F0_α
                        .global          proc_test_cgc$2F0_β
                        .global          proc_test_cgc$2F0_γ
                        .global          proc_test_cgc$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_cgc$2F0_α_body:
                        lea              rax, [rip + n712_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n705_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx713_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx713_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx713_101
.Lx713_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx713_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_cgc$2F0_ω
                                                                                        jmp   n706_lit_string_α
n705_op11_β:
                                                                                        jmp   proc_test_cgc$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n706_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n707_lit_string_α
.Lx714_0:
                        .quad            .Lx714_0_s
.Lx714_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx715_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n708_lit_string_α
.Lx715_0:
                        .quad            .Lx715_0_s
.Lx715_0_s:
                        .string          "cgc"
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n709_op11_α
.Lx716_0:
                        .quad            .Lx716_0_s
.Lx716_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n709_op11_α:
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
                                                                                        je    n711_op11_α
                                                                                        jmp   n710_call_proc_staged_α
n709_op11_β:
                                                                                        jmp   n711_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n710_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx719_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx719_21
.Lx719_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx719_21:
                        mov              rdi, qword ptr [rip + .Lx719_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx719_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx719_3]
                        lea              rdx, [rip + .Lx719_4]
                                                                                        jmp   rax
.Lx719_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx719_2
.Lx719_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx719_2
.Lx719_1:
                        call             rt_faildescr@PLT
.Lx719_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n711_op11_α
                                                                                        jmp   n712_suspend_α
n710_call_proc_staged_β:
                                                                                        jmp   n711_op11_α
.Lx719_0:
                        .quad            .Lx719_0_s
.Lx719_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n711_op11_α:
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
                                                                                        je    proc_test_cgc$2F0_ω
                                                                                        jmp   proc_test_cgc$2F0_ω
n711_op11_β:
                                                                                        jmp   proc_test_cgc$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n712_suspend_α:
                        lea              rax, [rip + n712_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_cgc$2F0_γ
n712_suspend_β:
                                                                                        jmp   n710_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_cgc$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_cgc$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_cgc$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_cgc$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_cgc$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_counter$2F1_α
proc_counter$2F1_α:
                        .global          proc_counter$2F1_α
                        .global          proc_counter$2F1_β
                        .global          proc_counter$2F1_γ
                        .global          proc_counter$2F1_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
proc_counter$2F1_α_body:
                        lea              rax, [rip + n726_suspend_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx727_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n724_var_ref_α
.Lx727_0:
                        .quad            .Lx727_0_s
.Lx727_0_s:
                        .string          "counter"
#-----------------------------------------------------------------------------------------------------------------------
n724_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n725_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n725_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              qword ptr [rbp + 80], 0
.Lx730_60:
                        .section         .rodata
.Lbynamegenfn299:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn299]
                        lea              rsi, [rbp + 48]
                        mov              edx, 2
                        lea              rcx, [rbp + 80]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_counter$2F1_ω
                                                                                        jmp   n726_suspend_α
n725_call_builtin_gen_β:
                                                                                        jmp   .Lx730_60
#-----------------------------------------------------------------------------------------------------------------------
n726_suspend_α:
                        lea              rax, [rip + n726_suspend_β]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_counter$2F1_γ
n726_suspend_β:
                                                                                        jmp   n725_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_counter$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_counter$2F1_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_counter$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_counter$2F1_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_counter$2F1_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "shift_cgc/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_shift_cgc$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "test/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_test$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "step_/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_step_$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 640
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "length/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_length$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "step/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_step$2F0_α]
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
.Lstartup_pname5:       .string          "count_thread/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_count_thread$2F2_α]
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
.Lstartup_pname6:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_test$2F4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "lshift/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_lshift$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "lshift/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_lshift$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 528
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "between/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_between$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "count/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_count$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 848
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "count2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_count2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "pj_dir_6/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_pj_dir_6$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "join/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_join$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "pj_dir_5/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_pj_dir_5$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 688
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "$length_/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_$length_$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1312
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname21:      .string          "test_cgc/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname21]
                        lea              rsi, [rip + proc_test_cgc$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname21]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname22:      .string          "counter/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname22]
                        lea              rsi, [rip + proc_counter$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 144
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname22]
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
n733_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n734_call_proc_staged_α
.Lx735_0:
                        .quad            .Lx735_0_s
.Lx735_0_s:
                        .string          "cgc"
#-----------------------------------------------------------------------------------------------------------------------
n734_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx737_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx737_21
.Lx737_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx737_21:
                        mov              rdi, qword ptr [rip + .Lx737_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx737_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx737_3]
                        lea              rdx, [rip + .Lx737_4]
                                                                                        jmp   rax
.Lx737_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx737_2
.Lx737_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx737_2
.Lx737_1:
                        call             rt_faildescr@PLT
.Lx737_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n734_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx737_0:
                        .quad            .Lx737_0_s
.Lx737_0_s:
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
