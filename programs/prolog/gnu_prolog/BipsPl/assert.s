                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$use_assert$2F0_α
proc_$use_assert$2F0_α:
                        .global          proc_$use_assert$2F0_α
                        .global          proc_$use_assert$2F0_β
                        .global          proc_$use_assert$2F0_γ
                        .global          proc_$use_assert$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_$use_assert$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx4_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx4_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx4_101
.Lx4_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx4_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$use_assert$2F0_ω
                                                                                        jmp   n1_move_label_α
n0_op11_β:
                                                                                        jmp   proc_$use_assert$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_move_label_α:
                        lea              rax, [rip + n2_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_$use_assert$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n2_op11_α:
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
                                                                                        je    proc_$use_assert$2F0_ω
                                                                                        jmp   proc_$use_assert$2F0_ω
n2_op11_β:
                                                                                        jmp   proc_$use_assert$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n3_disjunction_β:
                                                                                        jmp   proc_$use_assert$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$use_assert$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$use_assert$2F0_β:
                                                                                        jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$use_assert$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 104]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$use_assert$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$use_assert$2F0_dcα:
                        pop              r11
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 96], r11
                        lea              rax, [rip + .Lx10_2]
                        mov              qword ptr [rbp + 104], rax
                        lea              rax, [rip + .Lx10_3]
                        mov              qword ptr [rbp + 112], rax
                        mov              rdi, rbp
                        mov              esi, 96
                        mov              edx, 96
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_$use_assert$2F0_α_body
.Lx10_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx10_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -128
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$clause$2F3_α
proc_$clause$2F3_α:
                        .global          proc_$clause$2F3_α
                        .global          proc_$clause$2F3_β
                        .global          proc_$clause$2F3_γ
                        .global          proc_$clause$2F3_ω
                        sub              rsp, 672
                        mov              [rsp + 648], rcx
                        mov              [rsp + 656], rdx
                        mov              [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 640
                        call             rt_jmp_frame_lexprep2@PLT
proc_$clause$2F3_α_body:
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 576], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx29_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx29_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx29_101
.Lx29_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx29_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$clause$2F3_ω
                                                                                        jmp   n12_var_ref_α
n11_op11_β:
                                                                                        jmp   proc_$clause$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
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
.Lx34_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx34_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx34_41
                        cmp              esi, 1
                                                                                        jne   .Lx34_55
                        mov              r8, rax
                                                                                        jmp   .Lx34_40
.Lx34_55:
                        cmp              esi, 2
                                                                                        jne   .Lx34_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx34_41
                        mov              r8, rax
                                                                                        jmp   .Lx34_40
.Lx34_56:
                        cmp              eax, 13
                                                                                        jne   .Lx34_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx34_41
                        cmp              rax, r8
                                                                                        je    .Lx34_41
                        mov              r8, rax
                                                                                        jmp   .Lx34_40
.Lx34_41:
                        lea              r9, [rbp + 528]
.Lx34_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx34_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx34_43
                        cmp              esi, 1
                                                                                        jne   .Lx34_57
                        mov              r9, rax
                                                                                        jmp   .Lx34_42
.Lx34_57:
                        cmp              esi, 2
                                                                                        jne   .Lx34_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx34_43
                        mov              r9, rax
                                                                                        jmp   .Lx34_42
.Lx34_58:
                        cmp              eax, 13
                                                                                        jne   .Lx34_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx34_43
                        cmp              rax, r9
                                                                                        je    .Lx34_43
                        mov              r9, rax
                                                                                        jmp   .Lx34_42
.Lx34_43:
                        cmp              r8, r9
                                                                                        je    .Lx34_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx34_44
                        cmp              eax, 99
                                                                                        je    .Lx34_44
                        cmp              eax, 13
                                                                                        jne   .Lx34_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx34_44
                                                                                        jmp   .Lx34_45
.Lx34_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx34_53
                        cmp              eax, 99
                                                                                        je    .Lx34_53
                        cmp              eax, 13
                                                                                        jne   .Lx34_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx34_53
                                                                                        jmp   .Lx34_46
.Lx34_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx34_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx34_53
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
                                                                                        jmp   .Lx34_51
.Lx34_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx34_47
                        cmp              eax, 99
                                                                                        je    .Lx34_47
                        cmp              eax, 13
                                                                                        jne   .Lx34_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx34_47
                                                                                        jmp   .Lx34_48
.Lx34_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx34_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx34_53
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
                                                                                        jmp   .Lx34_51
.Lx34_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx34_49
                        cmp              edx, 14
                                                                                        je    .Lx34_53
                                                                                        jmp   .Lx34_52
.Lx34_49:
                        cmp              edx, 14
                                                                                        je    .Lx34_52
                        cmp              ecx, 7
                                                                                        je    .Lx34_53
                        cmp              edx, 7
                                                                                        je    .Lx34_53
                        cmp              ecx, 6
                                                                                        jne   .Lx34_50
                        cmp              edx, 6
                                                                                        jne   .Lx34_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx34_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx34_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx34_51
                                                                                        jmp   .Lx34_52
.Lx34_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx34_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx34_53
.Lx34_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx34_54
.Lx34_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx34_54
.Lx34_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx34_54:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n15_var_ref_α
n14_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
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
                                                                                        je    proc_$clause$2F3_ω
                                                                                        jmp   proc_$clause$2F3_ω
n16_op11_β:
                                                                                        jmp   proc_$clause$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
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
.Lx40_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx40_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx40_41
                        cmp              esi, 1
                                                                                        jne   .Lx40_55
                        mov              r8, rax
                                                                                        jmp   .Lx40_40
.Lx40_55:
                        cmp              esi, 2
                                                                                        jne   .Lx40_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx40_41
                        mov              r8, rax
                                                                                        jmp   .Lx40_40
.Lx40_56:
                        cmp              eax, 13
                                                                                        jne   .Lx40_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx40_41
                        cmp              rax, r8
                                                                                        je    .Lx40_41
                        mov              r8, rax
                                                                                        jmp   .Lx40_40
.Lx40_41:
                        lea              r9, [rbp + 448]
.Lx40_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx40_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx40_43
                        cmp              esi, 1
                                                                                        jne   .Lx40_57
                        mov              r9, rax
                                                                                        jmp   .Lx40_42
.Lx40_57:
                        cmp              esi, 2
                                                                                        jne   .Lx40_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx40_43
                        mov              r9, rax
                                                                                        jmp   .Lx40_42
.Lx40_58:
                        cmp              eax, 13
                                                                                        jne   .Lx40_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx40_43
                        cmp              rax, r9
                                                                                        je    .Lx40_43
                        mov              r9, rax
                                                                                        jmp   .Lx40_42
.Lx40_43:
                        cmp              r8, r9
                                                                                        je    .Lx40_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx40_44
                        cmp              eax, 99
                                                                                        je    .Lx40_44
                        cmp              eax, 13
                                                                                        jne   .Lx40_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx40_44
                                                                                        jmp   .Lx40_45
.Lx40_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx40_53
                        cmp              eax, 99
                                                                                        je    .Lx40_53
                        cmp              eax, 13
                                                                                        jne   .Lx40_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx40_53
                                                                                        jmp   .Lx40_46
.Lx40_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx40_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx40_53
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
                                                                                        jmp   .Lx40_51
.Lx40_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx40_47
                        cmp              eax, 99
                                                                                        je    .Lx40_47
                        cmp              eax, 13
                                                                                        jne   .Lx40_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx40_47
                                                                                        jmp   .Lx40_48
.Lx40_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx40_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx40_53
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
                                                                                        jmp   .Lx40_51
.Lx40_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx40_49
                        cmp              edx, 14
                                                                                        je    .Lx40_53
                                                                                        jmp   .Lx40_52
.Lx40_49:
                        cmp              edx, 14
                                                                                        je    .Lx40_52
                        cmp              ecx, 7
                                                                                        je    .Lx40_53
                        cmp              edx, 7
                                                                                        je    .Lx40_53
                        cmp              ecx, 6
                                                                                        jne   .Lx40_50
                        cmp              edx, 6
                                                                                        jne   .Lx40_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx40_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx40_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx40_51
                                                                                        jmp   .Lx40_52
.Lx40_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx40_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx40_53
.Lx40_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx40_54
.Lx40_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx40_54
.Lx40_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx40_54:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n19_var_ref_α
n18_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
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
.Lx45_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx45_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx45_41
                        cmp              esi, 1
                                                                                        jne   .Lx45_55
                        mov              r8, rax
                                                                                        jmp   .Lx45_40
.Lx45_55:
                        cmp              esi, 2
                                                                                        jne   .Lx45_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx45_41
                        mov              r8, rax
                                                                                        jmp   .Lx45_40
.Lx45_56:
                        cmp              eax, 13
                                                                                        jne   .Lx45_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx45_41
                        cmp              rax, r8
                                                                                        je    .Lx45_41
                        mov              r8, rax
                                                                                        jmp   .Lx45_40
.Lx45_41:
                        lea              r9, [rbp + 368]
.Lx45_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx45_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx45_43
                        cmp              esi, 1
                                                                                        jne   .Lx45_57
                        mov              r9, rax
                                                                                        jmp   .Lx45_42
.Lx45_57:
                        cmp              esi, 2
                                                                                        jne   .Lx45_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx45_43
                        mov              r9, rax
                                                                                        jmp   .Lx45_42
.Lx45_58:
                        cmp              eax, 13
                                                                                        jne   .Lx45_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx45_43
                        cmp              rax, r9
                                                                                        je    .Lx45_43
                        mov              r9, rax
                                                                                        jmp   .Lx45_42
.Lx45_43:
                        cmp              r8, r9
                                                                                        je    .Lx45_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx45_44
                        cmp              eax, 99
                                                                                        je    .Lx45_44
                        cmp              eax, 13
                                                                                        jne   .Lx45_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx45_44
                                                                                        jmp   .Lx45_45
.Lx45_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx45_53
                        cmp              eax, 99
                                                                                        je    .Lx45_53
                        cmp              eax, 13
                                                                                        jne   .Lx45_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx45_53
                                                                                        jmp   .Lx45_46
.Lx45_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx45_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx45_53
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
                                                                                        jmp   .Lx45_51
.Lx45_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx45_47
                        cmp              eax, 99
                                                                                        je    .Lx45_47
                        cmp              eax, 13
                                                                                        jne   .Lx45_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx45_47
                                                                                        jmp   .Lx45_48
.Lx45_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx45_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx45_53
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
                                                                                        jmp   .Lx45_51
.Lx45_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx45_49
                        cmp              edx, 14
                                                                                        je    .Lx45_53
                                                                                        jmp   .Lx45_52
.Lx45_49:
                        cmp              edx, 14
                                                                                        je    .Lx45_52
                        cmp              ecx, 7
                                                                                        je    .Lx45_53
                        cmp              edx, 7
                                                                                        je    .Lx45_53
                        cmp              ecx, 6
                                                                                        jne   .Lx45_50
                        cmp              edx, 6
                                                                                        jne   .Lx45_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx45_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx45_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx45_51
                                                                                        jmp   .Lx45_52
.Lx45_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx45_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx45_53
.Lx45_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx45_54
.Lx45_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx45_54
.Lx45_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx45_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n22_lit_string_α
n21_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n23_var_ref_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "Pl_Clause_3"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n27_call_proc_staged_α
n26_op11_β:
                                                                                        jmp   n16_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx55_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx55_21
.Lx55_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx55_21:
                        mov              rdi, qword ptr [rip + .Lx55_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx55_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx55_3]
                        lea              rdx, [rip + .Lx55_4]
                                                                                        jmp   rax
.Lx55_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx55_2
.Lx55_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx55_2
.Lx55_1:
                        call             rt_faildescr@PLT
.Lx55_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n16_op11_α
                                                                                        jmp   n28_suspend_α
n27_call_proc_staged_β:
                                                                                        jmp   n16_op11_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "$call_c_test/1"
#-----------------------------------------------------------------------------------------------------------------------
n28_suspend_α:
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$clause$2F3_γ
n28_suspend_β:
                                                                                        jmp   n27_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$clause$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$clause$2F3_β:
                                                                                        jmp   qword ptr [rbp + 576]
#-----------------------------------------------------------------------------------------------------------------------
proc_$clause$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$clause$2F3_res]
                        push             rax
                        mov              rax, [rbp + 648]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$clause$2F3_ω:
                        mov              rax, [rbp + 656]
                        lea              rsp, [rbp + 672]
                        mov              rbp, [rbp + 664]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_retractall$2F1_α
proc_retractall$2F1_α:
                        .global          proc_retractall$2F1_α
                        .global          proc_retractall$2F1_β
                        .global          proc_retractall$2F1_γ
                        .global          proc_retractall$2F1_ω
                        sub              rsp, 848
                        mov              [rsp + 824], rcx
                        mov              [rsp + 832], rdx
                        mov              [rsp + 840], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 768
                        mov              edx, 816
                        call             rt_jmp_frame_lexprep2@PLT
proc_retractall$2F1_α_body:
                        lea              rax, [rip + n81_suspend_β]
                        mov              qword ptr [rbp + 768], rax
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
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
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx84_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_retractall$2F1_ω
                                                                                        jmp   n59_var_ref_α
n58_op11_β:
                                                                                        jmp   proc_retractall$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n60_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n61_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 704]
                        lea              r8, [rbp + 704]
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
                        lea              r9, [rbp + 720]
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
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n63_op11_α
                                                                                        jmp   n62_lit_string_α
n61_op11_β:
                                                                                        jmp   n63_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n64_lit_integer_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "retractall"
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    proc_retractall$2F1_ω
                                                                                        jmp   n65_var_ref_α
