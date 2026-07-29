                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sentence$2F2_α
proc_sentence$2F2_α:
                        .global          proc_sentence$2F2_α
                        .global          proc_sentence$2F2_β
                        .global          proc_sentence$2F2_γ
                        .global          proc_sentence$2F2_ω
                        sub              rsp, 592
                        mov              [rsp + 568], rcx
                        mov              [rsp + 576], rdx
                        mov              [rsp + 584], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 496
                        mov              edx, 560
                        call             rt_jmp_frame_lexprep2@PLT
proc_sentence$2F2_α_body:
                        lea              rax, [rip + n14_suspend_β]
                        mov              qword ptr [rbp + 496], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx15_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx15_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx15_101
.Lx15_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx15_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_sentence$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_sentence$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
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
.Lx20_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx20_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx20_41
                        cmp              esi, 1
                                                                                        jne   .Lx20_55
                        mov              r8, rax
                                                                                        jmp   .Lx20_40
.Lx20_55:
                        cmp              esi, 2
                                                                                        jne   .Lx20_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx20_41
                        mov              r8, rax
                                                                                        jmp   .Lx20_40
.Lx20_56:
                        cmp              eax, 13
                                                                                        jne   .Lx20_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx20_41
                        cmp              rax, r8
                                                                                        je    .Lx20_41
                        mov              r8, rax
                                                                                        jmp   .Lx20_40
.Lx20_41:
                        lea              r9, [rbp + 448]
.Lx20_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx20_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx20_43
                        cmp              esi, 1
                                                                                        jne   .Lx20_57
                        mov              r9, rax
                                                                                        jmp   .Lx20_42
.Lx20_57:
                        cmp              esi, 2
                                                                                        jne   .Lx20_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx20_43
                        mov              r9, rax
                                                                                        jmp   .Lx20_42
.Lx20_58:
                        cmp              eax, 13
                                                                                        jne   .Lx20_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx20_43
                        cmp              rax, r9
                                                                                        je    .Lx20_43
                        mov              r9, rax
                                                                                        jmp   .Lx20_42
.Lx20_43:
                        cmp              r8, r9
                                                                                        je    .Lx20_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx20_44
                        cmp              eax, 99
                                                                                        je    .Lx20_44
                        cmp              eax, 13
                                                                                        jne   .Lx20_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx20_44
                                                                                        jmp   .Lx20_45
.Lx20_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx20_53
                        cmp              eax, 99
                                                                                        je    .Lx20_53
                        cmp              eax, 13
                                                                                        jne   .Lx20_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx20_53
                                                                                        jmp   .Lx20_46
.Lx20_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx20_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx20_53
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
                                                                                        jmp   .Lx20_51
.Lx20_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx20_47
                        cmp              eax, 99
                                                                                        je    .Lx20_47
                        cmp              eax, 13
                                                                                        jne   .Lx20_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx20_47
                                                                                        jmp   .Lx20_48
.Lx20_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx20_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx20_53
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
                                                                                        jmp   .Lx20_51
.Lx20_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx20_49
                        cmp              edx, 14
                                                                                        je    .Lx20_53
                                                                                        jmp   .Lx20_52
.Lx20_49:
                        cmp              edx, 14
                                                                                        je    .Lx20_52
                        cmp              ecx, 7
                                                                                        je    .Lx20_53
                        cmp              edx, 7
                                                                                        je    .Lx20_53
                        cmp              ecx, 6
                                                                                        jne   .Lx20_50
                        cmp              edx, 6
                                                                                        jne   .Lx20_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx20_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx20_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx20_51
                                                                                        jmp   .Lx20_52
.Lx20_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx20_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx20_53
.Lx20_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx20_54
.Lx20_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx20_54
.Lx20_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx20_54:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
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
                                                                                        je    proc_sentence$2F2_ω
                                                                                        jmp   proc_sentence$2F2_ω
n5_op11_β:
                                                                                        jmp   proc_sentence$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
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
                        lea              r9, [rbp + 368]
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
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n8_var_ref_α
n7_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n10_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_proc_staged_α:
                        mov              qword ptr [rbp + 272], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx32_20
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx32_21
.Lx32_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx32_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx32_22
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx32_23
.Lx32_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx32_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx32_1
                        lea              rcx, [rip + .Lx32_3]
                        lea              rdx, [rip + .Lx32_4]
                                                                                        jmp   rax
.Lx32_3:
                        mov              qword ptr [rbp + 280], rsp
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx32_5
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx32_2
.Lx32_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx32_2
.Lx32_4:
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx32_6
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx32_2
.Lx32_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx32_2
.Lx32_1:
                        call             rt_faildescr@PLT
.Lx32_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n11_var_ref_α
n10_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 280]
                                                                                        jmp   qword ptr [rsp]
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "noun_phrase/2"
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n13_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx38_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx38_21
.Lx38_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx38_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx38_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx38_23
.Lx38_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx38_23:
                        mov              edi, 2
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx38_1
                        lea              rcx, [rip + .Lx38_3]
                        lea              rdx, [rip + .Lx38_4]
                                                                                        jmp   rax
.Lx38_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx38_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx38_2
.Lx38_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx38_2
.Lx38_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx38_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx38_2
.Lx38_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx38_2
.Lx38_1:
                        call             rt_faildescr@PLT
.Lx38_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n10_call_proc_staged_β
                                                                                        jmp   n14_suspend_α
n13_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "verb_phrase/2"
#-----------------------------------------------------------------------------------------------------------------------
n14_suspend_α:
                        lea              rax, [rip + n14_suspend_β]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sentence$2F2_γ
n14_suspend_β:
                                                                                        jmp   n13_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_sentence$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_sentence$2F2_β:
                                                                                        jmp   qword ptr [rbp + 496]
#-----------------------------------------------------------------------------------------------------------------------
proc_sentence$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_sentence$2F2_res]
                        push             rax
                        mov              rax, [rbp + 568]
                        mov              rbp, [rbp + 584]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_sentence$2F2_ω:
                        mov              rax, [rbp + 576]
                        lea              rsp, [rbp + 592]
                        mov              rbp, [rbp + 584]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_noun$2F2_α
proc_noun$2F2_α:
                        .global          proc_noun$2F2_α
                        .global          proc_noun$2F2_β
                        .global          proc_noun$2F2_γ
                        .global          proc_noun$2F2_ω
                        sub              rsp, 1360
                        mov              [rsp + 1336], rcx
                        mov              [rsp + 1344], rdx
                        mov              [rsp + 1352], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1280
                        mov              edx, 1328
                        call             rt_jmp_frame_lexprep2@PLT
proc_noun$2F2_α_body:
                        lea              rax, [rip + n69_suspend_β]
                        mov              qword ptr [rbp + 1280], rax
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx84_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx84_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx84_101
.Lx84_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx84_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_noun$2F2_ω
                                                                                        jmp   n42_var_ref_α
n41_op11_β:
                                                                                        jmp   proc_noun$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n43_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1216]
                        lea              r8, [rbp + 1216]
.Lx89_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx89_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx89_41
                        cmp              esi, 1
                                                                                        jne   .Lx89_55
                        mov              r8, rax
                                                                                        jmp   .Lx89_40
.Lx89_55:
                        cmp              esi, 2
                                                                                        jne   .Lx89_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx89_41
                        mov              r8, rax
                                                                                        jmp   .Lx89_40
.Lx89_56:
                        cmp              eax, 13
                                                                                        jne   .Lx89_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx89_41
                        cmp              rax, r8
                                                                                        je    .Lx89_41
                        mov              r8, rax
                                                                                        jmp   .Lx89_40
.Lx89_41:
                        lea              r9, [rbp + 1232]
.Lx89_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx89_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx89_43
                        cmp              esi, 1
                                                                                        jne   .Lx89_57
                        mov              r9, rax
                                                                                        jmp   .Lx89_42
.Lx89_57:
                        cmp              esi, 2
                                                                                        jne   .Lx89_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx89_43
                        mov              r9, rax
                                                                                        jmp   .Lx89_42
.Lx89_58:
                        cmp              eax, 13
                                                                                        jne   .Lx89_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx89_43
                        cmp              rax, r9
                                                                                        je    .Lx89_43
                        mov              r9, rax
                                                                                        jmp   .Lx89_42
.Lx89_43:
                        cmp              r8, r9
                                                                                        je    .Lx89_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx89_44
                        cmp              eax, 99
                                                                                        je    .Lx89_44
                        cmp              eax, 13
                                                                                        jne   .Lx89_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx89_44
                                                                                        jmp   .Lx89_45
.Lx89_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx89_53
                        cmp              eax, 99
                                                                                        je    .Lx89_53
                        cmp              eax, 13
                                                                                        jne   .Lx89_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx89_53
                                                                                        jmp   .Lx89_46
.Lx89_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx89_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx89_53
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
                                                                                        jmp   .Lx89_51
.Lx89_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx89_47
                        cmp              eax, 99
                                                                                        je    .Lx89_47
                        cmp              eax, 13
                                                                                        jne   .Lx89_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx89_47
                                                                                        jmp   .Lx89_48
.Lx89_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx89_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx89_53
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
                                                                                        jmp   .Lx89_51
.Lx89_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx89_49
                        cmp              edx, 14
                                                                                        je    .Lx89_53
                                                                                        jmp   .Lx89_52
.Lx89_49:
                        cmp              edx, 14
                                                                                        je    .Lx89_52
                        cmp              ecx, 7
                                                                                        je    .Lx89_53
                        cmp              edx, 7
                                                                                        je    .Lx89_53
                        cmp              ecx, 6
                                                                                        jne   .Lx89_50
                        cmp              edx, 6
                                                                                        jne   .Lx89_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx89_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx89_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx89_51
                                                                                        jmp   .Lx89_52
.Lx89_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx89_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx89_53
.Lx89_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx89_54
.Lx89_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx89_54
.Lx89_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx89_54:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n46_op11_α
                                                                                        jmp   n45_var_ref_α
n44_op11_β:
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n47_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    proc_noun$2F2_ω
                                                                                        jmp   n48_var_ref_α
n46_op11_β:
                                                                                        jmp   proc_noun$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n49_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n50_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1136]
                        lea              r8, [rbp + 1136]
.Lx97_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx97_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_41
                        cmp              esi, 1
                                                                                        jne   .Lx97_55
                        mov              r8, rax
                                                                                        jmp   .Lx97_40
.Lx97_55:
                        cmp              esi, 2
                                                                                        jne   .Lx97_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx97_41
                        mov              r8, rax
                                                                                        jmp   .Lx97_40
.Lx97_56:
                        cmp              eax, 13
                                                                                        jne   .Lx97_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_41
                        cmp              rax, r8
                                                                                        je    .Lx97_41
                        mov              r8, rax
                                                                                        jmp   .Lx97_40
.Lx97_41:
                        lea              r9, [rbp + 1152]
.Lx97_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx97_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_43
                        cmp              esi, 1
                                                                                        jne   .Lx97_57
                        mov              r9, rax
                                                                                        jmp   .Lx97_42
.Lx97_57:
                        cmp              esi, 2
                                                                                        jne   .Lx97_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx97_43
                        mov              r9, rax
                                                                                        jmp   .Lx97_42
.Lx97_58:
                        cmp              eax, 13
                                                                                        jne   .Lx97_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_43
                        cmp              rax, r9
                                                                                        je    .Lx97_43
                        mov              r9, rax
                                                                                        jmp   .Lx97_42