n63_op11_β:
                                                                                        jmp   proc_retractall$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n66_call_proc_staged_α
.Lx92_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx96_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx96_21
.Lx96_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx96_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx96_22
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx96_23
.Lx96_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx96_23:
                        mov              rdi, qword ptr [rip + .Lx96_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx96_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx96_3]
                        lea              rdx, [rip + .Lx96_4]
                                                                                        jmp   rax
.Lx96_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx96_2
.Lx96_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx96_2
.Lx96_1:
                        call             rt_faildescr@PLT
.Lx96_2:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n63_op11_α
                                                                                        jmp   n68_lit_string_α
n66_call_proc_staged_β:
                                                                                        jmp   n63_op11_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n70_var_ref_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "Pl_Retractall_If_Empty_Head_1"
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
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
.Lx100_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx100_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx100_41
                        cmp              esi, 1
                                                                                        jne   .Lx100_55
                        mov              r8, rax
                                                                                        jmp   .Lx100_40
.Lx100_55:
                        cmp              esi, 2
                                                                                        jne   .Lx100_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx100_41
                        mov              r8, rax
                                                                                        jmp   .Lx100_40
.Lx100_56:
                        cmp              eax, 13
                                                                                        jne   .Lx100_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx100_41
                        cmp              rax, r8
                                                                                        je    .Lx100_41
                        mov              r8, rax
                                                                                        jmp   .Lx100_40
.Lx100_41:
                        lea              r9, [rbp + 368]
.Lx100_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx100_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx100_43
                        cmp              esi, 1
                                                                                        jne   .Lx100_57
                        mov              r9, rax
                                                                                        jmp   .Lx100_42
.Lx100_57:
                        cmp              esi, 2
                                                                                        jne   .Lx100_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx100_43
                        mov              r9, rax
                                                                                        jmp   .Lx100_42
.Lx100_58:
                        cmp              eax, 13
                                                                                        jne   .Lx100_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx100_43
                        cmp              rax, r9
                                                                                        je    .Lx100_43
                        mov              r9, rax
                                                                                        jmp   .Lx100_42
.Lx100_43:
                        cmp              r8, r9
                                                                                        je    .Lx100_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx100_44
                        cmp              eax, 99
                                                                                        je    .Lx100_44
                        cmp              eax, 13
                                                                                        jne   .Lx100_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx100_44
                                                                                        jmp   .Lx100_45
.Lx100_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx100_53
                        cmp              eax, 99
                                                                                        je    .Lx100_53
                        cmp              eax, 13
                                                                                        jne   .Lx100_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx100_53
                                                                                        jmp   .Lx100_46
.Lx100_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx100_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx100_53
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
                                                                                        jmp   .Lx100_51
.Lx100_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx100_47
                        cmp              eax, 99
                                                                                        je    .Lx100_47
                        cmp              eax, 13
                                                                                        jne   .Lx100_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx100_47
                                                                                        jmp   .Lx100_48
.Lx100_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx100_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx100_53
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
                                                                                        jmp   .Lx100_51
.Lx100_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx100_49
                        cmp              edx, 14
                                                                                        je    .Lx100_53
                                                                                        jmp   .Lx100_52
.Lx100_49:
                        cmp              edx, 14
                                                                                        je    .Lx100_52
                        cmp              ecx, 7
                                                                                        je    .Lx100_53
                        cmp              edx, 7
                                                                                        je    .Lx100_53
                        cmp              ecx, 6
                                                                                        jne   .Lx100_50
                        cmp              edx, 6
                                                                                        jne   .Lx100_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx100_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx100_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx100_51
                                                                                        jmp   .Lx100_52
.Lx100_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx100_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx100_53
.Lx100_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx100_54
.Lx100_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx100_54
.Lx100_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx100_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n72_op11_α
                                                                                        jmp   n71_var_ref_α
n69_op11_β:
                                                                                        jmp   n72_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n74_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
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
                                                                                        je    proc_retractall$2F1_ω
                                                                                        jmp   n75_var_ref_α
n72_op11_β:
                                                                                        jmp   proc_retractall$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
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
                                                                                        je    n63_op11_α
                                                                                        jmp   n76_call_proc_staged_α
n73_op11_β:
                                                                                        jmp   n63_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n77_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx112_20
                        mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx112_21
.Lx112_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        call             rt_arg_stage@PLT
.Lx112_21:
                        mov              rdi, qword ptr [rip + .Lx112_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx112_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx112_3]
                        lea              rdx, [rip + .Lx112_4]
                                                                                        jmp   rax
.Lx112_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx112_2
.Lx112_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx112_2
.Lx112_1:
                        call             rt_faildescr@PLT
.Lx112_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n66_call_proc_staged_β
                                                                                        jmp   n79_op19_α
n76_call_proc_staged_β:
                                                                                        jmp   n66_call_proc_staged_β
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "$call_c_test/1"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_proc_staged_α:
                        mov              qword ptr [rbp + 272], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx114_20
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx114_21
.Lx114_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx114_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx114_22
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx114_23
.Lx114_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx114_23:
                        mov              edi, 13
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx114_1
                        lea              rcx, [rip + .Lx114_3]
                        lea              rdx, [rip + .Lx114_4]
                                                                                        jmp   rax
.Lx114_3:
                        mov              qword ptr [rbp + 280], rsp
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx114_5
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx114_2
.Lx114_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx114_2
.Lx114_4:
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx114_6
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx114_2
.Lx114_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx114_2
.Lx114_1:
                        call             rt_faildescr@PLT
.Lx114_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n72_op11_α
                                                                                        jmp   n77_call_proc_staged_β
n77_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 280]
                                                                                        jmp   qword ptr [rsp]
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "$retract/2"
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_op19_α:
                                                                                        jmp   n81_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n80_op11_α:
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
.Lx118_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx118_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx118_41
                        cmp              esi, 1
                                                                                        jne   .Lx118_55
                        mov              r8, rax
                                                                                        jmp   .Lx118_40
.Lx118_55:
                        cmp              esi, 2
                                                                                        jne   .Lx118_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx118_41
                        mov              r8, rax
                                                                                        jmp   .Lx118_40
.Lx118_56:
                        cmp              eax, 13
                                                                                        jne   .Lx118_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx118_41
                        cmp              rax, r8
                                                                                        je    .Lx118_41
                        mov              r8, rax
                                                                                        jmp   .Lx118_40
.Lx118_41:
                        lea              r9, [rbp + 144]
.Lx118_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx118_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx118_43
                        cmp              esi, 1
                                                                                        jne   .Lx118_57
                        mov              r9, rax
                                                                                        jmp   .Lx118_42
.Lx118_57:
                        cmp              esi, 2
                                                                                        jne   .Lx118_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx118_43
                        mov              r9, rax
                                                                                        jmp   .Lx118_42
.Lx118_58:
                        cmp              eax, 13
                                                                                        jne   .Lx118_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx118_43
                        cmp              rax, r9
                                                                                        je    .Lx118_43
                        mov              r9, rax
                                                                                        jmp   .Lx118_42
.Lx118_43:
                        cmp              r8, r9
                                                                                        je    .Lx118_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx118_44
                        cmp              eax, 99
                                                                                        je    .Lx118_44
                        cmp              eax, 13
                                                                                        jne   .Lx118_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx118_44
                                                                                        jmp   .Lx118_45
.Lx118_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx118_53
                        cmp              eax, 99
                                                                                        je    .Lx118_53
                        cmp              eax, 13
                                                                                        jne   .Lx118_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx118_53
                                                                                        jmp   .Lx118_46
.Lx118_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx118_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx118_53
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
                                                                                        jmp   .Lx118_51
.Lx118_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx118_47
                        cmp              eax, 99
                                                                                        je    .Lx118_47
                        cmp              eax, 13
                                                                                        jne   .Lx118_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx118_47
                                                                                        jmp   .Lx118_48
.Lx118_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx118_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx118_53
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
                                                                                        jmp   .Lx118_51
.Lx118_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx118_49
                        cmp              edx, 14
                                                                                        je    .Lx118_53
                                                                                        jmp   .Lx118_52
.Lx118_49:
                        cmp              edx, 14
                                                                                        je    .Lx118_52
                        cmp              ecx, 7
                                                                                        je    .Lx118_53
                        cmp              edx, 7
                                                                                        je    .Lx118_53
                        cmp              ecx, 6
                                                                                        jne   .Lx118_50
                        cmp              edx, 6
                                                                                        jne   .Lx118_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx118_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx118_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx118_51
                                                                                        jmp   .Lx118_52
.Lx118_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx118_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx118_53
.Lx118_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx118_54
.Lx118_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx118_54
.Lx118_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx118_54:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n83_op11_α
                                                                                        jmp   n82_suspend_α
n80_op11_β:
                                                                                        jmp   n83_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_suspend_α:
                        lea              rax, [rip + n81_suspend_β]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_retractall$2F1_γ
n81_suspend_β:
                                                                                        jmp   n76_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n82_suspend_α:
                        lea              rax, [rip + n82_suspend_β]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_retractall$2F1_γ
n82_suspend_β:
                                                                                        jmp   n83_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_op11_α:
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
                                                                                        je    proc_retractall$2F1_ω
                                                                                        jmp   proc_retractall$2F1_ω
n83_op11_β:
                                                                                        jmp   proc_retractall$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_retractall$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_retractall$2F1_β:
                                                                                        jmp   qword ptr [rbp + 768]