.Lx97_43:
                        cmp              r8, r9
                                                                                        je    .Lx97_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx97_44
                        cmp              eax, 99
                                                                                        je    .Lx97_44
                        cmp              eax, 13
                                                                                        jne   .Lx97_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx97_44
                                                                                        jmp   .Lx97_45
.Lx97_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx97_53
                        cmp              eax, 99
                                                                                        je    .Lx97_53
                        cmp              eax, 13
                                                                                        jne   .Lx97_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx97_53
                                                                                        jmp   .Lx97_46
.Lx97_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx97_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx97_53
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
                                                                                        jmp   .Lx97_51
.Lx97_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx97_47
                        cmp              eax, 99
                                                                                        je    .Lx97_47
                        cmp              eax, 13
                                                                                        jne   .Lx97_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx97_47
                                                                                        jmp   .Lx97_48
.Lx97_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx97_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx97_53
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
                                                                                        jmp   .Lx97_51
.Lx97_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx97_49
                        cmp              edx, 14
                                                                                        je    .Lx97_53
                                                                                        jmp   .Lx97_52
.Lx97_49:
                        cmp              edx, 14
                                                                                        je    .Lx97_52
                        cmp              ecx, 7
                                                                                        je    .Lx97_53
                        cmp              edx, 7
                                                                                        je    .Lx97_53
                        cmp              ecx, 6
                                                                                        jne   .Lx97_50
                        cmp              edx, 6
                                                                                        jne   .Lx97_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx97_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx97_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx97_51
                                                                                        jmp   .Lx97_52
.Lx97_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx97_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx97_53
.Lx97_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx97_54
.Lx97_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx97_54
.Lx97_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx97_54:
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n46_op11_α
                                                                                        jmp   n51_var_ref_α
n49_op11_β:
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
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
.Lx102_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx102_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx102_41
                        cmp              esi, 1
                                                                                        jne   .Lx102_55
                        mov              r8, rax
                                                                                        jmp   .Lx102_40
.Lx102_55:
                        cmp              esi, 2
                                                                                        jne   .Lx102_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx102_41
                        mov              r8, rax
                                                                                        jmp   .Lx102_40
.Lx102_56:
                        cmp              eax, 13
                                                                                        jne   .Lx102_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx102_41
                        cmp              rax, r8
                                                                                        je    .Lx102_41
                        mov              r8, rax
                                                                                        jmp   .Lx102_40
.Lx102_41:
                        lea              r9, [rbp + 832]
.Lx102_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx102_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx102_43
                        cmp              esi, 1
                                                                                        jne   .Lx102_57
                        mov              r9, rax
                                                                                        jmp   .Lx102_42
.Lx102_57:
                        cmp              esi, 2
                                                                                        jne   .Lx102_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx102_43
                        mov              r9, rax
                                                                                        jmp   .Lx102_42
.Lx102_58:
                        cmp              eax, 13
                                                                                        jne   .Lx102_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx102_43
                        cmp              rax, r9
                                                                                        je    .Lx102_43
                        mov              r9, rax
                                                                                        jmp   .Lx102_42
.Lx102_43:
                        cmp              r8, r9
                                                                                        je    .Lx102_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx102_44
                        cmp              eax, 99
                                                                                        je    .Lx102_44
                        cmp              eax, 13
                                                                                        jne   .Lx102_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx102_44
                                                                                        jmp   .Lx102_45
.Lx102_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx102_53
                        cmp              eax, 99
                                                                                        je    .Lx102_53
                        cmp              eax, 13
                                                                                        jne   .Lx102_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx102_53
                                                                                        jmp   .Lx102_46
.Lx102_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx102_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx102_53
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
                                                                                        jmp   .Lx102_51
.Lx102_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx102_47
                        cmp              eax, 99
                                                                                        je    .Lx102_47
                        cmp              eax, 13
                                                                                        jne   .Lx102_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx102_47
                                                                                        jmp   .Lx102_48
.Lx102_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx102_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx102_53
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
                                                                                        jmp   .Lx102_51
.Lx102_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx102_49
                        cmp              edx, 14
                                                                                        je    .Lx102_53
                                                                                        jmp   .Lx102_52
.Lx102_49:
                        cmp              edx, 14
                                                                                        je    .Lx102_52
                        cmp              ecx, 7
                                                                                        je    .Lx102_53
                        cmp              edx, 7
                                                                                        je    .Lx102_53
                        cmp              ecx, 6
                                                                                        jne   .Lx102_50
                        cmp              edx, 6
                                                                                        jne   .Lx102_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx102_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx102_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx102_51
                                                                                        jmp   .Lx102_52
.Lx102_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx102_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx102_53
.Lx102_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx102_54
.Lx102_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx102_54
.Lx102_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx102_54:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n55_op11_α
                                                                                        jmp   n54_var_ref_α
n52_op11_β:
                                                                                        jmp   n55_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n56_lit_string_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n57_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    proc_noun$2F2_ω
                                                                                        jmp   n58_var_ref_α
n55_op11_β:
                                                                                        jmp   proc_noun$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n59_var_ref_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n60_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n62_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
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
.Lx114_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx114_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_41
                        cmp              esi, 1
                                                                                        jne   .Lx114_55
                        mov              r8, rax
                                                                                        jmp   .Lx114_40
.Lx114_55:
                        cmp              esi, 2
                                                                                        jne   .Lx114_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx114_41
                        mov              r8, rax
                                                                                        jmp   .Lx114_40
.Lx114_56:
                        cmp              eax, 13
                                                                                        jne   .Lx114_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_41
                        cmp              rax, r8
                                                                                        je    .Lx114_41
                        mov              r8, rax
                                                                                        jmp   .Lx114_40
.Lx114_41:
                        lea              r9, [rbp + 752]
.Lx114_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx114_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_43
                        cmp              esi, 1
                                                                                        jne   .Lx114_57
                        mov              r9, rax
                                                                                        jmp   .Lx114_42
.Lx114_57:
                        cmp              esi, 2
                                                                                        jne   .Lx114_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx114_43
                        mov              r9, rax
                                                                                        jmp   .Lx114_42
.Lx114_58:
                        cmp              eax, 13
                                                                                        jne   .Lx114_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_43
                        cmp              rax, r9
                                                                                        je    .Lx114_43
                        mov              r9, rax
                                                                                        jmp   .Lx114_42
.Lx114_43:
                        cmp              r8, r9
                                                                                        je    .Lx114_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx114_44
                        cmp              eax, 99
                                                                                        je    .Lx114_44
                        cmp              eax, 13
                                                                                        jne   .Lx114_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx114_44
                                                                                        jmp   .Lx114_45
.Lx114_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx114_53
                        cmp              eax, 99
                                                                                        je    .Lx114_53
                        cmp              eax, 13
                                                                                        jne   .Lx114_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx114_53
                                                                                        jmp   .Lx114_46
.Lx114_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx114_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx114_53
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
                                                                                        jmp   .Lx114_51
.Lx114_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx114_47
                        cmp              eax, 99
                                                                                        je    .Lx114_47
                        cmp              eax, 13
                                                                                        jne   .Lx114_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx114_47
                                                                                        jmp   .Lx114_48
.Lx114_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx114_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx114_53
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
                                                                                        jmp   .Lx114_51
.Lx114_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx114_49
                        cmp              edx, 14
                                                                                        je    .Lx114_53
                                                                                        jmp   .Lx114_52
.Lx114_49:
                        cmp              edx, 14
                                                                                        je    .Lx114_52
                        cmp              ecx, 7
                                                                                        je    .Lx114_53
                        cmp              edx, 7
                                                                                        je    .Lx114_53
                        cmp              ecx, 6
                                                                                        jne   .Lx114_50
                        cmp              edx, 6
                                                                                        jne   .Lx114_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx114_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx114_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx114_51
                                                                                        jmp   .Lx114_52
.Lx114_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx114_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx114_53
.Lx114_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx114_54
.Lx114_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx114_54
.Lx114_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx114_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n55_op11_α
                                                                                        jmp   n63_var_ref_α
n60_op11_β:
                                                                                        jmp   n55_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
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
                                                                                        je    n46_op11_α
                                                                                        jmp   n65_op11_α
n62_op11_β:
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
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
                        lea              r9, [rbp + 432]
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
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n68_op11_α
                                                                                        jmp   n67_var_ref_α
n64_op11_β:
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
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
.Lx121_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx121_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx121_41
                        cmp              esi, 1
                                                                                        jne   .Lx121_55
                        mov              r8, rax
                                                                                        jmp   .Lx121_40
.Lx121_55:
                        cmp              esi, 2
                                                                                        jne   .Lx121_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx121_41
                        mov              r8, rax
                                                                                        jmp   .Lx121_40
.Lx121_56:
                        cmp              eax, 13
                                                                                        jne   .Lx121_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx121_41
                        cmp              rax, r8
                                                                                        je    .Lx121_41
                        mov              r8, rax
                                                                                        jmp   .Lx121_40
.Lx121_41:
                        lea              r9, [rbp + 960]
.Lx121_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx121_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx121_43
                        cmp              esi, 1
                                                                                        jne   .Lx121_57
                        mov              r9, rax
                                                                                        jmp   .Lx121_42
.Lx121_57:
                        cmp              esi, 2
                                                                                        jne   .Lx121_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx121_43
                        mov              r9, rax
                                                                                        jmp   .Lx121_42
.Lx121_58:
                        cmp              eax, 13
                                                                                        jne   .Lx121_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx121_43
                        cmp              rax, r9
                                                                                        je    .Lx121_43
                        mov              r9, rax
                                                                                        jmp   .Lx121_42
.Lx121_43:
                        cmp              r8, r9
                                                                                        je    .Lx121_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx121_44
                        cmp              eax, 99
                                                                                        je    .Lx121_44
                        cmp              eax, 13
                                                                                        jne   .Lx121_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx121_44
                                                                                        jmp   .Lx121_45
.Lx121_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx121_53
                        cmp              eax, 99
                                                                                        je    .Lx121_53
                        cmp              eax, 13
                                                                                        jne   .Lx121_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx121_53
                                                                                        jmp   .Lx121_46
.Lx121_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx121_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx121_53
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
                                                                                        jmp   .Lx121_51
.Lx121_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx121_47
                        cmp              eax, 99
                                                                                        je    .Lx121_47
                        cmp              eax, 13
                                                                                        jne   .Lx121_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx121_47
                                                                                        jmp   .Lx121_48
.Lx121_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx121_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx121_53
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
                                                                                        jmp   .Lx121_51
.Lx121_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx121_49
                        cmp              edx, 14
                                                                                        je    .Lx121_53
                                                                                        jmp   .Lx121_52
.Lx121_49:
                        cmp              edx, 14
                                                                                        je    .Lx121_52
                        cmp              ecx, 7
                                                                                        je    .Lx121_53
                        cmp              edx, 7
                                                                                        je    .Lx121_53
                        cmp              ecx, 6
                                                                                        jne   .Lx121_50
                        cmp              edx, 6
                                                                                        jne   .Lx121_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx121_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx121_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx121_51
                                                                                        jmp   .Lx121_52
.Lx121_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx121_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx121_53
.Lx121_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx121_54
.Lx121_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx121_54
.Lx121_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx121_54:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n46_op11_α
                                                                                        jmp   n69_suspend_α
n65_op11_β:
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n70_lit_string_α
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n71_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
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
                                                                                        je    proc_noun$2F2_ω
                                                                                        jmp   proc_noun$2F2_ω
n68_op11_β:
                                                                                        jmp   proc_noun$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_suspend_α:
                        lea              rax, [rip + n69_suspend_β]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_noun$2F2_γ
n69_suspend_β:
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n72_var_ref_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "dog"
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n74_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
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
.Lx133_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx133_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_41
                        cmp              esi, 1
                                                                                        jne   .Lx133_55
                        mov              r8, rax
                                                                                        jmp   .Lx133_40
.Lx133_55:
                        cmp              esi, 2
                                                                                        jne   .Lx133_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx133_41
                        mov              r8, rax
                                                                                        jmp   .Lx133_40
.Lx133_56:
                        cmp              eax, 13
                                                                                        jne   .Lx133_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_41
                        cmp              rax, r8
                                                                                        je    .Lx133_41
                        mov              r8, rax
                                                                                        jmp   .Lx133_40
.Lx133_41:
                        lea              r9, [rbp + 352]
.Lx133_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx133_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_43
                        cmp              esi, 1
                                                                                        jne   .Lx133_57
                        mov              r9, rax
                                                                                        jmp   .Lx133_42
.Lx133_57:
                        cmp              esi, 2
                                                                                        jne   .Lx133_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx133_43
                        mov              r9, rax
                                                                                        jmp   .Lx133_42
.Lx133_58:
                        cmp              eax, 13
                                                                                        jne   .Lx133_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_43
                        cmp              rax, r9
                                                                                        je    .Lx133_43
                        mov              r9, rax
                                                                                        jmp   .Lx133_42
.Lx133_43:
                        cmp              r8, r9
                                                                                        je    .Lx133_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx133_44
                        cmp              eax, 99
                                                                                        je    .Lx133_44
                        cmp              eax, 13
                                                                                        jne   .Lx133_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx133_44
                                                                                        jmp   .Lx133_45
.Lx133_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx133_53
                        cmp              eax, 99
                                                                                        je    .Lx133_53
                        cmp              eax, 13
                                                                                        jne   .Lx133_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx133_53
                                                                                        jmp   .Lx133_46
.Lx133_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx133_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx133_53
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
                                                                                        jmp   .Lx133_51
.Lx133_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx133_47
                        cmp              eax, 99
                                                                                        je    .Lx133_47
                        cmp              eax, 13
                                                                                        jne   .Lx133_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx133_47
                                                                                        jmp   .Lx133_48
.Lx133_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx133_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx133_53
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
                                                                                        jmp   .Lx133_51
.Lx133_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx133_49
                        cmp              edx, 14
                                                                                        je    .Lx133_53
                                                                                        jmp   .Lx133_52
.Lx133_49:
                        cmp              edx, 14
                                                                                        je    .Lx133_52
                        cmp              ecx, 7
                                                                                        je    .Lx133_53
                        cmp              edx, 7
                                                                                        je    .Lx133_53
                        cmp              ecx, 6
                                                                                        jne   .Lx133_50
                        cmp              edx, 6
                                                                                        jne   .Lx133_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx133_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx133_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx133_51
                                                                                        jmp   .Lx133_52
.Lx133_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx133_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx133_53
.Lx133_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx133_54
.Lx133_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx133_54
.Lx133_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx133_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n68_op11_α
                                                                                        jmp   n75_var_ref_α
n73_op11_β:
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n55_op11_α
                                                                                        jmp   n76_op11_α
n74_op11_β:
                                                                                        jmp   n55_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n77_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 544]
                        lea              r8, [rbp + 544]
.Lx137_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx137_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_41
                        cmp              esi, 1
                                                                                        jne   .Lx137_55
                        mov              r8, rax
                                                                                        jmp   .Lx137_40
.Lx137_55:
                        cmp              esi, 2
                                                                                        jne   .Lx137_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx137_41
                        mov              r8, rax
                                                                                        jmp   .Lx137_40
.Lx137_56:
                        cmp              eax, 13
                                                                                        jne   .Lx137_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_41
                        cmp              rax, r8
                                                                                        je    .Lx137_41
                        mov              r8, rax
                                                                                        jmp   .Lx137_40
.Lx137_41:
                        lea              r9, [rbp + 560]
.Lx137_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx137_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_43
                        cmp              esi, 1
                                                                                        jne   .Lx137_57
                        mov              r9, rax
                                                                                        jmp   .Lx137_42
.Lx137_57:
                        cmp              esi, 2
                                                                                        jne   .Lx137_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx137_43
                        mov              r9, rax
                                                                                        jmp   .Lx137_42
.Lx137_58:
                        cmp              eax, 13
                                                                                        jne   .Lx137_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_43
                        cmp              rax, r9
                                                                                        je    .Lx137_43
                        mov              r9, rax
                                                                                        jmp   .Lx137_42
.Lx137_43:
                        cmp              r8, r9
                                                                                        je    .Lx137_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx137_44
                        cmp              eax, 99
                                                                                        je    .Lx137_44
                        cmp              eax, 13
                                                                                        jne   .Lx137_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx137_44
                                                                                        jmp   .Lx137_45
.Lx137_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx137_53
                        cmp              eax, 99
                                                                                        je    .Lx137_53
                        cmp              eax, 13
                                                                                        jne   .Lx137_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx137_53
                                                                                        jmp   .Lx137_46
.Lx137_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx137_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx137_53
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
                                                                                        jmp   .Lx137_51
.Lx137_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx137_47
                        cmp              eax, 99
                                                                                        je    .Lx137_47
                        cmp              eax, 13
                                                                                        jne   .Lx137_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx137_47
                                                                                        jmp   .Lx137_48
.Lx137_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx137_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx137_53
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
                                                                                        jmp   .Lx137_51
.Lx137_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx137_49
                        cmp              edx, 14
                                                                                        je    .Lx137_53
                                                                                        jmp   .Lx137_52
.Lx137_49:
                        cmp              edx, 14
                                                                                        je    .Lx137_52
                        cmp              ecx, 7
                                                                                        je    .Lx137_53
                        cmp              edx, 7
                                                                                        je    .Lx137_53
                        cmp              ecx, 6
                                                                                        jne   .Lx137_50
                        cmp              edx, 6
                                                                                        jne   .Lx137_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx137_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx137_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx137_51
                                                                                        jmp   .Lx137_52
.Lx137_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx137_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx137_53
.Lx137_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx137_54
.Lx137_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx137_54
.Lx137_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx137_54:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n55_op11_α
                                                                                        jmp   n78_suspend_α
n76_op11_β:
                                                                                        jmp   n55_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n79_lit_string_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n78_suspend_α:
                        lea              rax, [rip + n78_suspend_β]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_noun$2F2_γ
n78_suspend_β:
                                                                                        jmp   n55_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n80_var_ref_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "mouse"
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n81_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n68_op11_α
                                                                                        jmp   n82_op11_α
n81_op11_β:
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx145_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx145_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx145_41
                        cmp              esi, 1
                                                                                        jne   .Lx145_55
                        mov              r8, rax
                                                                                        jmp   .Lx145_40
.Lx145_55:
                        cmp              esi, 2
                                                                                        jne   .Lx145_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx145_41
                        mov              r8, rax
                                                                                        jmp   .Lx145_40
.Lx145_56:
                        cmp              eax, 13
                                                                                        jne   .Lx145_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx145_41
                        cmp              rax, r8
                                                                                        je    .Lx145_41
                        mov              r8, rax
                                                                                        jmp   .Lx145_40
.Lx145_41:
                        lea              r9, [rbp + 160]
.Lx145_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx145_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx145_43
                        cmp              esi, 1
                                                                                        jne   .Lx145_57
                        mov              r9, rax
                                                                                        jmp   .Lx145_42
.Lx145_57:
                        cmp              esi, 2
                                                                                        jne   .Lx145_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx145_43
                        mov              r9, rax
                                                                                        jmp   .Lx145_42
.Lx145_58:
                        cmp              eax, 13
                                                                                        jne   .Lx145_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx145_43
                        cmp              rax, r9
                                                                                        je    .Lx145_43
                        mov              r9, rax
                                                                                        jmp   .Lx145_42
.Lx145_43:
                        cmp              r8, r9
                                                                                        je    .Lx145_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx145_44
                        cmp              eax, 99
                                                                                        je    .Lx145_44
                        cmp              eax, 13
                                                                                        jne   .Lx145_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx145_44
                                                                                        jmp   .Lx145_45
.Lx145_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx145_53
                        cmp              eax, 99
                                                                                        je    .Lx145_53
                        cmp              eax, 13
                                                                                        jne   .Lx145_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx145_53
                                                                                        jmp   .Lx145_46
.Lx145_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx145_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx145_53
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
                                                                                        jmp   .Lx145_51
.Lx145_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx145_47
                        cmp              eax, 99
                                                                                        je    .Lx145_47
                        cmp              eax, 13
                                                                                        jne   .Lx145_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx145_47
                                                                                        jmp   .Lx145_48
.Lx145_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx145_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx145_53
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
                                                                                        jmp   .Lx145_51
.Lx145_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx145_49
                        cmp              edx, 14
                                                                                        je    .Lx145_53
                                                                                        jmp   .Lx145_52
.Lx145_49:
                        cmp              edx, 14
                                                                                        je    .Lx145_52
                        cmp              ecx, 7
                                                                                        je    .Lx145_53
                        cmp              edx, 7
                                                                                        je    .Lx145_53
                        cmp              ecx, 6
                                                                                        jne   .Lx145_50
                        cmp              edx, 6
                                                                                        jne   .Lx145_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx145_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx145_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx145_51
                                                                                        jmp   .Lx145_52
.Lx145_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx145_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx145_53
.Lx145_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx145_54
.Lx145_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx145_54
.Lx145_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx145_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n68_op11_α
                                                                                        jmp   n83_suspend_α
n82_op11_β:
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_suspend_α:
                        lea              rax, [rip + n83_suspend_β]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_noun$2F2_γ
n83_suspend_β:
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_noun$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_noun$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1280]
#-----------------------------------------------------------------------------------------------------------------------
proc_noun$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_noun$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1336]
                        mov              rbp, [rbp + 1352]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_noun$2F2_ω:
                        mov              rax, [rbp + 1344]
                        lea              rsp, [rbp + 1360]
                        mov              rbp, [rbp + 1352]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_verb_phrase$2F2_α
proc_verb_phrase$2F2_α:
                        .global          proc_verb_phrase$2F2_α
                        .global          proc_verb_phrase$2F2_β
                        .global          proc_verb_phrase$2F2_γ
                        .global          proc_verb_phrase$2F2_ω
                        sub              rsp, 896
                        mov              [rsp + 872], rcx
                        mov              [rsp + 880], rdx
                        mov              [rsp + 888], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 800
                        mov              edx, 864
                        call             rt_jmp_frame_lexprep2@PLT
proc_verb_phrase$2F2_α_body:
                        lea              rax, [rip + n171_suspend_β]
                        mov              qword ptr [rbp + 800], rax
#-----------------------------------------------------------------------------------------------------------------------
n148_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx174_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx174_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx174_101
.Lx174_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx174_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_verb_phrase$2F2_ω
                                                                                        jmp   n149_var_ref_α