#-----------------------------------------------------------------------------------------------------------------------
proc_retractall$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_retractall$2F1_res]
                        push             rax
                        mov              rax, [rbp + 824]
                        mov              rbp, [rbp + 840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_retractall$2F1_ω:
                        mov              rax, [rbp + 832]
                        lea              rsp, [rbp + 848]
                        mov              rbp, [rbp + 840]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$scan_dyn_test_alt$2F0_α
proc_$scan_dyn_test_alt$2F0_α:
                        .global          proc_$scan_dyn_test_alt$2F0_α
                        .global          proc_$scan_dyn_test_alt$2F0_β
                        .global          proc_$scan_dyn_test_alt$2F0_γ
                        .global          proc_$scan_dyn_test_alt$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_$scan_dyn_test_alt$2F0_α_body:
                        lea              rax, [rip + n127_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n124_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx129_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx129_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx129_101
.Lx129_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx129_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$scan_dyn_test_alt$2F0_ω
                                                                                        jmp   n125_lit_string_α
n124_op11_β:
                                                                                        jmp   proc_$scan_dyn_test_alt$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n126_call_proc_staged_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "Pl_Scan_Dynamic_Pred_Alt_0"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx132_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx132_21
.Lx132_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx132_21:
                        mov              rdi, qword ptr [rip + .Lx132_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx132_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx132_3]
                        lea              rdx, [rip + .Lx132_4]
                                                                                        jmp   rax
.Lx132_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx132_2
.Lx132_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx132_2
.Lx132_1:
                        call             rt_faildescr@PLT
.Lx132_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n128_op11_α
                                                                                        jmp   n127_suspend_α
n126_call_proc_staged_β:
                                                                                        jmp   n128_op11_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "$call_c_test/1"
#-----------------------------------------------------------------------------------------------------------------------
n127_suspend_α:
                        lea              rax, [rip + n127_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$scan_dyn_test_alt$2F0_γ
n127_suspend_β:
                                                                                        jmp   n126_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n128_op11_α:
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
                                                                                        je    proc_$scan_dyn_test_alt$2F0_ω
                                                                                        jmp   proc_$scan_dyn_test_alt$2F0_ω
n128_op11_β:
                                                                                        jmp   proc_$scan_dyn_test_alt$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$scan_dyn_test_alt$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$scan_dyn_test_alt$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_$scan_dyn_test_alt$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$scan_dyn_test_alt$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$scan_dyn_test_alt$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_assertz$2F1_α
proc_assertz$2F1_α:
                        .global          proc_assertz$2F1_α
                        .global          proc_assertz$2F1_β
                        .global          proc_assertz$2F1_γ
                        .global          proc_assertz$2F1_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_assertz$2F1_α_body:
                        lea              rax, [rip + n149_suspend_β]
                        mov              qword ptr [rbp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx150_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx150_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx150_101
.Lx150_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx150_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_assertz$2F1_ω
                                                                                        jmp   n137_var_ref_α
n136_op11_β:
                                                                                        jmp   proc_assertz$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n139_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
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
                        lea              r9, [rbp + 400]
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
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n141_op11_α
                                                                                        jmp   n140_lit_string_α
n139_op11_β:
                                                                                        jmp   n141_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n142_lit_integer_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "assertz"
#-----------------------------------------------------------------------------------------------------------------------
n141_op11_α:
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
                                                                                        je    proc_assertz$2F1_ω
                                                                                        jmp   proc_assertz$2F1_ω
n141_op11_β:
                                                                                        jmp   proc_assertz$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n143_call_proc_staged_α
.Lx158_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_20
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx160_21
.Lx160_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx160_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_22
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx160_23
.Lx160_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx160_23:
                        mov              rdi, qword ptr [rip + .Lx160_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx160_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx160_3]
                        lea              rdx, [rip + .Lx160_4]
                                                                                        jmp   rax
.Lx160_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx160_2
.Lx160_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx160_2
.Lx160_1:
                        call             rt_faildescr@PLT
.Lx160_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n141_op11_α
                                                                                        jmp   n144_var_ref_α
n143_call_proc_staged_β:
                                                                                        jmp   n141_op11_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n146_lit_integer_α
.Lx163_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n147_lit_string_α
.Lx164_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n148_call_proc_staged_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n148_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx167_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx167_21
.Lx167_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx167_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx167_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx167_23
.Lx167_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx167_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx167_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx167_25
.Lx167_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx167_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx167_26
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx167_27
.Lx167_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx167_27:
                        mov              edi, 12
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx167_1
                        lea              rcx, [rip + .Lx167_3]
                        lea              rdx, [rip + .Lx167_4]
                                                                                        jmp   rax
.Lx167_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx167_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx167_2
.Lx167_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx167_2
.Lx167_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx167_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx167_2
.Lx167_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx167_2
.Lx167_1:
                        call             rt_faildescr@PLT
.Lx167_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n143_call_proc_staged_β
                                                                                        jmp   n149_suspend_α
n148_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "$assert/4"
#-----------------------------------------------------------------------------------------------------------------------
n149_suspend_α:
                        lea              rax, [rip + n149_suspend_β]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_assertz$2F1_γ
n149_suspend_β:
                                                                                        jmp   n148_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_assertz$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_assertz$2F1_β:
                                                                                        jmp   qword ptr [rbp + 448]
#-----------------------------------------------------------------------------------------------------------------------
proc_assertz$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_assertz$2F1_res]
                        push             rax
                        mov              rax, [rbp + 488]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_assertz$2F1_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$scan_dyn_jump_alt$2F0_α
proc_$scan_dyn_jump_alt$2F0_α:
                        .global          proc_$scan_dyn_jump_alt$2F0_α
                        .global          proc_$scan_dyn_jump_alt$2F0_β
                        .global          proc_$scan_dyn_jump_alt$2F0_γ
                        .global          proc_$scan_dyn_jump_alt$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_$scan_dyn_jump_alt$2F0_α_body:
                        lea              rax, [rip + n173_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n170_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx175_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx175_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx175_101
.Lx175_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx175_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$scan_dyn_jump_alt$2F0_ω
                                                                                        jmp   n171_lit_string_α
n170_op11_β:
                                                                                        jmp   proc_$scan_dyn_jump_alt$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n172_call_proc_staged_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "Pl_Scan_Dynamic_Pred_Alt_0"
#-----------------------------------------------------------------------------------------------------------------------
n172_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx178_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx178_21
.Lx178_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx178_21:
                        mov              rdi, qword ptr [rip + .Lx178_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx178_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx178_3]
                        lea              rdx, [rip + .Lx178_4]
                                                                                        jmp   rax
.Lx178_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx178_2
.Lx178_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx178_2
.Lx178_1:
                        call             rt_faildescr@PLT
.Lx178_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n174_op11_α
                                                                                        jmp   n173_suspend_α
n172_call_proc_staged_β:
                                                                                        jmp   n174_op11_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "$call_c_jump/1"
#-----------------------------------------------------------------------------------------------------------------------
n173_suspend_α:
                        lea              rax, [rip + n173_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$scan_dyn_jump_alt$2F0_γ
n173_suspend_β:
                                                                                        jmp   n172_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n174_op11_α:
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
                                                                                        je    proc_$scan_dyn_jump_alt$2F0_ω
                                                                                        jmp   proc_$scan_dyn_jump_alt$2F0_ω
n174_op11_β:
                                                                                        jmp   proc_$scan_dyn_jump_alt$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$scan_dyn_jump_alt$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$scan_dyn_jump_alt$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_$scan_dyn_jump_alt$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$scan_dyn_jump_alt$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$scan_dyn_jump_alt$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_asserta$2F1_α
proc_asserta$2F1_α:
                        .global          proc_asserta$2F1_α
                        .global          proc_asserta$2F1_β
                        .global          proc_asserta$2F1_γ
                        .global          proc_asserta$2F1_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_asserta$2F1_α_body:
                        lea              rax, [rip + n195_suspend_β]
                        mov              qword ptr [rbp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n182_op11_α:
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
                                                                                        je    proc_asserta$2F1_ω
                                                                                        jmp   n183_var_ref_α
n182_op11_β:
                                                                                        jmp   proc_asserta$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n184_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n185_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n185_op11_α:
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
.Lx201_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx201_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx201_41
                        cmp              esi, 1
                                                                                        jne   .Lx201_55
                        mov              r8, rax
                                                                                        jmp   .Lx201_40
.Lx201_55:
                        cmp              esi, 2
                                                                                        jne   .Lx201_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx201_41
                        mov              r8, rax
                                                                                        jmp   .Lx201_40
.Lx201_56:
                        cmp              eax, 13
                                                                                        jne   .Lx201_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx201_41
                        cmp              rax, r8
                                                                                        je    .Lx201_41
                        mov              r8, rax
                                                                                        jmp   .Lx201_40
.Lx201_41:
                        lea              r9, [rbp + 400]
.Lx201_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx201_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx201_43
                        cmp              esi, 1
                                                                                        jne   .Lx201_57
                        mov              r9, rax
                                                                                        jmp   .Lx201_42
.Lx201_57:
                        cmp              esi, 2
                                                                                        jne   .Lx201_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx201_43
                        mov              r9, rax
                                                                                        jmp   .Lx201_42
.Lx201_58:
                        cmp              eax, 13
                                                                                        jne   .Lx201_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx201_43
                        cmp              rax, r9
                                                                                        je    .Lx201_43
                        mov              r9, rax
                                                                                        jmp   .Lx201_42
.Lx201_43:
                        cmp              r8, r9
                                                                                        je    .Lx201_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx201_44
                        cmp              eax, 99
                                                                                        je    .Lx201_44
                        cmp              eax, 13
                                                                                        jne   .Lx201_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx201_44
                                                                                        jmp   .Lx201_45
.Lx201_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx201_53
                        cmp              eax, 99
                                                                                        je    .Lx201_53
                        cmp              eax, 13
                                                                                        jne   .Lx201_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx201_53
                                                                                        jmp   .Lx201_46
.Lx201_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx201_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx201_53
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
                                                                                        jmp   .Lx201_51
.Lx201_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx201_47
                        cmp              eax, 99
                                                                                        je    .Lx201_47
                        cmp              eax, 13
                                                                                        jne   .Lx201_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx201_47
                                                                                        jmp   .Lx201_48
.Lx201_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx201_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx201_53
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
                                                                                        jmp   .Lx201_51
.Lx201_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx201_49
                        cmp              edx, 14
                                                                                        je    .Lx201_53
                                                                                        jmp   .Lx201_52
.Lx201_49:
                        cmp              edx, 14
                                                                                        je    .Lx201_52
                        cmp              ecx, 7
                                                                                        je    .Lx201_53
                        cmp              edx, 7
                                                                                        je    .Lx201_53
                        cmp              ecx, 6
                                                                                        jne   .Lx201_50
                        cmp              edx, 6
                                                                                        jne   .Lx201_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx201_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx201_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx201_51
                                                                                        jmp   .Lx201_52
.Lx201_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx201_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx201_53
.Lx201_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx201_54
.Lx201_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx201_54
.Lx201_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx201_54:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n187_op11_α
                                                                                        jmp   n186_lit_string_α
n185_op11_β:
                                                                                        jmp   n187_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n188_lit_integer_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          "asserta"
#-----------------------------------------------------------------------------------------------------------------------
n187_op11_α:
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
                                                                                        je    proc_asserta$2F1_ω
                                                                                        jmp   proc_asserta$2F1_ω
n187_op11_β:
                                                                                        jmp   proc_asserta$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n189_call_proc_staged_α
.Lx204_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n189_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx206_20
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx206_21
.Lx206_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx206_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx206_22
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx206_23
.Lx206_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx206_23:
                        mov              rdi, qword ptr [rip + .Lx206_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx206_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx206_3]
                        lea              rdx, [rip + .Lx206_4]
                                                                                        jmp   rax
.Lx206_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx206_2
.Lx206_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx206_2
.Lx206_1:
                        call             rt_faildescr@PLT
.Lx206_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n187_op11_α
                                                                                        jmp   n190_var_ref_α
n189_call_proc_staged_β:
                                                                                        jmp   n187_op11_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n191_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n192_lit_integer_α
.Lx209_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n193_lit_string_α
.Lx210_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n194_call_proc_staged_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n194_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
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
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx213_23
.Lx213_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx213_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx213_25
.Lx213_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx213_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx213_26
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx213_27
.Lx213_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx213_27:
                        mov              edi, 12
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx213_1
                        lea              rcx, [rip + .Lx213_3]
                        lea              rdx, [rip + .Lx213_4]
                                                                                        jmp   rax
.Lx213_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx213_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx213_2
.Lx213_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx213_2
.Lx213_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx213_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx213_2
.Lx213_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx213_2
.Lx213_1:
                        call             rt_faildescr@PLT
.Lx213_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n189_call_proc_staged_β
                                                                                        jmp   n195_suspend_α
n194_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "$assert/4"
#-----------------------------------------------------------------------------------------------------------------------
n195_suspend_α:
                        lea              rax, [rip + n195_suspend_β]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_asserta$2F1_γ
n195_suspend_β:
                                                                                        jmp   n194_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_asserta$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_asserta$2F1_β:
                                                                                        jmp   qword ptr [rbp + 448]
#-----------------------------------------------------------------------------------------------------------------------
proc_asserta$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_asserta$2F1_res]
                        push             rax
                        mov              rax, [rbp + 488]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_asserta$2F1_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_abolish$2F1_α
proc_abolish$2F1_α:
                        .global          proc_abolish$2F1_α
                        .global          proc_abolish$2F1_β
                        .global          proc_abolish$2F1_γ
                        .global          proc_abolish$2F1_ω
                        sub              rsp, 480
                        mov              [rsp + 456], rcx
                        mov              [rsp + 464], rdx
                        mov              [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 448
                        call             rt_jmp_frame_lexprep2@PLT
proc_abolish$2F1_α_body:
                        lea              rax, [rip + n228_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n216_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx229_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx229_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx229_101
.Lx229_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx229_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_abolish$2F1_ω
                                                                                        jmp   n217_var_ref_α
n216_op11_β:
                                                                                        jmp   proc_abolish$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n218_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n219_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n219_op11_α:
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
.Lx234_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx234_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_41
                        cmp              esi, 1
                                                                                        jne   .Lx234_55
                        mov              r8, rax
                                                                                        jmp   .Lx234_40
.Lx234_55:
                        cmp              esi, 2
                                                                                        jne   .Lx234_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx234_41
                        mov              r8, rax
                                                                                        jmp   .Lx234_40
.Lx234_56:
                        cmp              eax, 13
                                                                                        jne   .Lx234_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_41
                        cmp              rax, r8
                                                                                        je    .Lx234_41
                        mov              r8, rax
                                                                                        jmp   .Lx234_40
.Lx234_41:
                        lea              r9, [rbp + 368]
.Lx234_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx234_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_43
                        cmp              esi, 1
                                                                                        jne   .Lx234_57
                        mov              r9, rax
                                                                                        jmp   .Lx234_42
.Lx234_57:
                        cmp              esi, 2
                                                                                        jne   .Lx234_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx234_43
                        mov              r9, rax
                                                                                        jmp   .Lx234_42
.Lx234_58:
                        cmp              eax, 13
                                                                                        jne   .Lx234_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_43
                        cmp              rax, r9
                                                                                        je    .Lx234_43
                        mov              r9, rax
                                                                                        jmp   .Lx234_42
.Lx234_43:
                        cmp              r8, r9
                                                                                        je    .Lx234_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx234_44
                        cmp              eax, 99
                                                                                        je    .Lx234_44
                        cmp              eax, 13
                                                                                        jne   .Lx234_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx234_44
                                                                                        jmp   .Lx234_45
.Lx234_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx234_53
                        cmp              eax, 99
                                                                                        je    .Lx234_53
                        cmp              eax, 13
                                                                                        jne   .Lx234_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx234_53
                                                                                        jmp   .Lx234_46
.Lx234_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx234_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx234_53
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
                                                                                        jmp   .Lx234_51
.Lx234_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx234_47
                        cmp              eax, 99
                                                                                        je    .Lx234_47
                        cmp              eax, 13
                                                                                        jne   .Lx234_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx234_47
                                                                                        jmp   .Lx234_48
.Lx234_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx234_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx234_53
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
                                                                                        jmp   .Lx234_51
.Lx234_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx234_49
                        cmp              edx, 14
                                                                                        je    .Lx234_53
                                                                                        jmp   .Lx234_52
.Lx234_49:
                        cmp              edx, 14
                                                                                        je    .Lx234_52
                        cmp              ecx, 7
                                                                                        je    .Lx234_53
                        cmp              edx, 7
                                                                                        je    .Lx234_53
                        cmp              ecx, 6
                                                                                        jne   .Lx234_50
                        cmp              edx, 6
                                                                                        jne   .Lx234_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx234_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx234_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx234_51
                                                                                        jmp   .Lx234_52
.Lx234_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx234_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx234_53
.Lx234_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx234_54
.Lx234_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx234_54
.Lx234_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx234_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n221_op11_α
                                                                                        jmp   n220_lit_string_α
n219_op11_β:
                                                                                        jmp   n221_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n222_lit_integer_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "abolish"
#-----------------------------------------------------------------------------------------------------------------------
n221_op11_α:
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
                                                                                        je    proc_abolish$2F1_ω
                                                                                        jmp   proc_abolish$2F1_ω
n221_op11_β:
                                                                                        jmp   proc_abolish$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n223_call_proc_staged_α
.Lx237_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx239_20
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx239_21
.Lx239_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx239_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx239_22
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx239_23
.Lx239_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx239_23:
                        mov              rdi, qword ptr [rip + .Lx239_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx239_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx239_3]
                        lea              rdx, [rip + .Lx239_4]
                                                                                        jmp   rax
.Lx239_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx239_2
.Lx239_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx239_2
.Lx239_1:
                        call             rt_faildescr@PLT
.Lx239_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n221_op11_α
                                                                                        jmp   n224_lit_string_α
n223_call_proc_staged_β:
                                                                                        jmp   n221_op11_α
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n225_var_ref_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "Pl_Abolish_1"
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n226_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n226_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n221_op11_α
                                                                                        jmp   n227_call_proc_staged_α
n226_op11_β:
                                                                                        jmp   n221_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx245_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx245_21
.Lx245_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
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
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n223_call_proc_staged_β
                                                                                        jmp   n228_suspend_α
n227_call_proc_staged_β:
                                                                                        jmp   n223_call_proc_staged_β
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "$call_c/1"
#-----------------------------------------------------------------------------------------------------------------------
n228_suspend_α:
                        lea              rax, [rip + n228_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_abolish$2F1_γ
n228_suspend_β:
                                                                                        jmp   n227_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_abolish$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_abolish$2F1_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_abolish$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_abolish$2F1_res]
                        push             rax
                        mov              rax, [rbp + 456]
                        mov              rbp, [rbp + 472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_abolish$2F1_ω:
                        mov              rax, [rbp + 464]
                        lea              rsp, [rbp + 480]
                        mov              rbp, [rbp + 472]
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
                        lea              rax, [rip + n255_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n248_op11_α:
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
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n249_lit_string_α
n248_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n250_lit_string_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n251_lit_string_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n252_op11_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n252_op11_α:
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
                                                                                        je    n254_op11_α
                                                                                        jmp   n253_call_proc_staged_α
n252_op11_β:
                                                                                        jmp   n254_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_proc_staged_α:
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
                        mov              rdi, qword ptr [rip + .Lx262_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx262_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx262_3]
                        lea              rdx, [rip + .Lx262_4]
                                                                                        jmp   rax
.Lx262_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx262_2
.Lx262_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx262_2
.Lx262_1:
                        call             rt_faildescr@PLT
.Lx262_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n254_op11_α
                                                                                        jmp   n255_suspend_α
n253_call_proc_staged_β:
                                                                                        jmp   n254_op11_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n254_op11_α:
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
n254_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n255_suspend_α:
                        lea              rax, [rip + n255_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n255_suspend_β:
                                                                                        jmp   n253_call_proc_staged_β
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
                        lea              rax, [rip + n272_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n266_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx273_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx273_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx273_101
.Lx273_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx273_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n267_lit_string_α
n266_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n268_lit_string_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "retract"
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n269_op11_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n269_op11_α:
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
                                                                                        je    n271_op11_α
                                                                                        jmp   n270_call_proc_staged_α
n269_op11_β:
                                                                                        jmp   n271_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx278_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx278_21
.Lx278_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx278_21:
                        mov              rdi, qword ptr [rip + .Lx278_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx278_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx278_3]
                        lea              rdx, [rip + .Lx278_4]
                                                                                        jmp   rax
.Lx278_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx278_2
.Lx278_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx278_2
.Lx278_1:
                        call             rt_faildescr@PLT
.Lx278_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n271_op11_α
                                                                                        jmp   n272_suspend_α
n270_call_proc_staged_β:
                                                                                        jmp   n271_op11_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n271_op11_α:
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
n271_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n272_suspend_α:
                        lea              rax, [rip + n272_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n272_suspend_β:
                                                                                        jmp   n270_call_proc_staged_β
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
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n288_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n282_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx289_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx289_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx289_101
.Lx289_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx289_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n283_lit_string_α
n282_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n284_lit_string_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "asserta"
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n285_op11_α
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n285_op11_α:
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
                                                                                        je    n287_op11_α
                                                                                        jmp   n286_call_proc_staged_α
n285_op11_β:
                                                                                        jmp   n287_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx294_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx294_21
.Lx294_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx294_21:
                        mov              rdi, qword ptr [rip + .Lx294_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx294_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx294_3]
                        lea              rdx, [rip + .Lx294_4]
                                                                                        jmp   rax
.Lx294_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx294_2
.Lx294_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx294_2
.Lx294_1:
                        call             rt_faildescr@PLT
.Lx294_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n287_op11_α
                                                                                        jmp   n288_suspend_α
n286_call_proc_staged_β:
                                                                                        jmp   n287_op11_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n287_op11_α:
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
n287_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n288_suspend_α:
                        lea              rax, [rip + n288_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n288_suspend_β:
                                                                                        jmp   n286_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_clause$2F2_α
proc_clause$2F2_α:
                        .global          proc_clause$2F2_α
                        .global          proc_clause$2F2_β
                        .global          proc_clause$2F2_γ
                        .global          proc_clause$2F2_ω
                        sub              rsp, 656
                        mov              [rsp + 632], rcx
                        mov              [rsp + 640], rdx
                        mov              [rsp + 648], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 624
                        call             rt_jmp_frame_lexprep2@PLT
proc_clause$2F2_α_body:
                        lea              rax, [rip + n315_suspend_β]
                        mov              qword ptr [rbp + 576], rax
#-----------------------------------------------------------------------------------------------------------------------
n298_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx316_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx316_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx316_101
.Lx316_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx316_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_clause$2F2_ω
                                                                                        jmp   n299_var_ref_α
n298_op11_β:
                                                                                        jmp   proc_clause$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n300_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n301_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n301_op11_α:
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
.Lx321_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx321_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx321_41
                        cmp              esi, 1
                                                                                        jne   .Lx321_55
                        mov              r8, rax
                                                                                        jmp   .Lx321_40
.Lx321_55:
                        cmp              esi, 2
                                                                                        jne   .Lx321_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx321_41
                        mov              r8, rax
                                                                                        jmp   .Lx321_40
.Lx321_56:
                        cmp              eax, 13
                                                                                        jne   .Lx321_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx321_41
                        cmp              rax, r8
                                                                                        je    .Lx321_41
                        mov              r8, rax
                                                                                        jmp   .Lx321_40
.Lx321_41:
                        lea              r9, [rbp + 528]
.Lx321_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx321_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx321_43
                        cmp              esi, 1
                                                                                        jne   .Lx321_57
                        mov              r9, rax
                                                                                        jmp   .Lx321_42
.Lx321_57:
                        cmp              esi, 2
                                                                                        jne   .Lx321_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx321_43
                        mov              r9, rax
                                                                                        jmp   .Lx321_42
.Lx321_58:
                        cmp              eax, 13
                                                                                        jne   .Lx321_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx321_43
                        cmp              rax, r9
                                                                                        je    .Lx321_43
                        mov              r9, rax
                                                                                        jmp   .Lx321_42
.Lx321_43:
                        cmp              r8, r9
                                                                                        je    .Lx321_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx321_44
                        cmp              eax, 99
                                                                                        je    .Lx321_44
                        cmp              eax, 13
                                                                                        jne   .Lx321_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx321_44
                                                                                        jmp   .Lx321_45
.Lx321_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx321_53
                        cmp              eax, 99
                                                                                        je    .Lx321_53
                        cmp              eax, 13
                                                                                        jne   .Lx321_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx321_53
                                                                                        jmp   .Lx321_46
.Lx321_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx321_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx321_53
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
                                                                                        jmp   .Lx321_51
.Lx321_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx321_47
                        cmp              eax, 99
                                                                                        je    .Lx321_47
                        cmp              eax, 13
                                                                                        jne   .Lx321_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx321_47
                                                                                        jmp   .Lx321_48
.Lx321_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx321_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx321_53
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
                                                                                        jmp   .Lx321_51
.Lx321_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx321_49
                        cmp              edx, 14
                                                                                        je    .Lx321_53
                                                                                        jmp   .Lx321_52
.Lx321_49:
                        cmp              edx, 14
                                                                                        je    .Lx321_52
                        cmp              ecx, 7
                                                                                        je    .Lx321_53
                        cmp              edx, 7
                                                                                        je    .Lx321_53
                        cmp              ecx, 6
                                                                                        jne   .Lx321_50
                        cmp              edx, 6
                                                                                        jne   .Lx321_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx321_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx321_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx321_51
                                                                                        jmp   .Lx321_52
.Lx321_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx321_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx321_53
.Lx321_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx321_54
.Lx321_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx321_54
.Lx321_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx321_54:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n303_op11_α
                                                                                        jmp   n302_var_ref_α
n301_op11_β:
                                                                                        jmp   n303_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n304_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n303_op11_α:
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
                                                                                        je    proc_clause$2F2_ω
                                                                                        jmp   proc_clause$2F2_ω
n303_op11_β:
                                                                                        jmp   proc_clause$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n305_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n305_op11_α:
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
.Lx327_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx327_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx327_41
                        cmp              esi, 1
                                                                                        jne   .Lx327_55
                        mov              r8, rax
                                                                                        jmp   .Lx327_40
.Lx327_55:
                        cmp              esi, 2
                                                                                        jne   .Lx327_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx327_41
                        mov              r8, rax
                                                                                        jmp   .Lx327_40
.Lx327_56:
                        cmp              eax, 13
                                                                                        jne   .Lx327_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx327_41
                        cmp              rax, r8
                                                                                        je    .Lx327_41
                        mov              r8, rax
                                                                                        jmp   .Lx327_40
.Lx327_41:
                        lea              r9, [rbp + 448]
.Lx327_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx327_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx327_43
                        cmp              esi, 1
                                                                                        jne   .Lx327_57
                        mov              r9, rax
                                                                                        jmp   .Lx327_42
.Lx327_57:
                        cmp              esi, 2
                                                                                        jne   .Lx327_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx327_43
                        mov              r9, rax
                                                                                        jmp   .Lx327_42
.Lx327_58:
                        cmp              eax, 13
                                                                                        jne   .Lx327_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx327_43
                        cmp              rax, r9
                                                                                        je    .Lx327_43
                        mov              r9, rax
                                                                                        jmp   .Lx327_42
.Lx327_43:
                        cmp              r8, r9
                                                                                        je    .Lx327_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx327_44
                        cmp              eax, 99
                                                                                        je    .Lx327_44
                        cmp              eax, 13
                                                                                        jne   .Lx327_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx327_44
                                                                                        jmp   .Lx327_45
.Lx327_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx327_53
                        cmp              eax, 99
                                                                                        je    .Lx327_53
                        cmp              eax, 13
                                                                                        jne   .Lx327_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx327_53
                                                                                        jmp   .Lx327_46
.Lx327_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx327_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx327_53
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
                                                                                        jmp   .Lx327_51
.Lx327_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx327_47
                        cmp              eax, 99
                                                                                        je    .Lx327_47
                        cmp              eax, 13
                                                                                        jne   .Lx327_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx327_47
                                                                                        jmp   .Lx327_48
.Lx327_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx327_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx327_53
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
                                                                                        jmp   .Lx327_51
.Lx327_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx327_49
                        cmp              edx, 14
                                                                                        je    .Lx327_53
                                                                                        jmp   .Lx327_52
.Lx327_49:
                        cmp              edx, 14
                                                                                        je    .Lx327_52
                        cmp              ecx, 7
                                                                                        je    .Lx327_53
                        cmp              edx, 7
                                                                                        je    .Lx327_53
                        cmp              ecx, 6
                                                                                        jne   .Lx327_50
                        cmp              edx, 6
                                                                                        jne   .Lx327_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx327_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx327_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx327_51
                                                                                        jmp   .Lx327_52
.Lx327_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx327_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx327_53
.Lx327_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx327_54
.Lx327_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx327_54
.Lx327_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx327_54:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n303_op11_α
                                                                                        jmp   n306_lit_string_α
n305_op11_β:
                                                                                        jmp   n303_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n307_lit_integer_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n308_call_proc_staged_α
.Lx329_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n308_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx331_20
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx331_21
.Lx331_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx331_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx331_22
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx331_23
.Lx331_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx331_23:
                        mov              rdi, qword ptr [rip + .Lx331_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx331_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx331_3]
                        lea              rdx, [rip + .Lx331_4]
                                                                                        jmp   rax
.Lx331_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx331_2
.Lx331_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx331_2
.Lx331_1:
                        call             rt_faildescr@PLT
.Lx331_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n303_op11_α
                                                                                        jmp   n309_var_ref_α
n308_call_proc_staged_β:
                                                                                        jmp   n303_op11_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n310_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx335_20
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx335_21
.Lx335_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx335_21:
                        mov              rdi, qword ptr [rip + .Lx335_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx335_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx335_3]
                        lea              rdx, [rip + .Lx335_4]
                                                                                        jmp   rax
.Lx335_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx335_2
.Lx335_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx335_2
.Lx335_1:
                        call             rt_faildescr@PLT
.Lx335_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n308_call_proc_staged_β
                                                                                        jmp   n311_var_ref_α
n310_call_proc_staged_β:
                                                                                        jmp   n308_call_proc_staged_β
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          "$check_head/1"
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n312_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n313_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n314_call_proc_staged_α
.Lx340_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n314_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx342_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx342_21
.Lx342_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx342_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx342_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx342_23
.Lx342_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx342_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx342_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx342_25
.Lx342_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx342_25:
                        mov              edi, 1
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx342_1
                        lea              rcx, [rip + .Lx342_3]
                        lea              rdx, [rip + .Lx342_4]
                                                                                        jmp   rax
.Lx342_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx342_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx342_2
.Lx342_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx342_2
.Lx342_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx342_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx342_2
.Lx342_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx342_2
.Lx342_1:
                        call             rt_faildescr@PLT
.Lx342_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n310_call_proc_staged_β
                                                                                        jmp   n315_suspend_α
n314_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "$clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n315_suspend_α:
                        lea              rax, [rip + n315_suspend_β]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_clause$2F2_γ
n315_suspend_β:
                                                                                        jmp   n314_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_β:
                                                                                        jmp   qword ptr [rbp + 576]
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_clause$2F2_res]
                        push             rax
                        mov              rax, [rbp + 632]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_ω:
                        mov              rax, [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$assert$2F4_α
proc_$assert$2F4_α:
                        .global          proc_$assert$2F4_α
                        .global          proc_$assert$2F4_β
                        .global          proc_$assert$2F4_γ
                        .global          proc_$assert$2F4_ω
                        sub              rsp, 1536
                        mov              [rsp + 1512], rcx
                        mov              [rsp + 1520], rdx
                        mov              [rsp + 1528], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1360
                        mov              edx, 1504
                        call             rt_jmp_frame_lexprep2@PLT
proc_$assert$2F4_α_body:
                        lea              rax, [rip + n377_suspend_β]
                        mov              qword ptr [rbp + 1360], rax
#-----------------------------------------------------------------------------------------------------------------------
n345_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx389_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx389_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx389_101
.Lx389_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx389_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_$assert$2F4_ω
                                                                                        jmp   n346_var_ref_α
n345_op11_β:
                                                                                        jmp   proc_$assert$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n347_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n348_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n348_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1296]
                        lea              r8, [rbp + 1296]
.Lx394_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx394_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx394_41
                        cmp              esi, 1
                                                                                        jne   .Lx394_55
                        mov              r8, rax
                                                                                        jmp   .Lx394_40
.Lx394_55:
                        cmp              esi, 2
                                                                                        jne   .Lx394_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx394_41
                        mov              r8, rax
                                                                                        jmp   .Lx394_40
.Lx394_56:
                        cmp              eax, 13
                                                                                        jne   .Lx394_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx394_41
                        cmp              rax, r8
                                                                                        je    .Lx394_41
                        mov              r8, rax
                                                                                        jmp   .Lx394_40
.Lx394_41:
                        lea              r9, [rbp + 1312]
.Lx394_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx394_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx394_43
                        cmp              esi, 1
                                                                                        jne   .Lx394_57
                        mov              r9, rax
                                                                                        jmp   .Lx394_42
.Lx394_57:
                        cmp              esi, 2
                                                                                        jne   .Lx394_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx394_43
                        mov              r9, rax
                                                                                        jmp   .Lx394_42
.Lx394_58:
                        cmp              eax, 13
                                                                                        jne   .Lx394_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx394_43
                        cmp              rax, r9
                                                                                        je    .Lx394_43
                        mov              r9, rax
                                                                                        jmp   .Lx394_42
.Lx394_43:
                        cmp              r8, r9
                                                                                        je    .Lx394_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx394_44
                        cmp              eax, 99
                                                                                        je    .Lx394_44
                        cmp              eax, 13
                                                                                        jne   .Lx394_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx394_44
                                                                                        jmp   .Lx394_45
.Lx394_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx394_53
                        cmp              eax, 99
                                                                                        je    .Lx394_53
                        cmp              eax, 13
                                                                                        jne   .Lx394_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx394_53
                                                                                        jmp   .Lx394_46
.Lx394_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx394_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx394_53
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
                                                                                        jmp   .Lx394_51
.Lx394_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx394_47
                        cmp              eax, 99
                                                                                        je    .Lx394_47
                        cmp              eax, 13
                                                                                        jne   .Lx394_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx394_47
                                                                                        jmp   .Lx394_48
.Lx394_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx394_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx394_53
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
                                                                                        jmp   .Lx394_51
.Lx394_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx394_49
                        cmp              edx, 14
                                                                                        je    .Lx394_53
                                                                                        jmp   .Lx394_52
.Lx394_49:
                        cmp              edx, 14
                                                                                        je    .Lx394_52
                        cmp              ecx, 7
                                                                                        je    .Lx394_53
                        cmp              edx, 7
                                                                                        je    .Lx394_53
                        cmp              ecx, 6
                                                                                        jne   .Lx394_50
                        cmp              edx, 6
                                                                                        jne   .Lx394_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx394_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx394_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx394_51
                                                                                        jmp   .Lx394_52
.Lx394_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx394_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx394_53
.Lx394_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx394_54
.Lx394_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx394_54
.Lx394_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx394_54:
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n350_op11_α
                                                                                        jmp   n349_var_ref_α
n348_op11_β:
                                                                                        jmp   n350_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n351_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n350_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    proc_$assert$2F4_ω
                                                                                        jmp   n352_var_ref_α
n350_op11_β:
                                                                                        jmp   proc_$assert$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n353_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n354_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n353_op11_α:
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
.Lx402_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx402_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_41
                        cmp              esi, 1
                                                                                        jne   .Lx402_55
                        mov              r8, rax
                                                                                        jmp   .Lx402_40
.Lx402_55:
                        cmp              esi, 2
                                                                                        jne   .Lx402_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx402_41
                        mov              r8, rax
                                                                                        jmp   .Lx402_40
.Lx402_56:
                        cmp              eax, 13
                                                                                        jne   .Lx402_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_41
                        cmp              rax, r8
                                                                                        je    .Lx402_41
                        mov              r8, rax
                                                                                        jmp   .Lx402_40
.Lx402_41:
                        lea              r9, [rbp + 1232]
.Lx402_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx402_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_43
                        cmp              esi, 1
                                                                                        jne   .Lx402_57
                        mov              r9, rax
                                                                                        jmp   .Lx402_42
.Lx402_57:
                        cmp              esi, 2
                                                                                        jne   .Lx402_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx402_43
                        mov              r9, rax
                                                                                        jmp   .Lx402_42
.Lx402_58:
                        cmp              eax, 13
                                                                                        jne   .Lx402_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_43
                        cmp              rax, r9
                                                                                        je    .Lx402_43
                        mov              r9, rax
                                                                                        jmp   .Lx402_42
.Lx402_43:
                        cmp              r8, r9
                                                                                        je    .Lx402_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx402_44
                        cmp              eax, 99
                                                                                        je    .Lx402_44
                        cmp              eax, 13
                                                                                        jne   .Lx402_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx402_44
                                                                                        jmp   .Lx402_45
.Lx402_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx402_53
                        cmp              eax, 99
                                                                                        je    .Lx402_53
                        cmp              eax, 13
                                                                                        jne   .Lx402_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx402_53
                                                                                        jmp   .Lx402_46
.Lx402_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx402_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx402_53
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
                                                                                        jmp   .Lx402_51
.Lx402_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx402_47
                        cmp              eax, 99
                                                                                        je    .Lx402_47
                        cmp              eax, 13
                                                                                        jne   .Lx402_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx402_47
                                                                                        jmp   .Lx402_48
.Lx402_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx402_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx402_53
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
                                                                                        jmp   .Lx402_51
.Lx402_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx402_49
                        cmp              edx, 14
                                                                                        je    .Lx402_53
                                                                                        jmp   .Lx402_52
.Lx402_49:
                        cmp              edx, 14
                                                                                        je    .Lx402_52
                        cmp              ecx, 7
                                                                                        je    .Lx402_53
                        cmp              edx, 7
                                                                                        je    .Lx402_53
                        cmp              ecx, 6
                                                                                        jne   .Lx402_50
                        cmp              edx, 6
                                                                                        jne   .Lx402_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx402_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx402_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx402_51
                                                                                        jmp   .Lx402_52
.Lx402_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx402_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx402_53
.Lx402_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx402_54
.Lx402_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx402_54
.Lx402_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx402_54:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n350_op11_α
                                                                                        jmp   n355_var_ref_α
n353_op11_β:
                                                                                        jmp   n350_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n356_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n357_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n356_op11_α:
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
.Lx407_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx407_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx407_41
                        cmp              esi, 1
                                                                                        jne   .Lx407_55
                        mov              r8, rax
                                                                                        jmp   .Lx407_40
.Lx407_55:
                        cmp              esi, 2
                                                                                        jne   .Lx407_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx407_41
                        mov              r8, rax
                                                                                        jmp   .Lx407_40
.Lx407_56:
                        cmp              eax, 13
                                                                                        jne   .Lx407_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx407_41
                        cmp              rax, r8
                                                                                        je    .Lx407_41
                        mov              r8, rax
                                                                                        jmp   .Lx407_40
.Lx407_41:
                        lea              r9, [rbp + 432]
.Lx407_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx407_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx407_43
                        cmp              esi, 1
                                                                                        jne   .Lx407_57
                        mov              r9, rax
                                                                                        jmp   .Lx407_42
.Lx407_57:
                        cmp              esi, 2
                                                                                        jne   .Lx407_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx407_43
                        mov              r9, rax
                                                                                        jmp   .Lx407_42
.Lx407_58:
                        cmp              eax, 13
                                                                                        jne   .Lx407_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx407_43
                        cmp              rax, r9
                                                                                        je    .Lx407_43
                        mov              r9, rax
                                                                                        jmp   .Lx407_42
.Lx407_43:
                        cmp              r8, r9
                                                                                        je    .Lx407_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx407_44
                        cmp              eax, 99
                                                                                        je    .Lx407_44
                        cmp              eax, 13
                                                                                        jne   .Lx407_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx407_44
                                                                                        jmp   .Lx407_45
.Lx407_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx407_53
                        cmp              eax, 99
                                                                                        je    .Lx407_53
                        cmp              eax, 13
                                                                                        jne   .Lx407_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx407_53
                                                                                        jmp   .Lx407_46
.Lx407_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx407_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx407_53
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
                                                                                        jmp   .Lx407_51
.Lx407_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx407_47
                        cmp              eax, 99
                                                                                        je    .Lx407_47
                        cmp              eax, 13
                                                                                        jne   .Lx407_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx407_47
                                                                                        jmp   .Lx407_48
.Lx407_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx407_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx407_53
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
                                                                                        jmp   .Lx407_51
.Lx407_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx407_49
                        cmp              edx, 14
                                                                                        je    .Lx407_53
                                                                                        jmp   .Lx407_52
.Lx407_49:
                        cmp              edx, 14
                                                                                        je    .Lx407_52
                        cmp              ecx, 7
                                                                                        je    .Lx407_53
                        cmp              edx, 7
                                                                                        je    .Lx407_53
                        cmp              ecx, 6
                                                                                        jne   .Lx407_50
                        cmp              edx, 6
                                                                                        jne   .Lx407_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx407_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx407_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx407_51
                                                                                        jmp   .Lx407_52
.Lx407_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx407_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx407_53
.Lx407_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx407_54
.Lx407_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx407_54
.Lx407_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx407_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n359_op11_α
                                                                                        jmp   n358_var_ref_α
n356_op11_β:
                                                                                        jmp   n359_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n357_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n361_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n359_op11_α:
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
                                                                                        je    proc_$assert$2F4_ω
                                                                                        jmp   proc_$assert$2F4_ω
n359_op11_β:
                                                                                        jmp   proc_$assert$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n360_op11_α:
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
.Lx413_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx413_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx413_41
                        cmp              esi, 1
                                                                                        jne   .Lx413_55
                        mov              r8, rax
                                                                                        jmp   .Lx413_40
.Lx413_55:
                        cmp              esi, 2
                                                                                        jne   .Lx413_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx413_41
                        mov              r8, rax
                                                                                        jmp   .Lx413_40
.Lx413_56:
                        cmp              eax, 13
                                                                                        jne   .Lx413_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx413_41
                        cmp              rax, r8
                                                                                        je    .Lx413_41
                        mov              r8, rax
                                                                                        jmp   .Lx413_40
.Lx413_41:
                        lea              r9, [rbp + 1152]
.Lx413_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx413_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx413_43
                        cmp              esi, 1
                                                                                        jne   .Lx413_57
                        mov              r9, rax
                                                                                        jmp   .Lx413_42
.Lx413_57:
                        cmp              esi, 2
                                                                                        jne   .Lx413_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx413_43
                        mov              r9, rax
                                                                                        jmp   .Lx413_42
.Lx413_58:
                        cmp              eax, 13
                                                                                        jne   .Lx413_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx413_43
                        cmp              rax, r9
                                                                                        je    .Lx413_43
                        mov              r9, rax
                                                                                        jmp   .Lx413_42
.Lx413_43:
                        cmp              r8, r9
                                                                                        je    .Lx413_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx413_44
                        cmp              eax, 99
                                                                                        je    .Lx413_44
                        cmp              eax, 13
                                                                                        jne   .Lx413_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx413_44
                                                                                        jmp   .Lx413_45
.Lx413_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx413_53
                        cmp              eax, 99
                                                                                        je    .Lx413_53
                        cmp              eax, 13
                                                                                        jne   .Lx413_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx413_53
                                                                                        jmp   .Lx413_46
.Lx413_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx413_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx413_53
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
                                                                                        jmp   .Lx413_51
.Lx413_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx413_47
                        cmp              eax, 99
                                                                                        je    .Lx413_47
                        cmp              eax, 13
                                                                                        jne   .Lx413_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx413_47
                                                                                        jmp   .Lx413_48
.Lx413_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx413_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx413_53
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
                                                                                        jmp   .Lx413_51
.Lx413_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx413_49
                        cmp              edx, 14
                                                                                        je    .Lx413_53
                                                                                        jmp   .Lx413_52
.Lx413_49:
                        cmp              edx, 14
                                                                                        je    .Lx413_52
                        cmp              ecx, 7
                                                                                        je    .Lx413_53
                        cmp              edx, 7
                                                                                        je    .Lx413_53
                        cmp              ecx, 6
                                                                                        jne   .Lx413_50
                        cmp              edx, 6
                                                                                        jne   .Lx413_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx413_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx413_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx413_51
                                                                                        jmp   .Lx413_52
.Lx413_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx413_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx413_53
.Lx413_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx413_54
.Lx413_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx413_54
.Lx413_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx413_54:
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n350_op11_α
                                                                                        jmp   n362_var_ref_α
n360_op11_β:
                                                                                        jmp   n350_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n363_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n364_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n363_op11_α:
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
.Lx418_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx418_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx418_41
                        cmp              esi, 1
                                                                                        jne   .Lx418_55
                        mov              r8, rax
                                                                                        jmp   .Lx418_40
.Lx418_55:
                        cmp              esi, 2
                                                                                        jne   .Lx418_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx418_41
                        mov              r8, rax
                                                                                        jmp   .Lx418_40
.Lx418_56:
                        cmp              eax, 13
                                                                                        jne   .Lx418_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx418_41
                        cmp              rax, r8
                                                                                        je    .Lx418_41
                        mov              r8, rax
                                                                                        jmp   .Lx418_40
.Lx418_41:
                        lea              r9, [rbp + 352]
.Lx418_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx418_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx418_43
                        cmp              esi, 1
                                                                                        jne   .Lx418_57
                        mov              r9, rax
                                                                                        jmp   .Lx418_42
.Lx418_57:
                        cmp              esi, 2
                                                                                        jne   .Lx418_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx418_43
                        mov              r9, rax
                                                                                        jmp   .Lx418_42
.Lx418_58:
                        cmp              eax, 13
                                                                                        jne   .Lx418_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx418_43
                        cmp              rax, r9
                                                                                        je    .Lx418_43
                        mov              r9, rax
                                                                                        jmp   .Lx418_42
.Lx418_43:
                        cmp              r8, r9
                                                                                        je    .Lx418_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx418_44
                        cmp              eax, 99
                                                                                        je    .Lx418_44
                        cmp              eax, 13
                                                                                        jne   .Lx418_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx418_44
                                                                                        jmp   .Lx418_45
.Lx418_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx418_53
                        cmp              eax, 99
                                                                                        je    .Lx418_53
                        cmp              eax, 13
                                                                                        jne   .Lx418_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx418_53
                                                                                        jmp   .Lx418_46
.Lx418_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx418_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx418_53
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
                                                                                        jmp   .Lx418_51
.Lx418_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx418_47
                        cmp              eax, 99
                                                                                        je    .Lx418_47
                        cmp              eax, 13
                                                                                        jne   .Lx418_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx418_47
                                                                                        jmp   .Lx418_48
.Lx418_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx418_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx418_53
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
                                                                                        jmp   .Lx418_51
.Lx418_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx418_49
                        cmp              edx, 14
                                                                                        je    .Lx418_53
                                                                                        jmp   .Lx418_52
.Lx418_49:
                        cmp              edx, 14
                                                                                        je    .Lx418_52
                        cmp              ecx, 7
                                                                                        je    .Lx418_53
                        cmp              edx, 7
                                                                                        je    .Lx418_53
                        cmp              ecx, 6
                                                                                        jne   .Lx418_50
                        cmp              edx, 6
                                                                                        jne   .Lx418_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx418_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx418_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx418_51
                                                                                        jmp   .Lx418_52
.Lx418_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx418_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx418_53
.Lx418_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx418_54
.Lx418_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx418_54
.Lx418_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx418_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n359_op11_α
                                                                                        jmp   n365_var_ref_α
n363_op11_β:
                                                                                        jmp   n359_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1472]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n366_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n367_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n366_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1056]
                        lea              r8, [rbp + 1056]
.Lx423_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx423_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx423_41
                        cmp              esi, 1
                                                                                        jne   .Lx423_55
                        mov              r8, rax
                                                                                        jmp   .Lx423_40
.Lx423_55:
                        cmp              esi, 2
                                                                                        jne   .Lx423_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx423_41
                        mov              r8, rax
                                                                                        jmp   .Lx423_40
.Lx423_56:
                        cmp              eax, 13
                                                                                        jne   .Lx423_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx423_41
                        cmp              rax, r8
                                                                                        je    .Lx423_41
                        mov              r8, rax
                                                                                        jmp   .Lx423_40
.Lx423_41:
                        lea              r9, [rbp + 1072]
.Lx423_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx423_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx423_43
                        cmp              esi, 1
                                                                                        jne   .Lx423_57
                        mov              r9, rax
                                                                                        jmp   .Lx423_42
.Lx423_57:
                        cmp              esi, 2
                                                                                        jne   .Lx423_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx423_43
                        mov              r9, rax
                                                                                        jmp   .Lx423_42
.Lx423_58:
                        cmp              eax, 13
                                                                                        jne   .Lx423_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx423_43
                        cmp              rax, r9
                                                                                        je    .Lx423_43
                        mov              r9, rax
                                                                                        jmp   .Lx423_42
.Lx423_43:
                        cmp              r8, r9
                                                                                        je    .Lx423_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx423_44
                        cmp              eax, 99
                                                                                        je    .Lx423_44
                        cmp              eax, 13
                                                                                        jne   .Lx423_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx423_44
                                                                                        jmp   .Lx423_45
.Lx423_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx423_53
                        cmp              eax, 99
                                                                                        je    .Lx423_53
                        cmp              eax, 13
                                                                                        jne   .Lx423_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx423_53
                                                                                        jmp   .Lx423_46
.Lx423_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx423_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx423_53
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
                                                                                        jmp   .Lx423_51
.Lx423_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx423_47
                        cmp              eax, 99
                                                                                        je    .Lx423_47
                        cmp              eax, 13
                                                                                        jne   .Lx423_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx423_47
                                                                                        jmp   .Lx423_48
.Lx423_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx423_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx423_53
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
                                                                                        jmp   .Lx423_51
.Lx423_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx423_49
                        cmp              edx, 14
                                                                                        je    .Lx423_53
                                                                                        jmp   .Lx423_52
.Lx423_49:
                        cmp              edx, 14
                                                                                        je    .Lx423_52
                        cmp              ecx, 7
                                                                                        je    .Lx423_53
                        cmp              edx, 7
                                                                                        je    .Lx423_53
                        cmp              ecx, 6
                                                                                        jne   .Lx423_50
                        cmp              edx, 6
                                                                                        jne   .Lx423_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx423_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx423_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx423_51
                                                                                        jmp   .Lx423_52
.Lx423_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx423_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx423_53
.Lx423_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx423_54
.Lx423_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx423_54
.Lx423_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx423_54:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n350_op11_α
                                                                                        jmp   n368_var_ref_α
n366_op11_β:
                                                                                        jmp   n350_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n369_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n370_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n369_op11_α:
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
.Lx428_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx428_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx428_41
                        cmp              esi, 1
                                                                                        jne   .Lx428_55
                        mov              r8, rax
                                                                                        jmp   .Lx428_40
.Lx428_55:
                        cmp              esi, 2
                                                                                        jne   .Lx428_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx428_41
                        mov              r8, rax
                                                                                        jmp   .Lx428_40
.Lx428_56:
                        cmp              eax, 13
                                                                                        jne   .Lx428_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx428_41
                        cmp              rax, r8
                                                                                        je    .Lx428_41
                        mov              r8, rax
                                                                                        jmp   .Lx428_40
.Lx428_41:
                        lea              r9, [rbp + 272]
.Lx428_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx428_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx428_43
                        cmp              esi, 1
                                                                                        jne   .Lx428_57
                        mov              r9, rax
                                                                                        jmp   .Lx428_42
.Lx428_57:
                        cmp              esi, 2
                                                                                        jne   .Lx428_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx428_43
                        mov              r9, rax
                                                                                        jmp   .Lx428_42
.Lx428_58:
                        cmp              eax, 13
                                                                                        jne   .Lx428_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx428_43
                        cmp              rax, r9
                                                                                        je    .Lx428_43
                        mov              r9, rax
                                                                                        jmp   .Lx428_42
.Lx428_43:
                        cmp              r8, r9
                                                                                        je    .Lx428_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx428_44
                        cmp              eax, 99
                                                                                        je    .Lx428_44
                        cmp              eax, 13
                                                                                        jne   .Lx428_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx428_44
                                                                                        jmp   .Lx428_45
.Lx428_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx428_53
                        cmp              eax, 99
                                                                                        je    .Lx428_53
                        cmp              eax, 13
                                                                                        jne   .Lx428_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx428_53
                                                                                        jmp   .Lx428_46
.Lx428_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx428_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx428_53
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
                                                                                        jmp   .Lx428_51
.Lx428_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx428_47
                        cmp              eax, 99
                                                                                        je    .Lx428_47
                        cmp              eax, 13
                                                                                        jne   .Lx428_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx428_47
                                                                                        jmp   .Lx428_48
.Lx428_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx428_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx428_53
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
                                                                                        jmp   .Lx428_51
.Lx428_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx428_49
                        cmp              edx, 14
                                                                                        je    .Lx428_53
                                                                                        jmp   .Lx428_52
.Lx428_49:
                        cmp              edx, 14
                                                                                        je    .Lx428_52
                        cmp              ecx, 7
                                                                                        je    .Lx428_53
                        cmp              edx, 7
                                                                                        je    .Lx428_53
                        cmp              ecx, 6
                                                                                        jne   .Lx428_50
                        cmp              edx, 6
                                                                                        jne   .Lx428_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx428_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx428_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx428_51
                                                                                        jmp   .Lx428_52
.Lx428_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx428_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx428_53
.Lx428_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx428_54
.Lx428_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx428_54
.Lx428_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx428_54:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n359_op11_α
                                                                                        jmp   n371_var_ref_α
n369_op11_β:
                                                                                        jmp   n359_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n372_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n373_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n372_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n374_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n375_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n374_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx438_20
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx438_21
.Lx438_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        call             rt_arg_stage@PLT
.Lx438_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx438_22
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx438_23
.Lx438_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        call             rt_arg_stage@PLT
.Lx438_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx438_24
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx438_25
.Lx438_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        call             rt_arg_stage@PLT
.Lx438_25:
                        mov              rdi, qword ptr [rip + .Lx438_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx438_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx438_3]
                        lea              rdx, [rip + .Lx438_4]
                                                                                        jmp   rax
.Lx438_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx438_2
.Lx438_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx438_2
.Lx438_1:
                        call             rt_faildescr@PLT
.Lx438_2:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n350_op11_α
                                                                                        jmp   n376_var_ref_α
n374_call_proc_staged_β:
                                                                                        jmp   n350_op11_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "$get_head_and_body/3"
#-----------------------------------------------------------------------------------------------------------------------
n375_op11_α:
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
.Lx439_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx439_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx439_41
                        cmp              esi, 1
                                                                                        jne   .Lx439_55
                        mov              r8, rax
                                                                                        jmp   .Lx439_40
.Lx439_55:
                        cmp              esi, 2
                                                                                        jne   .Lx439_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx439_41
                        mov              r8, rax
                                                                                        jmp   .Lx439_40
.Lx439_56:
                        cmp              eax, 13
                                                                                        jne   .Lx439_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx439_41
                        cmp              rax, r8
                                                                                        je    .Lx439_41
                        mov              r8, rax
                                                                                        jmp   .Lx439_40
.Lx439_41:
                        lea              r9, [rbp + 192]
.Lx439_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx439_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx439_43
                        cmp              esi, 1
                                                                                        jne   .Lx439_57
                        mov              r9, rax
                                                                                        jmp   .Lx439_42
.Lx439_57:
                        cmp              esi, 2
                                                                                        jne   .Lx439_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx439_43
                        mov              r9, rax
                                                                                        jmp   .Lx439_42
.Lx439_58:
                        cmp              eax, 13
                                                                                        jne   .Lx439_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx439_43
                        cmp              rax, r9
                                                                                        je    .Lx439_43
                        mov              r9, rax
                                                                                        jmp   .Lx439_42
.Lx439_43:
                        cmp              r8, r9
                                                                                        je    .Lx439_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx439_44
                        cmp              eax, 99
                                                                                        je    .Lx439_44
                        cmp              eax, 13
                                                                                        jne   .Lx439_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx439_44
                                                                                        jmp   .Lx439_45
.Lx439_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx439_53
                        cmp              eax, 99
                                                                                        je    .Lx439_53
                        cmp              eax, 13
                                                                                        jne   .Lx439_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx439_53
                                                                                        jmp   .Lx439_46
.Lx439_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx439_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx439_53
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
                                                                                        jmp   .Lx439_51
.Lx439_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx439_47
                        cmp              eax, 99
                                                                                        je    .Lx439_47
                        cmp              eax, 13
                                                                                        jne   .Lx439_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx439_47
                                                                                        jmp   .Lx439_48
.Lx439_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx439_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx439_53
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
                                                                                        jmp   .Lx439_51
.Lx439_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx439_49
                        cmp              edx, 14
                                                                                        je    .Lx439_53
                                                                                        jmp   .Lx439_52
.Lx439_49:
                        cmp              edx, 14
                                                                                        je    .Lx439_52
                        cmp              ecx, 7
                                                                                        je    .Lx439_53
                        cmp              edx, 7
                                                                                        je    .Lx439_53
                        cmp              ecx, 6
                                                                                        jne   .Lx439_50
                        cmp              edx, 6
                                                                                        jne   .Lx439_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx439_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx439_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx439_51
                                                                                        jmp   .Lx439_52
.Lx439_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx439_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx439_53
.Lx439_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx439_54
.Lx439_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx439_54
.Lx439_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx439_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n359_op11_α
                                                                                        jmp   n377_suspend_α
n375_op11_β:
                                                                                        jmp   n359_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n378_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n377_suspend_α:
                        lea              rax, [rip + n377_suspend_β]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$assert$2F4_γ
n377_suspend_β:
                                                                                        jmp   n359_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n379_var_ref_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n380_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n380_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx448_20
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx448_21
.Lx448_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        call             rt_arg_stage@PLT
.Lx448_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx448_22
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx448_23
.Lx448_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        call             rt_arg_stage@PLT
.Lx448_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx448_24
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx448_25
.Lx448_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        call             rt_arg_stage@PLT
.Lx448_25:
                        mov              rdi, qword ptr [rip + .Lx448_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx448_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx448_3]
                        lea              rdx, [rip + .Lx448_4]
                                                                                        jmp   rax
.Lx448_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx448_2
.Lx448_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx448_2
.Lx448_1:
                        call             rt_faildescr@PLT
.Lx448_2:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n374_call_proc_staged_β
                                                                                        jmp   n381_lit_string_α
n380_call_proc_staged_β:
                                                                                        jmp   n374_call_proc_staged_β
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "$term_to_goal/3"
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n382_var_ref_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "Pl_Assert_5"
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n383_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n384_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n385_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n386_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1472]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n387_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n387_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 6
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n350_op11_α
                                                                                        jmp   n388_call_proc_staged_α
n387_op11_β:
                                                                                        jmp   n350_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n388_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx462_20
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx462_21
.Lx462_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx462_21:
                        mov              rdi, qword ptr [rip + .Lx462_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx462_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx462_3]
                        lea              rdx, [rip + .Lx462_4]
                                                                                        jmp   rax
.Lx462_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx462_2
.Lx462_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx462_2
.Lx462_1:
                        call             rt_faildescr@PLT
.Lx462_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n380_call_proc_staged_β
                                                                                        jmp   n388_call_proc_staged_β
n388_call_proc_staged_β:
                                                                                        jmp   n380_call_proc_staged_β
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "$call_c/1"
#-----------------------------------------------------------------------------------------------------------------------
proc_$assert$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$assert$2F4_β:
                                                                                        jmp   qword ptr [rbp + 1360]
#-----------------------------------------------------------------------------------------------------------------------
proc_$assert$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$assert$2F4_res]
                        push             rax
                        mov              rax, [rbp + 1512]
                        mov              rbp, [rbp + 1528]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$assert$2F4_ω:
                        mov              rax, [rbp + 1520]
                        lea              rsp, [rbp + 1536]
                        mov              rbp, [rbp + 1528]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$retract$2F2_α
proc_$retract$2F2_α:
                        .global          proc_$retract$2F2_α
                        .global          proc_$retract$2F2_β
                        .global          proc_$retract$2F2_γ
                        .global          proc_$retract$2F2_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
proc_$retract$2F2_α_body:
                        lea              rax, [rip + n476_suspend_β]
                        mov              qword ptr [rbp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n463_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx477_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx477_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx477_101
.Lx477_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx477_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$retract$2F2_ω
                                                                                        jmp   n464_var_ref_α
n463_op11_β:
                                                                                        jmp   proc_$retract$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n464_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n465_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n465_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n466_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n466_op11_α:
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
                        lea              r9, [rbp + 400]
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
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n468_op11_α
                                                                                        jmp   n467_var_ref_α
n466_op11_β:
                                                                                        jmp   n468_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n469_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n468_op11_α:
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
                                                                                        je    proc_$retract$2F2_ω
                                                                                        jmp   proc_$retract$2F2_ω
n468_op11_β:
                                                                                        jmp   proc_$retract$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n470_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n470_op11_α:
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
                        lea              r9, [rbp + 320]
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n468_op11_α
                                                                                        jmp   n471_lit_string_α
n470_op11_β:
                                                                                        jmp   n468_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n472_var_ref_α
.Lx489_0:
                        .quad            .Lx489_0_s
.Lx489_0_s:
                        .string          "Pl_Retract_2"
#-----------------------------------------------------------------------------------------------------------------------
n472_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n473_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n474_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n474_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n468_op11_α
                                                                                        jmp   n475_call_proc_staged_α
n474_op11_β:
                                                                                        jmp   n468_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n475_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx496_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx496_21
.Lx496_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx496_21:
                        mov              rdi, qword ptr [rip + .Lx496_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx496_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx496_3]
                        lea              rdx, [rip + .Lx496_4]
                                                                                        jmp   rax
.Lx496_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx496_2
.Lx496_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx496_2
.Lx496_1:
                        call             rt_faildescr@PLT
.Lx496_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n468_op11_α
                                                                                        jmp   n476_suspend_α
n475_call_proc_staged_β:
                                                                                        jmp   n468_op11_α
.Lx496_0:
                        .quad            .Lx496_0_s
.Lx496_0_s:
                        .string          "$call_c_test/1"
#-----------------------------------------------------------------------------------------------------------------------
n476_suspend_α:
                        lea              rax, [rip + n476_suspend_β]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$retract$2F2_γ
n476_suspend_β:
                                                                                        jmp   n475_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$retract$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$retract$2F2_β:
                                                                                        jmp   qword ptr [rbp + 448]
#-----------------------------------------------------------------------------------------------------------------------
proc_$retract$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$retract$2F2_res]
                        push             rax
                        mov              rax, [rbp + 504]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$retract$2F2_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$remove_predicate$2F2_α
proc_$remove_predicate$2F2_α:
                        .global          proc_$remove_predicate$2F2_α
                        .global          proc_$remove_predicate$2F2_β
                        .global          proc_$remove_predicate$2F2_γ
                        .global          proc_$remove_predicate$2F2_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
proc_$remove_predicate$2F2_α_body:
                        lea              rax, [rip + n512_suspend_β]
                        mov              qword ptr [rbp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n499_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx513_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx513_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx513_101
.Lx513_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx513_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$remove_predicate$2F2_ω
                                                                                        jmp   n500_var_ref_α
n499_op11_β:
                                                                                        jmp   proc_$remove_predicate$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n501_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n502_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n502_op11_α:
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
.Lx518_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx518_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx518_41
                        cmp              esi, 1
                                                                                        jne   .Lx518_55
                        mov              r8, rax
                                                                                        jmp   .Lx518_40
.Lx518_55:
                        cmp              esi, 2
                                                                                        jne   .Lx518_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx518_41
                        mov              r8, rax
                                                                                        jmp   .Lx518_40
.Lx518_56:
                        cmp              eax, 13
                                                                                        jne   .Lx518_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx518_41
                        cmp              rax, r8
                                                                                        je    .Lx518_41
                        mov              r8, rax
                                                                                        jmp   .Lx518_40
.Lx518_41:
                        lea              r9, [rbp + 400]
.Lx518_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx518_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx518_43
                        cmp              esi, 1
                                                                                        jne   .Lx518_57
                        mov              r9, rax
                                                                                        jmp   .Lx518_42
.Lx518_57:
                        cmp              esi, 2
                                                                                        jne   .Lx518_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx518_43
                        mov              r9, rax
                                                                                        jmp   .Lx518_42
.Lx518_58:
                        cmp              eax, 13
                                                                                        jne   .Lx518_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx518_43
                        cmp              rax, r9
                                                                                        je    .Lx518_43
                        mov              r9, rax
                                                                                        jmp   .Lx518_42
.Lx518_43:
                        cmp              r8, r9
                                                                                        je    .Lx518_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx518_44
                        cmp              eax, 99
                                                                                        je    .Lx518_44
                        cmp              eax, 13
                                                                                        jne   .Lx518_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx518_44
                                                                                        jmp   .Lx518_45
.Lx518_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx518_53
                        cmp              eax, 99
                                                                                        je    .Lx518_53
                        cmp              eax, 13
                                                                                        jne   .Lx518_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx518_53
                                                                                        jmp   .Lx518_46
.Lx518_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx518_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx518_53
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
                                                                                        jmp   .Lx518_51
.Lx518_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx518_47
                        cmp              eax, 99
                                                                                        je    .Lx518_47
                        cmp              eax, 13
                                                                                        jne   .Lx518_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx518_47
                                                                                        jmp   .Lx518_48
.Lx518_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx518_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx518_53
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
                                                                                        jmp   .Lx518_51
.Lx518_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx518_49
                        cmp              edx, 14
                                                                                        je    .Lx518_53
                                                                                        jmp   .Lx518_52
.Lx518_49:
                        cmp              edx, 14
                                                                                        je    .Lx518_52
                        cmp              ecx, 7
                                                                                        je    .Lx518_53
                        cmp              edx, 7
                                                                                        je    .Lx518_53
                        cmp              ecx, 6
                                                                                        jne   .Lx518_50
                        cmp              edx, 6
                                                                                        jne   .Lx518_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx518_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx518_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx518_51
                                                                                        jmp   .Lx518_52
.Lx518_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx518_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx518_53
.Lx518_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx518_54
.Lx518_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx518_54
.Lx518_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx518_54:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n504_op11_α
                                                                                        jmp   n503_var_ref_α
n502_op11_β:
                                                                                        jmp   n504_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n505_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n504_op11_α:
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
                                                                                        je    proc_$remove_predicate$2F2_ω
                                                                                        jmp   proc_$remove_predicate$2F2_ω
n504_op11_β:
                                                                                        jmp   proc_$remove_predicate$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n506_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n506_op11_α:
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
.Lx524_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx524_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx524_41
                        cmp              esi, 1
                                                                                        jne   .Lx524_55
                        mov              r8, rax
                                                                                        jmp   .Lx524_40
.Lx524_55:
                        cmp              esi, 2
                                                                                        jne   .Lx524_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx524_41
                        mov              r8, rax
                                                                                        jmp   .Lx524_40
.Lx524_56:
                        cmp              eax, 13
                                                                                        jne   .Lx524_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx524_41
                        cmp              rax, r8
                                                                                        je    .Lx524_41
                        mov              r8, rax
                                                                                        jmp   .Lx524_40
.Lx524_41:
                        lea              r9, [rbp + 320]
.Lx524_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx524_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx524_43
                        cmp              esi, 1
                                                                                        jne   .Lx524_57
                        mov              r9, rax
                                                                                        jmp   .Lx524_42
.Lx524_57:
                        cmp              esi, 2
                                                                                        jne   .Lx524_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx524_43
                        mov              r9, rax
                                                                                        jmp   .Lx524_42
.Lx524_58:
                        cmp              eax, 13
                                                                                        jne   .Lx524_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx524_43
                        cmp              rax, r9
                                                                                        je    .Lx524_43
                        mov              r9, rax
                                                                                        jmp   .Lx524_42
.Lx524_43:
                        cmp              r8, r9
                                                                                        je    .Lx524_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx524_44
                        cmp              eax, 99
                                                                                        je    .Lx524_44
                        cmp              eax, 13
                                                                                        jne   .Lx524_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx524_44
                                                                                        jmp   .Lx524_45
.Lx524_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx524_53
                        cmp              eax, 99
                                                                                        je    .Lx524_53
                        cmp              eax, 13
                                                                                        jne   .Lx524_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx524_53
                                                                                        jmp   .Lx524_46
.Lx524_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx524_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx524_53
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
                                                                                        jmp   .Lx524_51
.Lx524_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx524_47
                        cmp              eax, 99
                                                                                        je    .Lx524_47
                        cmp              eax, 13
                                                                                        jne   .Lx524_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx524_47
                                                                                        jmp   .Lx524_48
.Lx524_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx524_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx524_53
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
                                                                                        jmp   .Lx524_51
.Lx524_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx524_49
                        cmp              edx, 14
                                                                                        je    .Lx524_53
                                                                                        jmp   .Lx524_52
.Lx524_49:
                        cmp              edx, 14
                                                                                        je    .Lx524_52
                        cmp              ecx, 7
                                                                                        je    .Lx524_53
                        cmp              edx, 7
                                                                                        je    .Lx524_53
                        cmp              ecx, 6
                                                                                        jne   .Lx524_50
                        cmp              edx, 6
                                                                                        jne   .Lx524_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx524_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx524_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx524_51
                                                                                        jmp   .Lx524_52
.Lx524_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx524_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx524_53
.Lx524_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx524_54
.Lx524_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx524_54
.Lx524_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx524_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n504_op11_α
                                                                                        jmp   n507_lit_string_α
n506_op11_β:
                                                                                        jmp   n504_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n507_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n508_var_ref_α
.Lx525_0:
                        .quad            .Lx525_0_s
.Lx525_0_s:
                        .string          "Pl_Remove_Predicate_2"
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n509_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n510_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n510_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n504_op11_α
                                                                                        jmp   n511_call_proc_staged_α
n510_op11_β:
                                                                                        jmp   n504_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n511_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx532_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx532_21
.Lx532_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx532_21:
                        mov              rdi, qword ptr [rip + .Lx532_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx532_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx532_3]
                        lea              rdx, [rip + .Lx532_4]
                                                                                        jmp   rax
.Lx532_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx532_2
.Lx532_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx532_2
.Lx532_1:
                        call             rt_faildescr@PLT
.Lx532_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n504_op11_α
                                                                                        jmp   n512_suspend_α
n511_call_proc_staged_β:
                                                                                        jmp   n504_op11_α
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "$call_c/1"
#-----------------------------------------------------------------------------------------------------------------------
n512_suspend_α:
                        lea              rax, [rip + n512_suspend_β]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$remove_predicate$2F2_γ
n512_suspend_β:
                                                                                        jmp   n511_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$remove_predicate$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$remove_predicate$2F2_β:
                                                                                        jmp   qword ptr [rbp + 448]
#-----------------------------------------------------------------------------------------------------------------------
proc_$remove_predicate$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$remove_predicate$2F2_res]
                        push             rax
                        mov              rax, [rbp + 504]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$remove_predicate$2F2_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_retract$2F1_α
proc_retract$2F1_α:
                        .global          proc_retract$2F1_α
                        .global          proc_retract$2F1_β
                        .global          proc_retract$2F1_γ
                        .global          proc_retract$2F1_ω
                        sub              rsp, 608
                        mov              [rsp + 584], rcx
                        mov              [rsp + 592], rdx
                        mov              [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
proc_retract$2F1_α_body:
                        lea              rax, [rip + n550_suspend_β]
                        mov              qword ptr [rbp + 512], rax
#-----------------------------------------------------------------------------------------------------------------------
n535_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx551_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx551_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx551_101
.Lx551_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx551_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_retract$2F1_ω
                                                                                        jmp   n536_var_ref_α
n535_op11_β:
                                                                                        jmp   proc_retract$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n537_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n538_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n538_op11_α:
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
.Lx556_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx556_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx556_41
                        cmp              esi, 1
                                                                                        jne   .Lx556_55
                        mov              r8, rax
                                                                                        jmp   .Lx556_40
.Lx556_55:
                        cmp              esi, 2
                                                                                        jne   .Lx556_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx556_41
                        mov              r8, rax
                                                                                        jmp   .Lx556_40
.Lx556_56:
                        cmp              eax, 13
                                                                                        jne   .Lx556_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx556_41
                        cmp              rax, r8
                                                                                        je    .Lx556_41
                        mov              r8, rax
                                                                                        jmp   .Lx556_40
.Lx556_41:
                        lea              r9, [rbp + 464]
.Lx556_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx556_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx556_43
                        cmp              esi, 1
                                                                                        jne   .Lx556_57
                        mov              r9, rax
                                                                                        jmp   .Lx556_42
.Lx556_57:
                        cmp              esi, 2
                                                                                        jne   .Lx556_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx556_43
                        mov              r9, rax
                                                                                        jmp   .Lx556_42
.Lx556_58:
                        cmp              eax, 13
                                                                                        jne   .Lx556_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx556_43
                        cmp              rax, r9
                                                                                        je    .Lx556_43
                        mov              r9, rax
                                                                                        jmp   .Lx556_42
.Lx556_43:
                        cmp              r8, r9
                                                                                        je    .Lx556_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx556_44
                        cmp              eax, 99
                                                                                        je    .Lx556_44
                        cmp              eax, 13
                                                                                        jne   .Lx556_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx556_44
                                                                                        jmp   .Lx556_45
.Lx556_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx556_53
                        cmp              eax, 99
                                                                                        je    .Lx556_53
                        cmp              eax, 13
                                                                                        jne   .Lx556_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx556_53
                                                                                        jmp   .Lx556_46
.Lx556_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx556_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx556_53
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
                                                                                        jmp   .Lx556_51
.Lx556_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx556_47
                        cmp              eax, 99
                                                                                        je    .Lx556_47
                        cmp              eax, 13
                                                                                        jne   .Lx556_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx556_47
                                                                                        jmp   .Lx556_48
.Lx556_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx556_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx556_53
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
                                                                                        jmp   .Lx556_51
.Lx556_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx556_49
                        cmp              edx, 14
                                                                                        je    .Lx556_53
                                                                                        jmp   .Lx556_52
.Lx556_49:
                        cmp              edx, 14
                                                                                        je    .Lx556_52
                        cmp              ecx, 7
                                                                                        je    .Lx556_53
                        cmp              edx, 7
                                                                                        je    .Lx556_53
                        cmp              ecx, 6
                                                                                        jne   .Lx556_50
                        cmp              edx, 6
                                                                                        jne   .Lx556_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx556_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx556_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx556_51
                                                                                        jmp   .Lx556_52
.Lx556_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx556_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx556_53
.Lx556_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx556_54
.Lx556_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx556_54
.Lx556_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx556_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n539_lit_string_α
n538_op11_β:
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n539_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n541_lit_integer_α
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "retract"
#-----------------------------------------------------------------------------------------------------------------------
n540_op11_α:
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
                                                                                        je    proc_retract$2F1_ω
                                                                                        jmp   proc_retract$2F1_ω
n540_op11_β:
                                                                                        jmp   proc_retract$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n542_call_proc_staged_α
.Lx559_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n542_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx561_20
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx561_21
.Lx561_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx561_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx561_22
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx561_23
.Lx561_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        call             rt_arg_stage@PLT
.Lx561_23:
                        mov              rdi, qword ptr [rip + .Lx561_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx561_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx561_3]
                        lea              rdx, [rip + .Lx561_4]
                                                                                        jmp   rax
.Lx561_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx561_2
.Lx561_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx561_2
.Lx561_1:
                        call             rt_faildescr@PLT
.Lx561_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n540_op11_α
                                                                                        jmp   n543_var_ref_α
n542_call_proc_staged_β:
                                                                                        jmp   n540_op11_α
.Lx561_0:
                        .quad            .Lx561_0_s
.Lx561_0_s:
                        .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n543_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n544_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n545_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n545_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n546_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n546_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx569_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx569_21
.Lx569_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx569_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx569_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx569_23
.Lx569_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx569_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx569_24
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx569_25
.Lx569_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx569_25:
                        mov              rdi, qword ptr [rip + .Lx569_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx569_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx569_3]
                        lea              rdx, [rip + .Lx569_4]
                                                                                        jmp   rax
.Lx569_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx569_2
.Lx569_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx569_2
.Lx569_1:
                        call             rt_faildescr@PLT
.Lx569_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n542_call_proc_staged_β
                                                                                        jmp   n547_var_ref_α
n546_call_proc_staged_β:
                                                                                        jmp   n542_call_proc_staged_β
.Lx569_0:
                        .quad            .Lx569_0_s
.Lx569_0_s:
                        .string          "$get_head_and_body/3"
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n548_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n548_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 544]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n549_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n549_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx575_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx575_21
.Lx575_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx575_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx575_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx575_23
.Lx575_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx575_23:
                        mov              edi, 13
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx575_1
                        lea              rcx, [rip + .Lx575_3]
                        lea              rdx, [rip + .Lx575_4]
                                                                                        jmp   rax
.Lx575_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx575_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx575_2
.Lx575_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx575_2
.Lx575_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx575_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx575_2
.Lx575_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx575_2
.Lx575_1:
                        call             rt_faildescr@PLT
.Lx575_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n546_call_proc_staged_β
                                                                                        jmp   n550_suspend_α
n549_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx575_0:
                        .quad            .Lx575_0_s
.Lx575_0_s:
                        .string          "$retract/2"
#-----------------------------------------------------------------------------------------------------------------------
n550_suspend_α:
                        lea              rax, [rip + n550_suspend_β]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_retract$2F1_γ
n550_suspend_β:
                                                                                        jmp   n549_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_retract$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_retract$2F1_β:
                                                                                        jmp   qword ptr [rbp + 512]
#-----------------------------------------------------------------------------------------------------------------------
proc_retract$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_retract$2F1_res]
                        push             rax
                        mov              rax, [rbp + 584]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_retract$2F1_ω:
                        mov              rax, [rbp + 592]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_5$2F0_α
proc_pj_dir_5$2F0_α:
                        .global          proc_pj_dir_5$2F0_α
                        .global          proc_pj_dir_5$2F0_β
                        .global          proc_pj_dir_5$2F0_γ
                        .global          proc_pj_dir_5$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n584_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n578_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx585_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx585_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx585_101
.Lx585_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx585_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n579_lit_string_α
n578_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n580_lit_string_α
.Lx586_0:
                        .quad            .Lx586_0_s
.Lx586_0_s:
                        .string          "abolish"
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n581_op11_α
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n581_op11_α:
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
                                                                                        je    n583_op11_α
                                                                                        jmp   n582_call_proc_staged_α
n581_op11_β:
                                                                                        jmp   n583_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n582_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx590_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx590_21
.Lx590_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx590_21:
                        mov              rdi, qword ptr [rip + .Lx590_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx590_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx590_3]
                        lea              rdx, [rip + .Lx590_4]
                                                                                        jmp   rax
.Lx590_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx590_2
.Lx590_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx590_2
.Lx590_1:
                        call             rt_faildescr@PLT
.Lx590_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n583_op11_α
                                                                                        jmp   n584_suspend_α
n582_call_proc_staged_β:
                                                                                        jmp   n583_op11_α
.Lx590_0:
                        .quad            .Lx590_0_s
.Lx590_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n583_op11_α:
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
n583_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n584_suspend_α:
                        lea              rax, [rip + n584_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_5$2F0_γ
n584_suspend_β:
                                                                                        jmp   n582_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_5$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
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
                        lea              rax, [rip + n600_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n594_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx601_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx601_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx601_101
.Lx601_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx601_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n595_lit_string_α
n594_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n596_lit_string_α
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "retractall"
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n597_op11_α
.Lx603_0:
                        .quad            .Lx603_0_s
.Lx603_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n597_op11_α:
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
                                                                                        je    n599_op11_α
                                                                                        jmp   n598_call_proc_staged_α
n597_op11_β:
                                                                                        jmp   n599_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n598_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx606_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx606_21
.Lx606_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx606_21:
                        mov              rdi, qword ptr [rip + .Lx606_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx606_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx606_3]
                        lea              rdx, [rip + .Lx606_4]
                                                                                        jmp   rax
.Lx606_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx606_2
.Lx606_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx606_2
.Lx606_1:
                        call             rt_faildescr@PLT
.Lx606_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n599_op11_α
                                                                                        jmp   n600_suspend_α
n598_call_proc_staged_β:
                                                                                        jmp   n599_op11_α
.Lx606_0:
                        .quad            .Lx606_0_s
.Lx606_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n599_op11_α:
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
n599_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n600_suspend_α:
                        lea              rax, [rip + n600_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n600_suspend_β:
                                                                                        jmp   n598_call_proc_staged_β
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
                        lea              rax, [rip + n616_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n610_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx617_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx617_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx617_101
.Lx617_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx617_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n611_lit_string_α
n610_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n611_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n612_lit_string_α
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          "assertz"
#-----------------------------------------------------------------------------------------------------------------------
n612_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n613_op11_α
.Lx619_0:
                        .quad            .Lx619_0_s
.Lx619_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n613_op11_α:
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
                                                                                        je    n615_op11_α
                                                                                        jmp   n614_call_proc_staged_α
n613_op11_β:
                                                                                        jmp   n615_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n614_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx622_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx622_21
.Lx622_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx622_21:
                        mov              rdi, qword ptr [rip + .Lx622_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx622_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx622_3]
                        lea              rdx, [rip + .Lx622_4]
                                                                                        jmp   rax
.Lx622_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx622_2
.Lx622_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx622_2
.Lx622_1:
                        call             rt_faildescr@PLT
.Lx622_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n615_op11_α
                                                                                        jmp   n616_suspend_α
n614_call_proc_staged_β:
                                                                                        jmp   n615_op11_α
.Lx622_0:
                        .quad            .Lx622_0_s
.Lx622_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n615_op11_α:
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
n615_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n616_suspend_α:
                        lea              rax, [rip + n616_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n616_suspend_β:
                                                                                        jmp   n614_call_proc_staged_β
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
                        .globl           proc_$3A$2F0_α
proc_$3A$2F0_α:
                        .global          proc_$3A$2F0_α
                        .global          proc_$3A$2F0_β
                        .global          proc_$3A$2F0_γ
                        .global          proc_$3A$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 80
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_$3A$2F0_α_body:
                        lea              rax, [rip + n628_suspend_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n627_call_builtin_gen_α
.Lx629_0:
                        .quad            .Lx629_0_s
.Lx629_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n627_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              qword ptr [rbp + 48], 0
.Lx630_60:
                        .section         .rodata
.Lbynamegenfn250:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn250]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        lea              rcx, [rbp + 48]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$3A$2F0_ω
                                                                                        jmp   n628_suspend_α
n627_call_builtin_gen_β:
                                                                                        jmp   .Lx630_60
#-----------------------------------------------------------------------------------------------------------------------
n628_suspend_α:
                        lea              rax, [rip + n628_suspend_β]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$3A$2F0_γ
n628_suspend_β:
                                                                                        jmp   n627_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F0_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$3A$2F0_res]
                        push             rax
                        mov              rax, [rbp + 104]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$use_assert/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$use_assert$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$use_assert$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$clause/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$clause$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 640
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "retractall/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_retractall$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 816
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$scan_dyn_test_alt/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_$scan_dyn_test_alt$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "assertz/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_assertz$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "$scan_dyn_jump_alt/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_$scan_dyn_jump_alt$2F0_α]
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
.Lstartup_pname6:       .string          "asserta/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_asserta$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "abolish/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_abolish$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 448
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
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
                        .section         .rodata
.Lstartup_pname9:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "clause/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_clause$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 624
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "$assert/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_$assert$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1504
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "$retract/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_$retract$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "$remove_predicate/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_$remove_predicate$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "retract/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_retract$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 576
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "pj_dir_5/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_pj_dir_5$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
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
.Lstartup_pname19:      .string          ":/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_$3A$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
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
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n633_lit_string_α:
                        mov              qword ptr [rsp + 128], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n634_lit_string_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "abolish"
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n635_op11_α
.Lx638_0:
                        .quad            .Lx638_0_s
.Lx638_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n635_op11_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n636_call_proc_staged_α
n635_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n636_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx641_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx641_21
.Lx641_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        call             rt_arg_stage@PLT
.Lx641_21:
                        mov              rdi, qword ptr [rip + .Lx641_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx641_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx641_3]
                        lea              rdx, [rip + .Lx641_4]
                                                                                        jmp   rax
.Lx641_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx641_2
.Lx641_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx641_2
.Lx641_1:
                        call             rt_faildescr@PLT
.Lx641_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n636_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 152
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 152
                        ret
                        .section         .note.GNU-stack,"",@progbits