n148_op11_β:
                                                                                        jmp   proc_verb_phrase$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n151_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n151_op11_α:
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
.Lx179_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx179_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx179_41
                        cmp              esi, 1
                                                                                        jne   .Lx179_55
                        mov              r8, rax
                                                                                        jmp   .Lx179_40
.Lx179_55:
                        cmp              esi, 2
                                                                                        jne   .Lx179_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx179_41
                        mov              r8, rax
                                                                                        jmp   .Lx179_40
.Lx179_56:
                        cmp              eax, 13
                                                                                        jne   .Lx179_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx179_41
                        cmp              rax, r8
                                                                                        je    .Lx179_41
                        mov              r8, rax
                                                                                        jmp   .Lx179_40
.Lx179_41:
                        lea              r9, [rbp + 752]
.Lx179_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx179_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx179_43
                        cmp              esi, 1
                                                                                        jne   .Lx179_57
                        mov              r9, rax
                                                                                        jmp   .Lx179_42
.Lx179_57:
                        cmp              esi, 2
                                                                                        jne   .Lx179_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx179_43
                        mov              r9, rax
                                                                                        jmp   .Lx179_42
.Lx179_58:
                        cmp              eax, 13
                                                                                        jne   .Lx179_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx179_43
                        cmp              rax, r9
                                                                                        je    .Lx179_43
                        mov              r9, rax
                                                                                        jmp   .Lx179_42
.Lx179_43:
                        cmp              r8, r9
                                                                                        je    .Lx179_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx179_44
                        cmp              eax, 99
                                                                                        je    .Lx179_44
                        cmp              eax, 13
                                                                                        jne   .Lx179_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx179_44
                                                                                        jmp   .Lx179_45
.Lx179_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx179_53
                        cmp              eax, 99
                                                                                        je    .Lx179_53
                        cmp              eax, 13
                                                                                        jne   .Lx179_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx179_53
                                                                                        jmp   .Lx179_46
.Lx179_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx179_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx179_53
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
                                                                                        jmp   .Lx179_51
.Lx179_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx179_47
                        cmp              eax, 99
                                                                                        je    .Lx179_47
                        cmp              eax, 13
                                                                                        jne   .Lx179_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx179_47
                                                                                        jmp   .Lx179_48
.Lx179_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx179_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx179_53
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
                                                                                        jmp   .Lx179_51
.Lx179_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx179_49
                        cmp              edx, 14
                                                                                        je    .Lx179_53
                                                                                        jmp   .Lx179_52
.Lx179_49:
                        cmp              edx, 14
                                                                                        je    .Lx179_52
                        cmp              ecx, 7
                                                                                        je    .Lx179_53
                        cmp              edx, 7
                                                                                        je    .Lx179_53
                        cmp              ecx, 6
                                                                                        jne   .Lx179_50
                        cmp              edx, 6
                                                                                        jne   .Lx179_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx179_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx179_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx179_51
                                                                                        jmp   .Lx179_52
.Lx179_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx179_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx179_53
.Lx179_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx179_54
.Lx179_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx179_54
.Lx179_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx179_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n153_op11_α
                                                                                        jmp   n152_var_ref_α
n151_op11_β:
                                                                                        jmp   n153_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n153_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    proc_verb_phrase$2F2_ω
                                                                                        jmp   n155_var_ref_α
n153_op11_β:
                                                                                        jmp   proc_verb_phrase$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n156_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n156_op11_α:
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
.Lx187_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx187_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx187_41
                        cmp              esi, 1
                                                                                        jne   .Lx187_55
                        mov              r8, rax
                                                                                        jmp   .Lx187_40
.Lx187_55:
                        cmp              esi, 2
                                                                                        jne   .Lx187_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx187_41
                        mov              r8, rax
                                                                                        jmp   .Lx187_40
.Lx187_56:
                        cmp              eax, 13
                                                                                        jne   .Lx187_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx187_41
                        cmp              rax, r8
                                                                                        je    .Lx187_41
                        mov              r8, rax
                                                                                        jmp   .Lx187_40
.Lx187_41:
                        lea              r9, [rbp + 672]
.Lx187_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx187_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx187_43
                        cmp              esi, 1
                                                                                        jne   .Lx187_57
                        mov              r9, rax
                                                                                        jmp   .Lx187_42
.Lx187_57:
                        cmp              esi, 2
                                                                                        jne   .Lx187_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx187_43
                        mov              r9, rax
                                                                                        jmp   .Lx187_42
.Lx187_58:
                        cmp              eax, 13
                                                                                        jne   .Lx187_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx187_43
                        cmp              rax, r9
                                                                                        je    .Lx187_43
                        mov              r9, rax
                                                                                        jmp   .Lx187_42
.Lx187_43:
                        cmp              r8, r9
                                                                                        je    .Lx187_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx187_44
                        cmp              eax, 99
                                                                                        je    .Lx187_44
                        cmp              eax, 13
                                                                                        jne   .Lx187_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx187_44
                                                                                        jmp   .Lx187_45
.Lx187_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx187_53
                        cmp              eax, 99
                                                                                        je    .Lx187_53
                        cmp              eax, 13
                                                                                        jne   .Lx187_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx187_53
                                                                                        jmp   .Lx187_46
.Lx187_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx187_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx187_53
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
                                                                                        jmp   .Lx187_51
.Lx187_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx187_47
                        cmp              eax, 99
                                                                                        je    .Lx187_47
                        cmp              eax, 13
                                                                                        jne   .Lx187_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx187_47
                                                                                        jmp   .Lx187_48
.Lx187_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx187_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx187_53
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
                                                                                        jmp   .Lx187_51
.Lx187_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx187_49
                        cmp              edx, 14
                                                                                        je    .Lx187_53
                                                                                        jmp   .Lx187_52
.Lx187_49:
                        cmp              edx, 14
                                                                                        je    .Lx187_52
                        cmp              ecx, 7
                                                                                        je    .Lx187_53
                        cmp              edx, 7
                                                                                        je    .Lx187_53
                        cmp              ecx, 6
                                                                                        jne   .Lx187_50
                        cmp              edx, 6
                                                                                        jne   .Lx187_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx187_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx187_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx187_51
                                                                                        jmp   .Lx187_52
.Lx187_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx187_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx187_53
.Lx187_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx187_54
.Lx187_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx187_54
.Lx187_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx187_54:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n153_op11_α
                                                                                        jmp   n158_var_ref_α
n156_op11_β:
                                                                                        jmp   n153_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n159_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n160_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n159_op11_α:
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
.Lx192_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx192_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_41
                        cmp              esi, 1
                                                                                        jne   .Lx192_55
                        mov              r8, rax
                                                                                        jmp   .Lx192_40
.Lx192_55:
                        cmp              esi, 2
                                                                                        jne   .Lx192_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx192_41
                        mov              r8, rax
                                                                                        jmp   .Lx192_40
.Lx192_56:
                        cmp              eax, 13
                                                                                        jne   .Lx192_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_41
                        cmp              rax, r8
                                                                                        je    .Lx192_41
                        mov              r8, rax
                                                                                        jmp   .Lx192_40
.Lx192_41:
                        lea              r9, [rbp + 336]
.Lx192_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx192_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_43
                        cmp              esi, 1
                                                                                        jne   .Lx192_57
                        mov              r9, rax
                                                                                        jmp   .Lx192_42
.Lx192_57:
                        cmp              esi, 2
                                                                                        jne   .Lx192_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx192_43
                        mov              r9, rax
                                                                                        jmp   .Lx192_42
.Lx192_58:
                        cmp              eax, 13
                                                                                        jne   .Lx192_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_43
                        cmp              rax, r9
                                                                                        je    .Lx192_43
                        mov              r9, rax
                                                                                        jmp   .Lx192_42
.Lx192_43:
                        cmp              r8, r9
                                                                                        je    .Lx192_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx192_44
                        cmp              eax, 99
                                                                                        je    .Lx192_44
                        cmp              eax, 13
                                                                                        jne   .Lx192_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx192_44
                                                                                        jmp   .Lx192_45
.Lx192_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx192_53
                        cmp              eax, 99
                                                                                        je    .Lx192_53
                        cmp              eax, 13
                                                                                        jne   .Lx192_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx192_53
                                                                                        jmp   .Lx192_46
.Lx192_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx192_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx192_53
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
                                                                                        jmp   .Lx192_51
.Lx192_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx192_47
                        cmp              eax, 99
                                                                                        je    .Lx192_47
                        cmp              eax, 13
                                                                                        jne   .Lx192_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx192_47
                                                                                        jmp   .Lx192_48
.Lx192_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx192_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx192_53
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
                                                                                        jmp   .Lx192_51
.Lx192_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx192_49
                        cmp              edx, 14
                                                                                        je    .Lx192_53
                                                                                        jmp   .Lx192_52
.Lx192_49:
                        cmp              edx, 14
                                                                                        je    .Lx192_52
                        cmp              ecx, 7
                                                                                        je    .Lx192_53
                        cmp              edx, 7
                                                                                        je    .Lx192_53
                        cmp              ecx, 6
                                                                                        jne   .Lx192_50
                        cmp              edx, 6
                                                                                        jne   .Lx192_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx192_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx192_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx192_51
                                                                                        jmp   .Lx192_52
.Lx192_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx192_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx192_53
.Lx192_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx192_54
.Lx192_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx192_54
.Lx192_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx192_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n162_op11_α
                                                                                        jmp   n161_var_ref_α
n159_op11_β:
                                                                                        jmp   n162_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n163_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_op11_α:
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
                                                                                        je    proc_verb_phrase$2F2_ω
                                                                                        jmp   proc_verb_phrase$2F2_ω
n162_op11_β:
                                                                                        jmp   proc_verb_phrase$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n163_call_proc_staged_α:
                        mov              qword ptr [rbp + 576], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx199_20
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx199_21
.Lx199_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             rt_arg_stage@PLT
.Lx199_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx199_22
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx199_23
.Lx199_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx199_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx199_1
                        lea              rcx, [rip + .Lx199_3]
                        lea              rdx, [rip + .Lx199_4]
                                                                                        jmp   rax
.Lx199_3:
                        mov              qword ptr [rbp + 584], rsp
                        mov              rax, qword ptr [rbp + 576]
                        test             rax, rax
                                                                                        jne   .Lx199_5
                        mov              qword ptr [rbp + 576], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx199_2
.Lx199_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx199_2
.Lx199_4:
                        mov              rax, qword ptr [rbp + 576]
                        test             rax, rax
                                                                                        jne   .Lx199_6
                        mov              qword ptr [rbp + 576], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx199_2
.Lx199_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx199_2
.Lx199_1:
                        call             rt_faildescr@PLT
.Lx199_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n153_op11_α
                                                                                        jmp   n165_var_ref_α
n163_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 584]
                                                                                        jmp   qword ptr [rsp]
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "verb/2"
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n166_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n167_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n166_op11_α:
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
.Lx204_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_41
                        cmp              esi, 1
                                                                                        jne   .Lx204_55
                        mov              r8, rax
                                                                                        jmp   .Lx204_40
.Lx204_55:
                        cmp              esi, 2
                                                                                        jne   .Lx204_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_41
                        mov              r8, rax
                                                                                        jmp   .Lx204_40
.Lx204_56:
                        cmp              eax, 13
                                                                                        jne   .Lx204_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_41
                        cmp              rax, r8
                                                                                        je    .Lx204_41
                        mov              r8, rax
                                                                                        jmp   .Lx204_40
.Lx204_41:
                        lea              r9, [rbp + 256]
.Lx204_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_43
                        cmp              esi, 1
                                                                                        jne   .Lx204_57
                        mov              r9, rax
                                                                                        jmp   .Lx204_42
.Lx204_57:
                        cmp              esi, 2
                                                                                        jne   .Lx204_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_43
                        mov              r9, rax
                                                                                        jmp   .Lx204_42
.Lx204_58:
                        cmp              eax, 13
                                                                                        jne   .Lx204_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_43
                        cmp              rax, r9
                                                                                        je    .Lx204_43
                        mov              r9, rax
                                                                                        jmp   .Lx204_42
.Lx204_43:
                        cmp              r8, r9
                                                                                        je    .Lx204_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_44
                        cmp              eax, 99
                                                                                        je    .Lx204_44
                        cmp              eax, 13
                                                                                        jne   .Lx204_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx204_44
                                                                                        jmp   .Lx204_45
.Lx204_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_53
                        cmp              eax, 99
                                                                                        je    .Lx204_53
                        cmp              eax, 13
                                                                                        jne   .Lx204_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx204_53
                                                                                        jmp   .Lx204_46
.Lx204_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx204_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx204_53
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
                                                                                        jmp   .Lx204_51
.Lx204_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_47
                        cmp              eax, 99
                                                                                        je    .Lx204_47
                        cmp              eax, 13
                                                                                        jne   .Lx204_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx204_47
                                                                                        jmp   .Lx204_48
.Lx204_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx204_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx204_53
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
                                                                                        jmp   .Lx204_51
.Lx204_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx204_49
                        cmp              edx, 14
                                                                                        je    .Lx204_53
                                                                                        jmp   .Lx204_52
.Lx204_49:
                        cmp              edx, 14
                                                                                        je    .Lx204_52
                        cmp              ecx, 7
                                                                                        je    .Lx204_53
                        cmp              edx, 7
                                                                                        je    .Lx204_53
                        cmp              ecx, 6
                                                                                        jne   .Lx204_50
                        cmp              edx, 6
                                                                                        jne   .Lx204_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx204_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx204_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx204_51
                                                                                        jmp   .Lx204_52
.Lx204_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx204_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx204_53
.Lx204_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx204_54
.Lx204_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx204_54
.Lx204_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx204_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n162_op11_α
                                                                                        jmp   n168_var_ref_α
n166_op11_β:
                                                                                        jmp   n162_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n169_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n170_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_proc_staged_α:
                        mov              qword ptr [rbp + 464], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx210_20
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx210_21
.Lx210_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx210_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx210_22
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx210_23
.Lx210_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        call             rt_arg_stage@PLT
.Lx210_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx210_1
                        lea              rcx, [rip + .Lx210_3]
                        lea              rdx, [rip + .Lx210_4]
                                                                                        jmp   rax
.Lx210_3:
                        mov              qword ptr [rbp + 472], rsp
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax
                                                                                        jne   .Lx210_5
                        mov              qword ptr [rbp + 464], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx210_2
.Lx210_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx210_2
.Lx210_4:
                        mov              rax, qword ptr [rbp + 464]
                        test             rax, rax
                                                                                        jne   .Lx210_6
                        mov              qword ptr [rbp + 464], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx210_2
.Lx210_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx210_2
.Lx210_1:
                        call             rt_faildescr@PLT
.Lx210_2:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n163_call_proc_staged_β
                                                                                        jmp   n171_suspend_α
n169_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 472]
                                                                                        jmp   qword ptr [rsp]
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "noun_phrase/2"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n172_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n171_suspend_α:
                        lea              rax, [rip + n171_suspend_β]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_verb_phrase$2F2_γ
n171_suspend_β:
                                                                                        jmp   n169_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n172_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx216_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx216_21
.Lx216_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx216_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx216_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx216_23
.Lx216_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx216_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx216_1
                        lea              rcx, [rip + .Lx216_3]
                        lea              rdx, [rip + .Lx216_4]
                                                                                        jmp   rax
.Lx216_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx216_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx216_2
.Lx216_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx216_2
.Lx216_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx216_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx216_2
.Lx216_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx216_2
.Lx216_1:
                        call             rt_faildescr@PLT
.Lx216_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n162_op11_α
                                                                                        jmp   n173_suspend_α
n172_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "verb/2"
#-----------------------------------------------------------------------------------------------------------------------
n173_suspend_α:
                        lea              rax, [rip + n173_suspend_β]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_verb_phrase$2F2_γ
n173_suspend_β:
                                                                                        jmp   n172_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_verb_phrase$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_verb_phrase$2F2_β:
                                                                                        jmp   qword ptr [rbp + 800]
#-----------------------------------------------------------------------------------------------------------------------
proc_verb_phrase$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_verb_phrase$2F2_res]
                        push             rax
                        mov              rax, [rbp + 872]
                        mov              rbp, [rbp + 888]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_verb_phrase$2F2_ω:
                        mov              rax, [rbp + 880]
                        lea              rsp, [rbp + 896]
                        mov              rbp, [rbp + 888]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_verb$2F2_α
proc_verb$2F2_α:
                        .global          proc_verb$2F2_α
                        .global          proc_verb$2F2_β
                        .global          proc_verb$2F2_γ
                        .global          proc_verb$2F2_ω
                        sub              rsp, 960
                        mov              [rsp + 936], rcx
                        mov              [rsp + 944], rdx
                        mov              [rsp + 952], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 880
                        mov              edx, 928
                        call             rt_jmp_frame_lexprep2@PLT
proc_verb$2F2_α_body:
                        lea              rax, [rip + n242_suspend_β]
                        mov              qword ptr [rbp + 880], rax
#-----------------------------------------------------------------------------------------------------------------------
n219_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx248_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx248_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx248_101
.Lx248_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx248_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_verb$2F2_ω
                                                                                        jmp   n220_var_ref_α
n219_op11_β:
                                                                                        jmp   proc_verb$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n221_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n222_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n222_op11_α:
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
.Lx253_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx253_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx253_41
                        cmp              esi, 1
                                                                                        jne   .Lx253_55
                        mov              r8, rax
                                                                                        jmp   .Lx253_40
.Lx253_55:
                        cmp              esi, 2
                                                                                        jne   .Lx253_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx253_41
                        mov              r8, rax
                                                                                        jmp   .Lx253_40
.Lx253_56:
                        cmp              eax, 13
                                                                                        jne   .Lx253_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx253_41
                        cmp              rax, r8
                                                                                        je    .Lx253_41
                        mov              r8, rax
                                                                                        jmp   .Lx253_40
.Lx253_41:
                        lea              r9, [rbp + 832]
.Lx253_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx253_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx253_43
                        cmp              esi, 1
                                                                                        jne   .Lx253_57
                        mov              r9, rax
                                                                                        jmp   .Lx253_42
.Lx253_57:
                        cmp              esi, 2
                                                                                        jne   .Lx253_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx253_43
                        mov              r9, rax
                                                                                        jmp   .Lx253_42
.Lx253_58:
                        cmp              eax, 13
                                                                                        jne   .Lx253_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx253_43
                        cmp              rax, r9
                                                                                        je    .Lx253_43
                        mov              r9, rax
                                                                                        jmp   .Lx253_42
.Lx253_43:
                        cmp              r8, r9
                                                                                        je    .Lx253_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx253_44
                        cmp              eax, 99
                                                                                        je    .Lx253_44
                        cmp              eax, 13
                                                                                        jne   .Lx253_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx253_44
                                                                                        jmp   .Lx253_45
.Lx253_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx253_53
                        cmp              eax, 99
                                                                                        je    .Lx253_53
                        cmp              eax, 13
                                                                                        jne   .Lx253_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx253_53
                                                                                        jmp   .Lx253_46
.Lx253_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx253_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx253_53
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
                                                                                        jmp   .Lx253_51
.Lx253_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx253_47
                        cmp              eax, 99
                                                                                        je    .Lx253_47
                        cmp              eax, 13
                                                                                        jne   .Lx253_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx253_47
                                                                                        jmp   .Lx253_48
.Lx253_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx253_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx253_53
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
                                                                                        jmp   .Lx253_51
.Lx253_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx253_49
                        cmp              edx, 14
                                                                                        je    .Lx253_53
                                                                                        jmp   .Lx253_52
.Lx253_49:
                        cmp              edx, 14
                                                                                        je    .Lx253_52
                        cmp              ecx, 7
                                                                                        je    .Lx253_53
                        cmp              edx, 7
                                                                                        je    .Lx253_53
                        cmp              ecx, 6
                                                                                        jne   .Lx253_50
                        cmp              edx, 6
                                                                                        jne   .Lx253_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx253_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx253_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx253_51
                                                                                        jmp   .Lx253_52
.Lx253_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx253_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx253_53
.Lx253_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx253_54
.Lx253_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx253_54
.Lx253_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx253_54:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n223_var_ref_α
n222_op11_β:
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n225_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n224_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    proc_verb$2F2_ω
                                                                                        jmp   n226_var_ref_α
n224_op11_β:
                                                                                        jmp   proc_verb$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n227_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n228_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n227_op11_α:
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
.Lx261_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx261_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx261_41
                        cmp              esi, 1
                                                                                        jne   .Lx261_55
                        mov              r8, rax
                                                                                        jmp   .Lx261_40
.Lx261_55:
                        cmp              esi, 2
                                                                                        jne   .Lx261_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx261_41
                        mov              r8, rax
                                                                                        jmp   .Lx261_40
.Lx261_56:
                        cmp              eax, 13
                                                                                        jne   .Lx261_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx261_41
                        cmp              rax, r8
                                                                                        je    .Lx261_41
                        mov              r8, rax
                                                                                        jmp   .Lx261_40
.Lx261_41:
                        lea              r9, [rbp + 752]
.Lx261_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx261_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx261_43
                        cmp              esi, 1
                                                                                        jne   .Lx261_57
                        mov              r9, rax
                                                                                        jmp   .Lx261_42
.Lx261_57:
                        cmp              esi, 2
                                                                                        jne   .Lx261_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx261_43
                        mov              r9, rax
                                                                                        jmp   .Lx261_42
.Lx261_58:
                        cmp              eax, 13
                                                                                        jne   .Lx261_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx261_43
                        cmp              rax, r9
                                                                                        je    .Lx261_43
                        mov              r9, rax
                                                                                        jmp   .Lx261_42
.Lx261_43:
                        cmp              r8, r9
                                                                                        je    .Lx261_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx261_44
                        cmp              eax, 99
                                                                                        je    .Lx261_44
                        cmp              eax, 13
                                                                                        jne   .Lx261_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx261_44
                                                                                        jmp   .Lx261_45
.Lx261_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx261_53
                        cmp              eax, 99
                                                                                        je    .Lx261_53
                        cmp              eax, 13
                                                                                        jne   .Lx261_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx261_53
                                                                                        jmp   .Lx261_46
.Lx261_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx261_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx261_53
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
                                                                                        jmp   .Lx261_51
.Lx261_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx261_47
                        cmp              eax, 99
                                                                                        je    .Lx261_47
                        cmp              eax, 13
                                                                                        jne   .Lx261_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx261_47
                                                                                        jmp   .Lx261_48
.Lx261_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx261_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx261_53
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
                                                                                        jmp   .Lx261_51
.Lx261_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx261_49
                        cmp              edx, 14
                                                                                        je    .Lx261_53
                                                                                        jmp   .Lx261_52
.Lx261_49:
                        cmp              edx, 14
                                                                                        je    .Lx261_52
                        cmp              ecx, 7
                                                                                        je    .Lx261_53
                        cmp              edx, 7
                                                                                        je    .Lx261_53
                        cmp              ecx, 6
                                                                                        jne   .Lx261_50
                        cmp              edx, 6
                                                                                        jne   .Lx261_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx261_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx261_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx261_51
                                                                                        jmp   .Lx261_52
.Lx261_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx261_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx261_53
.Lx261_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx261_54
.Lx261_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx261_54
.Lx261_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx261_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n229_var_ref_α
n227_op11_β:
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n230_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n231_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n230_op11_α:
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
.Lx266_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx266_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx266_41
                        cmp              esi, 1
                                                                                        jne   .Lx266_55
                        mov              r8, rax
                                                                                        jmp   .Lx266_40
.Lx266_55:
                        cmp              esi, 2
                                                                                        jne   .Lx266_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx266_41
                        mov              r8, rax
                                                                                        jmp   .Lx266_40
.Lx266_56:
                        cmp              eax, 13
                                                                                        jne   .Lx266_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx266_41
                        cmp              rax, r8
                                                                                        je    .Lx266_41
                        mov              r8, rax
                                                                                        jmp   .Lx266_40
.Lx266_41:
                        lea              r9, [rbp + 432]
.Lx266_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx266_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx266_43
                        cmp              esi, 1
                                                                                        jne   .Lx266_57
                        mov              r9, rax
                                                                                        jmp   .Lx266_42
.Lx266_57:
                        cmp              esi, 2
                                                                                        jne   .Lx266_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx266_43
                        mov              r9, rax
                                                                                        jmp   .Lx266_42
.Lx266_58:
                        cmp              eax, 13
                                                                                        jne   .Lx266_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx266_43
                        cmp              rax, r9
                                                                                        je    .Lx266_43
                        mov              r9, rax
                                                                                        jmp   .Lx266_42
.Lx266_43:
                        cmp              r8, r9
                                                                                        je    .Lx266_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx266_44
                        cmp              eax, 99
                                                                                        je    .Lx266_44
                        cmp              eax, 13
                                                                                        jne   .Lx266_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx266_44
                                                                                        jmp   .Lx266_45
.Lx266_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx266_53
                        cmp              eax, 99
                                                                                        je    .Lx266_53
                        cmp              eax, 13
                                                                                        jne   .Lx266_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx266_53
                                                                                        jmp   .Lx266_46
.Lx266_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx266_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx266_53
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
                                                                                        jmp   .Lx266_51
.Lx266_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx266_47
                        cmp              eax, 99
                                                                                        je    .Lx266_47
                        cmp              eax, 13
                                                                                        jne   .Lx266_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx266_47
                                                                                        jmp   .Lx266_48
.Lx266_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx266_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx266_53
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
                                                                                        jmp   .Lx266_51
.Lx266_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx266_49
                        cmp              edx, 14
                                                                                        je    .Lx266_53
                                                                                        jmp   .Lx266_52
.Lx266_49:
                        cmp              edx, 14
                                                                                        je    .Lx266_52
                        cmp              ecx, 7
                                                                                        je    .Lx266_53
                        cmp              edx, 7
                                                                                        je    .Lx266_53
                        cmp              ecx, 6
                                                                                        jne   .Lx266_50
                        cmp              edx, 6
                                                                                        jne   .Lx266_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx266_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx266_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx266_51
                                                                                        jmp   .Lx266_52
.Lx266_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx266_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx266_53
.Lx266_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx266_54
.Lx266_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx266_54
.Lx266_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx266_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n233_op11_α
                                                                                        jmp   n232_var_ref_α
n230_op11_β:
                                                                                        jmp   n233_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n234_lit_string_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n235_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n233_op11_α:
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
                                                                                        je    proc_verb$2F2_ω
                                                                                        jmp   proc_verb$2F2_ω
n233_op11_β:
                                                                                        jmp   proc_verb$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n236_var_ref_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "chases"
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n237_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n238_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n237_op11_α:
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
.Lx276_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx276_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_41
                        cmp              esi, 1
                                                                                        jne   .Lx276_55
                        mov              r8, rax
                                                                                        jmp   .Lx276_40
.Lx276_55:
                        cmp              esi, 2
                                                                                        jne   .Lx276_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx276_41
                        mov              r8, rax
                                                                                        jmp   .Lx276_40
.Lx276_56:
                        cmp              eax, 13
                                                                                        jne   .Lx276_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_41
                        cmp              rax, r8
                                                                                        je    .Lx276_41
                        mov              r8, rax
                                                                                        jmp   .Lx276_40
.Lx276_41:
                        lea              r9, [rbp + 352]
.Lx276_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx276_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_43
                        cmp              esi, 1
                                                                                        jne   .Lx276_57
                        mov              r9, rax
                                                                                        jmp   .Lx276_42
.Lx276_57:
                        cmp              esi, 2
                                                                                        jne   .Lx276_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx276_43
                        mov              r9, rax
                                                                                        jmp   .Lx276_42
.Lx276_58:
                        cmp              eax, 13
                                                                                        jne   .Lx276_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx276_43
                        cmp              rax, r9
                                                                                        je    .Lx276_43
                        mov              r9, rax
                                                                                        jmp   .Lx276_42
.Lx276_43:
                        cmp              r8, r9
                                                                                        je    .Lx276_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx276_44
                        cmp              eax, 99
                                                                                        je    .Lx276_44
                        cmp              eax, 13
                                                                                        jne   .Lx276_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx276_44
                                                                                        jmp   .Lx276_45
.Lx276_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx276_53
                        cmp              eax, 99
                                                                                        je    .Lx276_53
                        cmp              eax, 13
                                                                                        jne   .Lx276_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx276_53
                                                                                        jmp   .Lx276_46
.Lx276_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx276_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx276_53
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
                                                                                        jmp   .Lx276_51
.Lx276_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx276_47
                        cmp              eax, 99
                                                                                        je    .Lx276_47
                        cmp              eax, 13
                                                                                        jne   .Lx276_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx276_47
                                                                                        jmp   .Lx276_48
.Lx276_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx276_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx276_53
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
                                                                                        jmp   .Lx276_51
.Lx276_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx276_49
                        cmp              edx, 14
                                                                                        je    .Lx276_53
                                                                                        jmp   .Lx276_52
.Lx276_49:
                        cmp              edx, 14
                                                                                        je    .Lx276_52
                        cmp              ecx, 7
                                                                                        je    .Lx276_53
                        cmp              edx, 7
                                                                                        je    .Lx276_53
                        cmp              ecx, 6
                                                                                        jne   .Lx276_50
                        cmp              edx, 6
                                                                                        jne   .Lx276_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx276_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx276_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx276_51
                                                                                        jmp   .Lx276_52
.Lx276_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx276_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx276_53
.Lx276_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx276_54
.Lx276_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx276_54
.Lx276_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx276_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n233_op11_α
                                                                                        jmp   n239_var_ref_α
n237_op11_β:
                                                                                        jmp   n233_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n238_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n240_op11_α
n238_op11_β:
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n241_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n240_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 544]
                        lea              r8, [rbp + 544]
.Lx280_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx280_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx280_41
                        cmp              esi, 1
                                                                                        jne   .Lx280_55
                        mov              r8, rax
                                                                                        jmp   .Lx280_40
.Lx280_55:
                        cmp              esi, 2
                                                                                        jne   .Lx280_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx280_41
                        mov              r8, rax
                                                                                        jmp   .Lx280_40
.Lx280_56:
                        cmp              eax, 13
                                                                                        jne   .Lx280_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx280_41
                        cmp              rax, r8
                                                                                        je    .Lx280_41
                        mov              r8, rax
                                                                                        jmp   .Lx280_40
.Lx280_41:
                        lea              r9, [rbp + 560]
.Lx280_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx280_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx280_43
                        cmp              esi, 1
                                                                                        jne   .Lx280_57
                        mov              r9, rax
                                                                                        jmp   .Lx280_42
.Lx280_57:
                        cmp              esi, 2
                                                                                        jne   .Lx280_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx280_43
                        mov              r9, rax
                                                                                        jmp   .Lx280_42
.Lx280_58:
                        cmp              eax, 13
                                                                                        jne   .Lx280_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx280_43
                        cmp              rax, r9
                                                                                        je    .Lx280_43
                        mov              r9, rax
                                                                                        jmp   .Lx280_42
.Lx280_43:
                        cmp              r8, r9
                                                                                        je    .Lx280_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx280_44
                        cmp              eax, 99
                                                                                        je    .Lx280_44
                        cmp              eax, 13
                                                                                        jne   .Lx280_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx280_44
                                                                                        jmp   .Lx280_45
.Lx280_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx280_53
                        cmp              eax, 99
                                                                                        je    .Lx280_53
                        cmp              eax, 13
                                                                                        jne   .Lx280_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx280_53
                                                                                        jmp   .Lx280_46
.Lx280_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx280_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx280_53
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
                                                                                        jmp   .Lx280_51
.Lx280_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx280_47
                        cmp              eax, 99
                                                                                        je    .Lx280_47
                        cmp              eax, 13
                                                                                        jne   .Lx280_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx280_47
                                                                                        jmp   .Lx280_48
.Lx280_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx280_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx280_53
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
                                                                                        jmp   .Lx280_51
.Lx280_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx280_49
                        cmp              edx, 14
                                                                                        je    .Lx280_53
                                                                                        jmp   .Lx280_52
.Lx280_49:
                        cmp              edx, 14
                                                                                        je    .Lx280_52
                        cmp              ecx, 7
                                                                                        je    .Lx280_53
                        cmp              edx, 7
                                                                                        je    .Lx280_53
                        cmp              ecx, 6
                                                                                        jne   .Lx280_50
                        cmp              edx, 6
                                                                                        jne   .Lx280_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx280_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx280_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx280_51
                                                                                        jmp   .Lx280_52
.Lx280_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx280_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx280_53
.Lx280_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx280_54
.Lx280_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx280_54
.Lx280_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx280_54:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n224_op11_α
                                                                                        jmp   n242_suspend_α
n240_op11_β:
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n243_lit_string_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n242_suspend_α:
                        lea              rax, [rip + n242_suspend_β]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_verb$2F2_γ
n242_suspend_β:
                                                                                        jmp   n224_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n244_var_ref_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "sees"
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n245_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n245_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n233_op11_α
                                                                                        jmp   n246_op11_α
n245_op11_β:
                                                                                        jmp   n233_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n246_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx288_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx288_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx288_41
                        cmp              esi, 1
                                                                                        jne   .Lx288_55
                        mov              r8, rax
                                                                                        jmp   .Lx288_40
.Lx288_55:
                        cmp              esi, 2
                                                                                        jne   .Lx288_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx288_41
                        mov              r8, rax
                                                                                        jmp   .Lx288_40
.Lx288_56:
                        cmp              eax, 13
                                                                                        jne   .Lx288_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx288_41
                        cmp              rax, r8
                                                                                        je    .Lx288_41
                        mov              r8, rax
                                                                                        jmp   .Lx288_40
.Lx288_41:
                        lea              r9, [rbp + 160]
.Lx288_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx288_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx288_43
                        cmp              esi, 1
                                                                                        jne   .Lx288_57
                        mov              r9, rax
                                                                                        jmp   .Lx288_42
.Lx288_57:
                        cmp              esi, 2
                                                                                        jne   .Lx288_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx288_43
                        mov              r9, rax
                                                                                        jmp   .Lx288_42
.Lx288_58:
                        cmp              eax, 13
                                                                                        jne   .Lx288_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx288_43
                        cmp              rax, r9
                                                                                        je    .Lx288_43
                        mov              r9, rax
                                                                                        jmp   .Lx288_42
.Lx288_43:
                        cmp              r8, r9
                                                                                        je    .Lx288_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx288_44
                        cmp              eax, 99
                                                                                        je    .Lx288_44
                        cmp              eax, 13
                                                                                        jne   .Lx288_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx288_44
                                                                                        jmp   .Lx288_45
.Lx288_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx288_53
                        cmp              eax, 99
                                                                                        je    .Lx288_53
                        cmp              eax, 13
                                                                                        jne   .Lx288_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx288_53
                                                                                        jmp   .Lx288_46
.Lx288_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx288_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx288_53
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
                                                                                        jmp   .Lx288_51
.Lx288_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx288_47
                        cmp              eax, 99
                                                                                        je    .Lx288_47
                        cmp              eax, 13
                                                                                        jne   .Lx288_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx288_47
                                                                                        jmp   .Lx288_48
.Lx288_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx288_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx288_53
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
                                                                                        jmp   .Lx288_51
.Lx288_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx288_49
                        cmp              edx, 14
                                                                                        je    .Lx288_53
                                                                                        jmp   .Lx288_52
.Lx288_49:
                        cmp              edx, 14
                                                                                        je    .Lx288_52
                        cmp              ecx, 7
                                                                                        je    .Lx288_53
                        cmp              edx, 7
                                                                                        je    .Lx288_53
                        cmp              ecx, 6
                                                                                        jne   .Lx288_50
                        cmp              edx, 6
                                                                                        jne   .Lx288_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx288_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx288_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx288_51
                                                                                        jmp   .Lx288_52
.Lx288_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx288_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx288_53
.Lx288_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx288_54
.Lx288_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx288_54
.Lx288_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx288_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n233_op11_α
                                                                                        jmp   n247_suspend_α
n246_op11_β:
                                                                                        jmp   n233_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n247_suspend_α:
                        lea              rax, [rip + n247_suspend_β]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_verb$2F2_γ
n247_suspend_β:
                                                                                        jmp   n233_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_verb$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_verb$2F2_β:
                                                                                        jmp   qword ptr [rbp + 880]
#-----------------------------------------------------------------------------------------------------------------------
proc_verb$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_verb$2F2_res]
                        push             rax
                        mov              rax, [rbp + 936]
                        mov              rbp, [rbp + 952]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_verb$2F2_ω:
                        mov              rax, [rbp + 944]
                        lea              rsp, [rbp + 960]
                        mov              rbp, [rbp + 952]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_noun_phrase$2F2_α
proc_noun_phrase$2F2_α:
                        .global          proc_noun_phrase$2F2_α
                        .global          proc_noun_phrase$2F2_β
                        .global          proc_noun_phrase$2F2_γ
                        .global          proc_noun_phrase$2F2_ω
                        sub              rsp, 672
                        mov              [rsp + 648], rcx
                        mov              [rsp + 656], rdx
                        mov              [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 640
                        call             rt_jmp_frame_lexprep2@PLT
proc_noun_phrase$2F2_α_body:
                        lea              rax, [rip + n308_suspend_β]
                        mov              qword ptr [rbp + 576], rax
#-----------------------------------------------------------------------------------------------------------------------
n291_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx309_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx309_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx309_101
.Lx309_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx309_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_noun_phrase$2F2_ω
                                                                                        jmp   n292_var_ref_α
n291_op11_β:
                                                                                        jmp   proc_noun_phrase$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n293_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n293_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n294_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n294_op11_α:
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
.Lx314_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx314_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx314_41
                        cmp              esi, 1
                                                                                        jne   .Lx314_55
                        mov              r8, rax
                                                                                        jmp   .Lx314_40
.Lx314_55:
                        cmp              esi, 2
                                                                                        jne   .Lx314_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx314_41
                        mov              r8, rax
                                                                                        jmp   .Lx314_40
.Lx314_56:
                        cmp              eax, 13
                                                                                        jne   .Lx314_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx314_41
                        cmp              rax, r8
                                                                                        je    .Lx314_41
                        mov              r8, rax
                                                                                        jmp   .Lx314_40
.Lx314_41:
                        lea              r9, [rbp + 528]
.Lx314_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx314_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx314_43
                        cmp              esi, 1
                                                                                        jne   .Lx314_57
                        mov              r9, rax
                                                                                        jmp   .Lx314_42
.Lx314_57:
                        cmp              esi, 2
                                                                                        jne   .Lx314_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx314_43
                        mov              r9, rax
                                                                                        jmp   .Lx314_42
.Lx314_58:
                        cmp              eax, 13
                                                                                        jne   .Lx314_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx314_43
                        cmp              rax, r9
                                                                                        je    .Lx314_43
                        mov              r9, rax
                                                                                        jmp   .Lx314_42
.Lx314_43:
                        cmp              r8, r9
                                                                                        je    .Lx314_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx314_44
                        cmp              eax, 99
                                                                                        je    .Lx314_44
                        cmp              eax, 13
                                                                                        jne   .Lx314_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx314_44
                                                                                        jmp   .Lx314_45
.Lx314_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx314_53
                        cmp              eax, 99
                                                                                        je    .Lx314_53
                        cmp              eax, 13
                                                                                        jne   .Lx314_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx314_53
                                                                                        jmp   .Lx314_46
.Lx314_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx314_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx314_53
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
                                                                                        jmp   .Lx314_51
.Lx314_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx314_47
                        cmp              eax, 99
                                                                                        je    .Lx314_47
                        cmp              eax, 13
                                                                                        jne   .Lx314_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx314_47
                                                                                        jmp   .Lx314_48
.Lx314_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx314_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx314_53
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
                                                                                        jmp   .Lx314_51
.Lx314_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx314_49
                        cmp              edx, 14
                                                                                        je    .Lx314_53
                                                                                        jmp   .Lx314_52
.Lx314_49:
                        cmp              edx, 14
                                                                                        je    .Lx314_52
                        cmp              ecx, 7
                                                                                        je    .Lx314_53
                        cmp              edx, 7
                                                                                        je    .Lx314_53
                        cmp              ecx, 6
                                                                                        jne   .Lx314_50
                        cmp              edx, 6
                                                                                        jne   .Lx314_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx314_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx314_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx314_51
                                                                                        jmp   .Lx314_52
.Lx314_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx314_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx314_53
.Lx314_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx314_54
.Lx314_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx314_54
.Lx314_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx314_54:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n296_op11_α
                                                                                        jmp   n295_var_ref_α
n294_op11_β:
                                                                                        jmp   n296_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n297_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n296_op11_α:
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
                                                                                        je    proc_noun_phrase$2F2_ω
                                                                                        jmp   proc_noun_phrase$2F2_ω
n296_op11_β:
                                                                                        jmp   proc_noun_phrase$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n297_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n298_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n298_op11_α:
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
.Lx320_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx320_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_41
                        cmp              esi, 1
                                                                                        jne   .Lx320_55
                        mov              r8, rax
                                                                                        jmp   .Lx320_40
.Lx320_55:
                        cmp              esi, 2
                                                                                        jne   .Lx320_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx320_41
                        mov              r8, rax
                                                                                        jmp   .Lx320_40
.Lx320_56:
                        cmp              eax, 13
                                                                                        jne   .Lx320_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_41
                        cmp              rax, r8
                                                                                        je    .Lx320_41
                        mov              r8, rax
                                                                                        jmp   .Lx320_40
.Lx320_41:
                        lea              r9, [rbp + 448]
.Lx320_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx320_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_43
                        cmp              esi, 1
                                                                                        jne   .Lx320_57
                        mov              r9, rax
                                                                                        jmp   .Lx320_42
.Lx320_57:
                        cmp              esi, 2
                                                                                        jne   .Lx320_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx320_43
                        mov              r9, rax
                                                                                        jmp   .Lx320_42
.Lx320_58:
                        cmp              eax, 13
                                                                                        jne   .Lx320_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_43
                        cmp              rax, r9
                                                                                        je    .Lx320_43
                        mov              r9, rax
                                                                                        jmp   .Lx320_42
.Lx320_43:
                        cmp              r8, r9
                                                                                        je    .Lx320_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx320_44
                        cmp              eax, 99
                                                                                        je    .Lx320_44
                        cmp              eax, 13
                                                                                        jne   .Lx320_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx320_44
                                                                                        jmp   .Lx320_45
.Lx320_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx320_53
                        cmp              eax, 99
                                                                                        je    .Lx320_53
                        cmp              eax, 13
                                                                                        jne   .Lx320_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx320_53
                                                                                        jmp   .Lx320_46
.Lx320_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx320_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx320_53
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
                                                                                        jmp   .Lx320_51
.Lx320_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx320_47
                        cmp              eax, 99
                                                                                        je    .Lx320_47
                        cmp              eax, 13
                                                                                        jne   .Lx320_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx320_47
                                                                                        jmp   .Lx320_48
.Lx320_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx320_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx320_53
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
                                                                                        jmp   .Lx320_51
.Lx320_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx320_49
                        cmp              edx, 14
                                                                                        je    .Lx320_53
                                                                                        jmp   .Lx320_52
.Lx320_49:
                        cmp              edx, 14
                                                                                        je    .Lx320_52
                        cmp              ecx, 7
                                                                                        je    .Lx320_53
                        cmp              edx, 7
                                                                                        je    .Lx320_53
                        cmp              ecx, 6
                                                                                        jne   .Lx320_50
                        cmp              edx, 6
                                                                                        jne   .Lx320_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx320_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx320_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx320_51
                                                                                        jmp   .Lx320_52
.Lx320_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx320_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx320_53
.Lx320_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx320_54
.Lx320_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx320_54
.Lx320_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx320_54:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n296_op11_α
                                                                                        jmp   n299_var_ref_α
n298_op11_β:
                                                                                        jmp   n296_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n300_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n301_lit_string_α
.Lx323_0:
                        .quad            .Lx323_0_s
.Lx323_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n302_var_ref_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "the"
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n303_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n303_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n296_op11_α
                                                                                        jmp   n304_op11_α
n303_op11_β:
                                                                                        jmp   n296_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n304_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 240]
                        lea              r8, [rbp + 240]
.Lx328_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx328_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx328_41
                        cmp              esi, 1
                                                                                        jne   .Lx328_55
                        mov              r8, rax
                                                                                        jmp   .Lx328_40
.Lx328_55:
                        cmp              esi, 2
                                                                                        jne   .Lx328_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx328_41
                        mov              r8, rax
                                                                                        jmp   .Lx328_40
.Lx328_56:
                        cmp              eax, 13
                                                                                        jne   .Lx328_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx328_41
                        cmp              rax, r8
                                                                                        je    .Lx328_41
                        mov              r8, rax
                                                                                        jmp   .Lx328_40
.Lx328_41:
                        lea              r9, [rbp + 256]
.Lx328_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx328_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx328_43
                        cmp              esi, 1
                                                                                        jne   .Lx328_57
                        mov              r9, rax
                                                                                        jmp   .Lx328_42
.Lx328_57:
                        cmp              esi, 2
                                                                                        jne   .Lx328_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx328_43
                        mov              r9, rax
                                                                                        jmp   .Lx328_42
.Lx328_58:
                        cmp              eax, 13
                                                                                        jne   .Lx328_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx328_43
                        cmp              rax, r9
                                                                                        je    .Lx328_43
                        mov              r9, rax
                                                                                        jmp   .Lx328_42
.Lx328_43:
                        cmp              r8, r9
                                                                                        je    .Lx328_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx328_44
                        cmp              eax, 99
                                                                                        je    .Lx328_44
                        cmp              eax, 13
                                                                                        jne   .Lx328_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx328_44
                                                                                        jmp   .Lx328_45
.Lx328_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx328_53
                        cmp              eax, 99
                                                                                        je    .Lx328_53
                        cmp              eax, 13
                                                                                        jne   .Lx328_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx328_53
                                                                                        jmp   .Lx328_46
.Lx328_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx328_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx328_53
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
                                                                                        jmp   .Lx328_51
.Lx328_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx328_47
                        cmp              eax, 99
                                                                                        je    .Lx328_47
                        cmp              eax, 13
                                                                                        jne   .Lx328_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx328_47
                                                                                        jmp   .Lx328_48
.Lx328_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx328_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx328_53
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
                                                                                        jmp   .Lx328_51
.Lx328_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx328_49
                        cmp              edx, 14
                                                                                        je    .Lx328_53
                                                                                        jmp   .Lx328_52
.Lx328_49:
                        cmp              edx, 14
                                                                                        je    .Lx328_52
                        cmp              ecx, 7
                                                                                        je    .Lx328_53
                        cmp              edx, 7
                                                                                        je    .Lx328_53
                        cmp              ecx, 6
                                                                                        jne   .Lx328_50
                        cmp              edx, 6
                                                                                        jne   .Lx328_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx328_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx328_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx328_51
                                                                                        jmp   .Lx328_52
.Lx328_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx328_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx328_53
.Lx328_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx328_54
.Lx328_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx328_54
.Lx328_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx328_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n296_op11_α
                                                                                        jmp   n305_var_ref_α
n304_op11_β:
                                                                                        jmp   n296_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n306_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n307_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx334_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx334_21
.Lx334_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx334_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx334_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx334_23
.Lx334_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx334_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx334_1
                        lea              rcx, [rip + .Lx334_3]
                        lea              rdx, [rip + .Lx334_4]
                                                                                        jmp   rax
.Lx334_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx334_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx334_2
.Lx334_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx334_2
.Lx334_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx334_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx334_2
.Lx334_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx334_2
.Lx334_1:
                        call             rt_faildescr@PLT
.Lx334_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n296_op11_α
                                                                                        jmp   n308_suspend_α
n307_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "noun/2"
#-----------------------------------------------------------------------------------------------------------------------
n308_suspend_α:
                        lea              rax, [rip + n308_suspend_β]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_noun_phrase$2F2_γ
n308_suspend_β:
                                                                                        jmp   n307_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_noun_phrase$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_noun_phrase$2F2_β:
                                                                                        jmp   qword ptr [rbp + 576]
#-----------------------------------------------------------------------------------------------------------------------
proc_noun_phrase$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_noun_phrase$2F2_res]
                        push             rax
                        mov              rax, [rbp + 648]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_noun_phrase$2F2_ω:
                        mov              rax, [rbp + 656]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "sentence/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_sentence$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 560
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "noun/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_noun$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1328
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "verb_phrase/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_verb_phrase$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 864
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "verb/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_verb$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 928
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "noun_phrase/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_noun_phrase$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 640
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
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
                        sub              rsp, 1992
                        mov              rdi, rsp
                        mov              ecx, 1992
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1984], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n337_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx398_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx398_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx398_101
.Lx398_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx398_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n338_lit_string_α
n337_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n339_lit_string_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n340_lit_string_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "the"
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n341_lit_string_α
.Lx401_0:
                        .quad            .Lx401_0_s
.Lx401_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx402_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n342_lit_string_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n343_lit_string_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n344_lit_string_α
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "chases"
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n345_lit_string_α
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n346_lit_string_α
.Lx406_0:
                        .quad            .Lx406_0_s
.Lx406_0_s:
                        .string          "the"
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n347_lit_string_α
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n348_lit_string_α
.Lx408_0:
                        .quad            .Lx408_0_s
.Lx408_0_s:
                        .string          "mouse"
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n349_op11_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n349_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n350_op11_α
n349_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n350_op11_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n351_op11_α
n350_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n351_op11_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n352_op11_α
n351_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n352_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1776]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n353_op11_α
n352_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n353_op11_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n355_lit_string_α
                                                                                        jmp   n354_lit_string_α
n353_op11_β:
                                                                                        jmp   n355_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n356_call_proc_staged_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n357_op11_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n356_call_proc_staged_α:
                        mov              qword ptr [rbp + 1360], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx418_20
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx418_21
.Lx418_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        call             rt_arg_stage@PLT
.Lx418_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx418_22
                        mov              rax, qword ptr [rbp + 1968]
                        mov              rdx, qword ptr [rbp + 1976]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx418_23
.Lx418_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1968]
                        mov              rdx, qword ptr [rbp + 1976]
                        call             rt_arg_stage@PLT
.Lx418_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx418_1
                        lea              rcx, [rip + .Lx418_3]
                        lea              rdx, [rip + .Lx418_4]
                                                                                        jmp   rax
.Lx418_3:
                        mov              qword ptr [rbp + 1368], rsp
                        mov              rax, qword ptr [rbp + 1360]
                        test             rax, rax
                                                                                        jne   .Lx418_5
                        mov              qword ptr [rbp + 1360], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx418_2
.Lx418_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx418_2
.Lx418_4:
                        mov              rax, qword ptr [rbp + 1360]
                        test             rax, rax
                                                                                        jne   .Lx418_6
                        mov              qword ptr [rbp + 1360], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx418_2
.Lx418_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx418_2
.Lx418_1:
                        call             rt_faildescr@PLT
.Lx418_2:
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n355_lit_string_α
                                                                                        jmp   n358_lit_string_α
n356_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1368]
                                                                                        jmp   qword ptr [rsp]
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "sentence/2"
#-----------------------------------------------------------------------------------------------------------------------
n357_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn420:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn420]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n360_op11_α
                                                                                        jmp   n359_lit_string_α
n357_op11_β:
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n361_op11_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n362_op11_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n360_op11_α:
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
n360_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n361_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1240], rax
                        .section         .rodata
.Lrkfn425:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn425]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n360_op11_α
                                                                                        jmp   n359_lit_string_α
n361_op11_β:
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n362_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn427:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn427]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n360_op11_α
                                                                                        jmp   n363_lit_string_α
n362_op11_β:
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n364_lit_string_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n365_lit_string_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          "the"
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n366_lit_string_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n367_lit_string_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "dog"
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n368_lit_string_α
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n369_lit_string_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "sees"
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n370_op11_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n370_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n371_op11_α
n370_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n371_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n372_op11_α
n371_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n372_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n374_lit_string_α
                                                                                        jmp   n373_lit_string_α
n372_op11_β:
                                                                                        jmp   n374_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n375_call_proc_staged_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n376_op11_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n375_call_proc_staged_α:
                        mov              qword ptr [rbp + 768], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx441_20
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx441_21
.Lx441_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             rt_arg_stage@PLT
.Lx441_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx441_22
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx441_23
.Lx441_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_arg_stage@PLT
.Lx441_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx441_1
                        lea              rcx, [rip + .Lx441_3]
                        lea              rdx, [rip + .Lx441_4]
                                                                                        jmp   rax
.Lx441_3:
                        mov              qword ptr [rbp + 776], rsp
                        mov              rax, qword ptr [rbp + 768]
                        test             rax, rax
                                                                                        jne   .Lx441_5
                        mov              qword ptr [rbp + 768], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx441_2
.Lx441_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx441_2
.Lx441_4:
                        mov              rax, qword ptr [rbp + 768]
                        test             rax, rax
                                                                                        jne   .Lx441_6
                        mov              qword ptr [rbp + 768], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx441_2
.Lx441_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx441_2
.Lx441_1:
                        call             rt_faildescr@PLT
.Lx441_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n374_lit_string_α
                                                                                        jmp   n377_lit_string_α
n375_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 776]
                                                                                        jmp   qword ptr [rsp]
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "sentence/2"
#-----------------------------------------------------------------------------------------------------------------------
n376_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn443:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn443]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n360_op11_α
                                                                                        jmp   n378_lit_string_α
n376_op11_β:
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n379_op11_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n380_op11_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n379_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn447:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn447]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n360_op11_α
                                                                                        jmp   n378_lit_string_α
n379_op11_β:
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n380_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn449:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn449]
                        lea              rsi, [rbp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n360_op11_α
                                                                                        jmp   n381_lit_string_α
n380_op11_β:
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n382_lit_string_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n383_lit_string_α
.Lx451_0:
                        .quad            .Lx451_0_s
.Lx451_0_s:
                        .string          "cat"
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n384_lit_string_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n385_lit_string_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "chases"
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n386_op11_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n386_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n387_op11_α
n386_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n387_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n389_lit_string_α
                                                                                        jmp   n388_lit_string_α
n387_op11_β:
                                                                                        jmp   n389_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n390_call_proc_staged_α
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n391_op11_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n390_call_proc_staged_α:
                        mov              qword ptr [rbp + 288], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx460_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx460_21
.Lx460_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx460_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx460_22
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx460_23
.Lx460_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx460_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx460_1
                        lea              rcx, [rip + .Lx460_3]
                        lea              rdx, [rip + .Lx460_4]
                                                                                        jmp   rax
.Lx460_3:
                        mov              qword ptr [rbp + 296], rsp
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx460_5
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx460_2
.Lx460_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx460_2
.Lx460_4:
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx460_6
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx460_2
.Lx460_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx460_2
.Lx460_1:
                        call             rt_faildescr@PLT
.Lx460_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n389_lit_string_α
                                                                                        jmp   n392_lit_string_α
n390_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 296]
                                                                                        jmp   qword ptr [rsp]
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "sentence/2"
#-----------------------------------------------------------------------------------------------------------------------
n391_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn462:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn462]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n360_op11_α
                                                                                        jmp   n393_lit_string_α
n391_op11_β:
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n394_op11_α
.Lx463_0:
                        .quad            .Lx463_0_s
.Lx463_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n395_op11_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n394_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn466:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn466]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n360_op11_α
                                                                                        jmp   n393_lit_string_α
n394_op11_β:
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n395_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn468:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn468]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n360_op11_α
                                                                                        jmp   n396_move_label_α
n395_op11_β:
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n396_move_label_α:
                        lea              rax, [rip + n360_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n397_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n397_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n397_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1984]
                        add              rsp, 1992
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1984]
                        add              rsp, 1992
                        ret
                        .section         .note.GNU-stack,"",@progbits
