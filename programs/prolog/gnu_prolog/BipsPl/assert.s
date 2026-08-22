                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__$use_assert$2F0:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 112
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$use_assert$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx4_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx4_101
.Lx4_102:               lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx4_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx4_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx4_101
.Lx4_100:               lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx4_101:               mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    $use_assert$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_move_label_α
n0_call_builtin_prolog_β:
                                                                              jmp   $use_assert$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_move_label_α:        lea              rax, [rip + n3_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   $use_assert$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:       mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    $use_assert$2F0_ω
                                                                              jmp   rax
n2_disjunction_β:                                                             jmp   $use_assert$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    $use_assert$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $use_assert$2F0_ω
n3_call_builtin_prolog_β:
                                                                              jmp   $use_assert$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
$use_assert$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$use_assert$2F0_β:
                                                                              jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
$use_assert$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$use_assert$2F0_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$use_assert$2F0_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx10_2]
                        lea              rdx, [rip + .Lx10_3];                jmp   FN__$use_assert$2F0
.Lx10_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx10_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__$clause$2F3:
                        sub              rsp, 688
                        mov              qword ptr [rsp + 664], rcx
                        mov              qword ptr [rsp + 672], rdx
                        mov              qword ptr [rsp + 680], rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$clause$2F3_α_body:
                        lea              rax, [rip + n27_suspend_β]
                        mov              qword ptr [rsp + 576], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx29_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx29_101
.Lx29_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx29_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx29_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx29_101
.Lx29_100:              lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx29_101:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    $clause$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                                                                              jmp   $clause$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        lea              r8, [rsp + 512]
.Lx34_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx34_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx34_41
                        cmp              esi, 1;                              jne   .Lx34_55
                        mov              r8, rax;                             jmp   .Lx34_40
.Lx34_55:               cmp              esi, 2;                              jne   .Lx34_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx34_41
                        mov              r8, rax;                             jmp   .Lx34_40
.Lx34_56:               cmp              al, 72;                              jne   .Lx34_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx34_41
                        cmp              rax, r8;                             je    .Lx34_41
                        mov              r8, rax;                             jmp   .Lx34_40
.Lx34_41:               lea              r9, [rsp + 528]
.Lx34_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx34_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx34_43
                        cmp              esi, 1;                              jne   .Lx34_57
                        mov              r9, rax;                             jmp   .Lx34_42
.Lx34_57:               cmp              esi, 2;                              jne   .Lx34_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx34_43
                        mov              r9, rax;                             jmp   .Lx34_42
.Lx34_58:               cmp              al, 72;                              jne   .Lx34_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx34_43
                        cmp              rax, r9;                             je    .Lx34_43
                        mov              r9, rax;                             jmp   .Lx34_42
.Lx34_43:               cmp              r8, r9;                              je    .Lx34_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx34_44
                        cmp              al, 104;                             je    .Lx34_44
                        cmp              al, 72;                              jne   .Lx34_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx34_44
                                                                              jmp   .Lx34_45
.Lx34_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx34_53
                        cmp              al, 104;                             je    .Lx34_53
                        cmp              al, 72;                              jne   .Lx34_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx34_53
                                                                              jmp   .Lx34_46
.Lx34_46:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx34_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx34_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx34_51
.Lx34_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx34_47
                        cmp              al, 104;                             je    .Lx34_47
                        cmp              al, 72;                              jne   .Lx34_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx34_47
                                                                              jmp   .Lx34_48
.Lx34_47:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx34_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx34_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx34_51
.Lx34_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx34_49
                        cmp              dl, 80;                              je    .Lx34_53
                                                                              jmp   .Lx34_52
.Lx34_49:               cmp              dl, 80;                              je    .Lx34_52
                        cmp              cl, 5;                               je    .Lx34_53
                        cmp              dl, 5;                               je    .Lx34_53
                        cmp              cl, 3;                               jne   .Lx34_50
                        cmp              dl, 3;                               jne   .Lx34_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx34_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx34_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx34_51
                                                                              jmp   .Lx34_52
.Lx34_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx34_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx34_53
.Lx34_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx34_54
.Lx34_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx34_54
.Lx34_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx34_54:               mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_var_ref_α
n14_call_builtin_prolog_β:
                                                                              jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 608]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        lea              r8, [rsp + 432]
.Lx39_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx39_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx39_41
                        cmp              esi, 1;                              jne   .Lx39_55
                        mov              r8, rax;                             jmp   .Lx39_40
.Lx39_55:               cmp              esi, 2;                              jne   .Lx39_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx39_41
                        mov              r8, rax;                             jmp   .Lx39_40
.Lx39_56:               cmp              al, 72;                              jne   .Lx39_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx39_41
                        cmp              rax, r8;                             je    .Lx39_41
                        mov              r8, rax;                             jmp   .Lx39_40
.Lx39_41:               lea              r9, [rsp + 448]
.Lx39_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx39_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx39_43
                        cmp              esi, 1;                              jne   .Lx39_57
                        mov              r9, rax;                             jmp   .Lx39_42
.Lx39_57:               cmp              esi, 2;                              jne   .Lx39_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx39_43
                        mov              r9, rax;                             jmp   .Lx39_42
.Lx39_58:               cmp              al, 72;                              jne   .Lx39_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx39_43
                        cmp              rax, r9;                             je    .Lx39_43
                        mov              r9, rax;                             jmp   .Lx39_42
.Lx39_43:               cmp              r8, r9;                              je    .Lx39_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx39_44
                        cmp              al, 104;                             je    .Lx39_44
                        cmp              al, 72;                              jne   .Lx39_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx39_44
                                                                              jmp   .Lx39_45
.Lx39_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx39_53
                        cmp              al, 104;                             je    .Lx39_53
                        cmp              al, 72;                              jne   .Lx39_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx39_53
                                                                              jmp   .Lx39_46
.Lx39_46:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx39_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx39_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx39_51
.Lx39_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx39_47
                        cmp              al, 104;                             je    .Lx39_47
                        cmp              al, 72;                              jne   .Lx39_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx39_47
                                                                              jmp   .Lx39_48
.Lx39_47:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx39_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx39_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx39_51
.Lx39_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx39_49
                        cmp              dl, 80;                              je    .Lx39_53
                                                                              jmp   .Lx39_52
.Lx39_49:               cmp              dl, 80;                              je    .Lx39_52
                        cmp              cl, 5;                               je    .Lx39_53
                        cmp              dl, 5;                               je    .Lx39_53
                        cmp              cl, 3;                               jne   .Lx39_50
                        cmp              dl, 3;                               jne   .Lx39_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx39_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx39_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx39_51
                                                                              jmp   .Lx39_52
.Lx39_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx39_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx39_53
.Lx39_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx39_54
.Lx39_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx39_54
.Lx39_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx39_54:               mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_var_ref_α
n17_call_builtin_prolog_β:
                                                                              jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 624]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        lea              r8, [rsp + 352]
.Lx44_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx44_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx44_41
                        cmp              esi, 1;                              jne   .Lx44_55
                        mov              r8, rax;                             jmp   .Lx44_40
.Lx44_55:               cmp              esi, 2;                              jne   .Lx44_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx44_41
                        mov              r8, rax;                             jmp   .Lx44_40
.Lx44_56:               cmp              al, 72;                              jne   .Lx44_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx44_41
                        cmp              rax, r8;                             je    .Lx44_41
                        mov              r8, rax;                             jmp   .Lx44_40
.Lx44_41:               lea              r9, [rsp + 368]
.Lx44_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx44_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx44_43
                        cmp              esi, 1;                              jne   .Lx44_57
                        mov              r9, rax;                             jmp   .Lx44_42
.Lx44_57:               cmp              esi, 2;                              jne   .Lx44_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx44_43
                        mov              r9, rax;                             jmp   .Lx44_42
.Lx44_58:               cmp              al, 72;                              jne   .Lx44_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx44_43
                        cmp              rax, r9;                             je    .Lx44_43
                        mov              r9, rax;                             jmp   .Lx44_42
.Lx44_43:               cmp              r8, r9;                              je    .Lx44_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx44_44
                        cmp              al, 104;                             je    .Lx44_44
                        cmp              al, 72;                              jne   .Lx44_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx44_44
                                                                              jmp   .Lx44_45
.Lx44_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx44_53
                        cmp              al, 104;                             je    .Lx44_53
                        cmp              al, 72;                              jne   .Lx44_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx44_53
                                                                              jmp   .Lx44_46
.Lx44_46:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx44_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx44_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx44_51
.Lx44_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx44_47
                        cmp              al, 104;                             je    .Lx44_47
                        cmp              al, 72;                              jne   .Lx44_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx44_47
                                                                              jmp   .Lx44_48
.Lx44_47:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx44_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx44_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx44_51
.Lx44_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx44_49
                        cmp              dl, 80;                              je    .Lx44_53
                                                                              jmp   .Lx44_52
.Lx44_49:               cmp              dl, 80;                              je    .Lx44_52
                        cmp              cl, 5;                               je    .Lx44_53
                        cmp              dl, 5;                               je    .Lx44_53
                        cmp              cl, 3;                               jne   .Lx44_50
                        cmp              dl, 3;                               jne   .Lx44_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx44_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx44_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx44_51
                                                                              jmp   .Lx44_52
.Lx44_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx44_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx44_53
.Lx44_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx44_54
.Lx44_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx44_54
.Lx44_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx44_54:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_lit_string_α
n20_call_builtin_prolog_β:
                                                                              jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 11
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n22_var_ref_α
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "Pl_Clause_3"
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 608]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 624]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n25_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_call_proc_staged_α
n25_call_builtin_prolog_β:
                                                                              jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx54_20
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx54_21
.Lx54_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx54_21:               mov              rdi, qword ptr [rip + .Lx54_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx54_1
                        mov              rdi, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx54_4]                 # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx54_3]
                        push             rcx
                        lea              rcx, [rip + .Lx54_3]
                        lea              rdx, [rip + .Lx54_4];                jmp   rax
.Lx54_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx54_2
.Lx54_4:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx54_2
.Lx54_1:                call             rt_faildescr@PLT
.Lx54_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx54_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx54_29:               mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n28_call_builtin_prolog_α
                                                                              jmp   n27_suspend_α
n26_call_proc_staged_β:                                                       jmp   n28_call_builtin_prolog_α
.Lx54_0:                .quad            .Lx54_0_s
.Lx54_0_s:              .string          "$call_c_test/1"
#-----------------------------------------------------------------------------------------------------------------------
n27_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx56_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx56_61:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n27_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n27_suspend_β]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   $clause$2F3_γ
n27_suspend_β:                                                                jmp   n26_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    $clause$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $clause$2F3_ω
n28_call_builtin_prolog_β:
                                                                              jmp   $clause$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
$clause$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$clause$2F3_β:
                                                                              jmp   n27_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$clause$2F3_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx57_50
                        mov              qword ptr [rsp + 576], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx57_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 664]
                        add              rsp, 688;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$clause$2F3_ω:
                        mov              rcx, qword ptr [rsp + 672]
                        add              rsp, 688;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__retractall$2F1:
                        sub              rsp, 864
                        mov              qword ptr [rsp + 840], rcx
                        mov              qword ptr [rsp + 848], rdx
                        mov              qword ptr [rsp + 856], rsp
                        mov              rdi, rsp
                        mov              esi, 768
                        mov              edx, 832
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
retractall$2F1_α_body:
                        lea              rax, [rip + n70_suspend_β]
                        mov              qword ptr [rsp + 768], rax
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx84_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx84_101
.Lx84_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx84_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx84_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx84_101
.Lx84_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx84_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    retractall$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_var_ref_α
n58_call_builtin_prolog_β:
                                                                              jmp   retractall$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n60_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        lea              r8, [rsp + 704]
.Lx89_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx89_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx89_41
                        cmp              esi, 1;                              jne   .Lx89_55
                        mov              r8, rax;                             jmp   .Lx89_40
.Lx89_55:               cmp              esi, 2;                              jne   .Lx89_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx89_41
                        mov              r8, rax;                             jmp   .Lx89_40
.Lx89_56:               cmp              al, 72;                              jne   .Lx89_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx89_41
                        cmp              rax, r8;                             je    .Lx89_41
                        mov              r8, rax;                             jmp   .Lx89_40
.Lx89_41:               lea              r9, [rsp + 720]
.Lx89_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx89_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx89_43
                        cmp              esi, 1;                              jne   .Lx89_57
                        mov              r9, rax;                             jmp   .Lx89_42
.Lx89_57:               cmp              esi, 2;                              jne   .Lx89_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx89_43
                        mov              r9, rax;                             jmp   .Lx89_42
.Lx89_58:               cmp              al, 72;                              jne   .Lx89_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx89_43
                        cmp              rax, r9;                             je    .Lx89_43
                        mov              r9, rax;                             jmp   .Lx89_42
.Lx89_43:               cmp              r8, r9;                              je    .Lx89_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx89_44
                        cmp              al, 104;                             je    .Lx89_44
                        cmp              al, 72;                              jne   .Lx89_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx89_44
                                                                              jmp   .Lx89_45
.Lx89_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx89_53
                        cmp              al, 104;                             je    .Lx89_53
                        cmp              al, 72;                              jne   .Lx89_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx89_53
                                                                              jmp   .Lx89_46
.Lx89_46:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx89_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx89_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx89_51
.Lx89_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx89_47
                        cmp              al, 104;                             je    .Lx89_47
                        cmp              al, 72;                              jne   .Lx89_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx89_47
                                                                              jmp   .Lx89_48
.Lx89_47:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx89_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx89_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx89_51
.Lx89_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx89_49
                        cmp              dl, 80;                              je    .Lx89_53
                                                                              jmp   .Lx89_52
.Lx89_49:               cmp              dl, 80;                              je    .Lx89_52
                        cmp              cl, 5;                               je    .Lx89_53
                        cmp              dl, 5;                               je    .Lx89_53
                        cmp              cl, 3;                               jne   .Lx89_50
                        cmp              dl, 3;                               jne   .Lx89_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx89_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx89_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx89_51
                                                                              jmp   .Lx89_52
.Lx89_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx89_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx89_53
.Lx89_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx89_54
.Lx89_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx89_54
.Lx89_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx89_54:               mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_lit_string_α
n61_call_builtin_prolog_β:
                                                                              jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 10
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n63_lit_integer_α
.Lx90_0:                .quad            .Lx90_0_s
.Lx90_0_s:              .string          "retractall"
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n64_call_proc_staged_α
.Lx91_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n64_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx93_20
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx93_21
.Lx93_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx93_21:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx93_22
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx93_23
.Lx93_22:               mov              edi, 1
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx93_23:               mov              rdi, qword ptr [rip + .Lx93_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx93_1
                        mov              rdi, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx93_4]                 # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx93_3]
                        push             rcx
                        lea              rcx, [rip + .Lx93_3]
                        lea              rdx, [rip + .Lx93_4];                jmp   rax
.Lx93_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx93_2
.Lx93_4:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx93_2
.Lx93_1:                call             rt_faildescr@PLT
.Lx93_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx93_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
.Lx93_29:               mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                                                                              jmp   n65_lit_string_α
n64_call_proc_staged_β:                                                       jmp   n71_call_builtin_prolog_α
.Lx93_0:                .quad            .Lx93_0_s
.Lx93_0_s:              .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 29
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n66_var_ref_α
.Lx94_0:                .quad            .Lx94_0_s
.Lx94_0_s:              .string          "Pl_Retractall_If_Empty_Head_1"
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n67_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_call_proc_staged_α
n67_call_builtin_prolog_β:
                                                                              jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_proc_staged_α: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx99_20
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx99_21
.Lx99_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx99_21:               mov              rdi, qword ptr [rip + .Lx99_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx99_1
                        mov              rdi, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx99_4]                 # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx99_3]
                        push             rcx
                        lea              rcx, [rip + .Lx99_3]
                        lea              rdx, [rip + .Lx99_4];                jmp   rax
.Lx99_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx99_2
.Lx99_4:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx99_2
.Lx99_1:                call             rt_faildescr@PLT
.Lx99_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx99_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
.Lx99_29:               mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n64_call_proc_staged_β
                                                                              jmp   n69_cut_α
n68_call_proc_staged_β:                                                       jmp   n64_call_proc_staged_β
.Lx99_0:                .quad            .Lx99_0_s
.Lx99_0_s:              .string          "$call_c_test/1"
#-----------------------------------------------------------------------------------------------------------------------
n69_cut_α:                                                                    jmp   n70_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n70_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx102_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 768];          jmp   rax
.Lx102_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n70_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n70_suspend_β]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   retractall$2F1_γ
n70_suspend_β:                                                                jmp   n68_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    retractall$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_var_ref_α
n71_call_builtin_prolog_β:
                                                                              jmp   retractall$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n73_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n74_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        lea              r8, [rsp + 352]
.Lx108_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx108_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx108_41
                        cmp              esi, 1;                              jne   .Lx108_55
                        mov              r8, rax;                             jmp   .Lx108_40
.Lx108_55:              cmp              esi, 2;                              jne   .Lx108_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx108_41
                        mov              r8, rax;                             jmp   .Lx108_40
.Lx108_56:              cmp              al, 72;                              jne   .Lx108_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx108_41
                        cmp              rax, r8;                             je    .Lx108_41
                        mov              r8, rax;                             jmp   .Lx108_40
.Lx108_41:              lea              r9, [rsp + 368]
.Lx108_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx108_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx108_43
                        cmp              esi, 1;                              jne   .Lx108_57
                        mov              r9, rax;                             jmp   .Lx108_42
.Lx108_57:              cmp              esi, 2;                              jne   .Lx108_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx108_43
                        mov              r9, rax;                             jmp   .Lx108_42
.Lx108_58:              cmp              al, 72;                              jne   .Lx108_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx108_43
                        cmp              rax, r9;                             je    .Lx108_43
                        mov              r9, rax;                             jmp   .Lx108_42
.Lx108_43:              cmp              r8, r9;                              je    .Lx108_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx108_44
                        cmp              al, 104;                             je    .Lx108_44
                        cmp              al, 72;                              jne   .Lx108_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx108_44
                                                                              jmp   .Lx108_45
.Lx108_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx108_53
                        cmp              al, 104;                             je    .Lx108_53
                        cmp              al, 72;                              jne   .Lx108_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx108_53
                                                                              jmp   .Lx108_46
.Lx108_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx108_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx108_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx108_51
.Lx108_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx108_47
                        cmp              al, 104;                             je    .Lx108_47
                        cmp              al, 72;                              jne   .Lx108_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx108_47
                                                                              jmp   .Lx108_48
.Lx108_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx108_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx108_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx108_51
.Lx108_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx108_49
                        cmp              dl, 80;                              je    .Lx108_53
                                                                              jmp   .Lx108_52
.Lx108_49:              cmp              dl, 80;                              je    .Lx108_52
                        cmp              cl, 5;                               je    .Lx108_53
                        cmp              dl, 5;                               je    .Lx108_53
                        cmp              cl, 3;                               jne   .Lx108_50
                        cmp              dl, 3;                               jne   .Lx108_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx108_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx108_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx108_51
                                                                              jmp   .Lx108_52
.Lx108_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx108_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx108_53
.Lx108_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx108_54
.Lx108_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx108_54
.Lx108_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx108_54:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_var_ref_α
n74_call_builtin_prolog_β:
                                                                              jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 800]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 784]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n77_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_proc_staged_α: mov              qword ptr [rsp + 272], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx114_20
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx114_21
.Lx114_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx114_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx114_22
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx114_23
.Lx114_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx114_23:              lea              rax, [rip + .Lx114_7]
                        push             rax
                        mov              edi, 13
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx114_1
                        lea              rcx, [rip + .Lx114_3]
                        lea              rdx, [rip + .Lx114_4];               jmp   rax
.Lx114_3:               mov              qword ptr [rsp + 280], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 272]
                        test             rax, rax;                            jne   .Lx114_5
                        mov              qword ptr [rsp + 272], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx114_2
.Lx114_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx114_2
.Lx114_4:               mov              rax, qword ptr [rsp + 272]
                        test             rax, rax;                            jne   .Lx114_6
                        mov              qword ptr [rsp + 272], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx114_2
.Lx114_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx114_2
.Lx114_1:               call             rt_faildescr@PLT
.Lx114_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx114_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
.Lx114_29:              mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                                                                              jmp   n77_call_proc_staged_β
n77_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 272], 0
                        lea              rdi, [rsp + 288]
                        lea              rsi, [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n78_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              ecx, 48
                        mov              r8d, 448
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 13
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n78_call_builtin_prolog_α
                        lea              r11, [rip + .Lx114_7]
                        push             r11
                        lea              rcx, [rip + .Lx114_3]
                        lea              rdx, [rip + .Lx114_4];               jmp   rax
.Lx114_7:               add              rsp, 8
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n78_call_builtin_prolog_α
                                                                              jmp   n77_call_proc_staged_β
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "$retract/2"
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    retractall$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n79_var_ref_α
n78_call_builtin_prolog_β:
                                                                              jmp   retractall$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 784]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n81_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        lea              r8, [rsp + 128]
.Lx120_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx120_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx120_41
                        cmp              esi, 1;                              jne   .Lx120_55
                        mov              r8, rax;                             jmp   .Lx120_40
.Lx120_55:              cmp              esi, 2;                              jne   .Lx120_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx120_41
                        mov              r8, rax;                             jmp   .Lx120_40
.Lx120_56:              cmp              al, 72;                              jne   .Lx120_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx120_41
                        cmp              rax, r8;                             je    .Lx120_41
                        mov              r8, rax;                             jmp   .Lx120_40
.Lx120_41:              lea              r9, [rsp + 144]
.Lx120_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx120_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx120_43
                        cmp              esi, 1;                              jne   .Lx120_57
                        mov              r9, rax;                             jmp   .Lx120_42
.Lx120_57:              cmp              esi, 2;                              jne   .Lx120_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx120_43
                        mov              r9, rax;                             jmp   .Lx120_42
.Lx120_58:              cmp              al, 72;                              jne   .Lx120_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx120_43
                        cmp              rax, r9;                             je    .Lx120_43
                        mov              r9, rax;                             jmp   .Lx120_42
.Lx120_43:              cmp              r8, r9;                              je    .Lx120_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx120_44
                        cmp              al, 104;                             je    .Lx120_44
                        cmp              al, 72;                              jne   .Lx120_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx120_44
                                                                              jmp   .Lx120_45
.Lx120_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx120_53
                        cmp              al, 104;                             je    .Lx120_53
                        cmp              al, 72;                              jne   .Lx120_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx120_53
                                                                              jmp   .Lx120_46
.Lx120_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx120_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx120_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx120_51
.Lx120_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx120_47
                        cmp              al, 104;                             je    .Lx120_47
                        cmp              al, 72;                              jne   .Lx120_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx120_47
                                                                              jmp   .Lx120_48
.Lx120_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx120_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx120_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx120_51
.Lx120_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx120_49
                        cmp              dl, 80;                              je    .Lx120_53
                                                                              jmp   .Lx120_52
.Lx120_49:              cmp              dl, 80;                              je    .Lx120_52
                        cmp              cl, 5;                               je    .Lx120_53
                        cmp              dl, 5;                               je    .Lx120_53
                        cmp              cl, 3;                               jne   .Lx120_50
                        cmp              dl, 3;                               jne   .Lx120_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx120_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx120_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx120_51
                                                                              jmp   .Lx120_52
.Lx120_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx120_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx120_53
.Lx120_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx120_54
.Lx120_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx120_54
.Lx120_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx120_54:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n83_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n82_suspend_α
n81_call_builtin_prolog_β:
                                                                              jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx122_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 768];          jmp   rax
.Lx122_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n82_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n82_suspend_β]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   retractall$2F1_γ
n82_suspend_β:                                                                jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    retractall$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   retractall$2F1_ω
n83_call_builtin_prolog_β:
                                                                              jmp   retractall$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
retractall$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
retractall$2F1_β:
                                                                              jmp   n70_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
retractall$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx123_50
                        mov              qword ptr [rsp + 768], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 768];          jmp   rax
.Lx123_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 840]
                        add              rsp, 864;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
retractall$2F1_ω:
                        mov              rcx, qword ptr [rsp + 848]
                        add              rsp, 864;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$scan_dyn_test_alt$2F0:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$scan_dyn_test_alt$2F0_α_body:
                        lea              rax, [rip + n127_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx129_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx129_101
.Lx129_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx129_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx129_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx129_101
.Lx129_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx129_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    $scan_dyn_test_alt$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n125_lit_string_α
n124_call_builtin_prolog_β:
                                                                              jmp   $scan_dyn_test_alt$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 26
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n126_call_proc_staged_α
.Lx130_0:               .quad            .Lx130_0_s
.Lx130_0_s:             .string          "Pl_Scan_Dynamic_Pred_Alt_0"
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx132_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx132_21
.Lx132_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx132_21:              mov              rdi, qword ptr [rip + .Lx132_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx132_1
                        mov              rdi, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx132_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx132_3]
                        push             rcx
                        lea              rcx, [rip + .Lx132_3]
                        lea              rdx, [rip + .Lx132_4];               jmp   rax
.Lx132_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx132_2
.Lx132_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx132_2
.Lx132_1:               call             rt_faildescr@PLT
.Lx132_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx132_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx132_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n128_call_builtin_prolog_α
                                                                              jmp   n127_suspend_α
n126_call_proc_staged_β:
                                                                              jmp   n128_call_builtin_prolog_α
.Lx132_0:               .quad            .Lx132_0_s
.Lx132_0_s:             .string          "$call_c_test/1"
#-----------------------------------------------------------------------------------------------------------------------
n127_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx134_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx134_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n127_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n127_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   $scan_dyn_test_alt$2F0_γ
n127_suspend_β:                                                               jmp   n126_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    $scan_dyn_test_alt$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $scan_dyn_test_alt$2F0_ω
n128_call_builtin_prolog_β:
                                                                              jmp   $scan_dyn_test_alt$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
$scan_dyn_test_alt$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$scan_dyn_test_alt$2F0_β:
                                                                              jmp   n127_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$scan_dyn_test_alt$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx135_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx135_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$scan_dyn_test_alt$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__assertz$2F1:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 496
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
assertz$2F1_α_body:
                        lea              rax, [rip + n148_suspend_β]
                        mov              qword ptr [rsp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx150_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx150_101
.Lx150_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx150_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx150_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx150_101
.Lx150_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx150_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    assertz$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_var_ref_α
n136_call_builtin_prolog_β:
                                                                              jmp   assertz$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        lea              r8, [rsp + 384]
.Lx155_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx155_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx155_41
                        cmp              esi, 1;                              jne   .Lx155_55
                        mov              r8, rax;                             jmp   .Lx155_40
.Lx155_55:              cmp              esi, 2;                              jne   .Lx155_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx155_41
                        mov              r8, rax;                             jmp   .Lx155_40
.Lx155_56:              cmp              al, 72;                              jne   .Lx155_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx155_41
                        cmp              rax, r8;                             je    .Lx155_41
                        mov              r8, rax;                             jmp   .Lx155_40
.Lx155_41:              lea              r9, [rsp + 400]
.Lx155_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx155_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx155_43
                        cmp              esi, 1;                              jne   .Lx155_57
                        mov              r9, rax;                             jmp   .Lx155_42
.Lx155_57:              cmp              esi, 2;                              jne   .Lx155_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx155_43
                        mov              r9, rax;                             jmp   .Lx155_42
.Lx155_58:              cmp              al, 72;                              jne   .Lx155_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx155_43
                        cmp              rax, r9;                             je    .Lx155_43
                        mov              r9, rax;                             jmp   .Lx155_42
.Lx155_43:              cmp              r8, r9;                              je    .Lx155_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx155_44
                        cmp              al, 104;                             je    .Lx155_44
                        cmp              al, 72;                              jne   .Lx155_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx155_44
                                                                              jmp   .Lx155_45
.Lx155_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx155_53
                        cmp              al, 104;                             je    .Lx155_53
                        cmp              al, 72;                              jne   .Lx155_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx155_53
                                                                              jmp   .Lx155_46
.Lx155_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx155_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx155_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx155_51
.Lx155_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx155_47
                        cmp              al, 104;                             je    .Lx155_47
                        cmp              al, 72;                              jne   .Lx155_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx155_47
                                                                              jmp   .Lx155_48
.Lx155_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx155_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx155_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx155_51
.Lx155_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx155_49
                        cmp              dl, 80;                              je    .Lx155_53
                                                                              jmp   .Lx155_52
.Lx155_49:              cmp              dl, 80;                              je    .Lx155_52
                        cmp              cl, 5;                               je    .Lx155_53
                        cmp              dl, 5;                               je    .Lx155_53
                        cmp              cl, 3;                               jne   .Lx155_50
                        cmp              dl, 3;                               jne   .Lx155_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx155_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx155_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx155_51
                                                                              jmp   .Lx155_52
.Lx155_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx155_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx155_53
.Lx155_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx155_54
.Lx155_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx155_54
.Lx155_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx155_54:              mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n149_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n140_lit_string_α
n139_call_builtin_prolog_β:
                                                                              jmp   n149_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:      mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 7
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n141_lit_integer_α
.Lx156_0:               .quad            .Lx156_0_s
.Lx156_0_s:             .string          "assertz"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n142_call_proc_staged_α
.Lx157_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n142_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx159_20
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx159_21
.Lx159_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx159_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx159_22
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx159_23
.Lx159_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx159_23:              mov              rdi, qword ptr [rip + .Lx159_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx159_1
                        mov              rdi, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx159_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx159_3]
                        push             rcx
                        lea              rcx, [rip + .Lx159_3]
                        lea              rdx, [rip + .Lx159_4];               jmp   rax
.Lx159_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx159_2
.Lx159_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx159_2
.Lx159_1:               call             rt_faildescr@PLT
.Lx159_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx159_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
.Lx159_29:              mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n149_call_builtin_prolog_α
                                                                              jmp   n143_var_ref_α
n142_call_proc_staged_β:
                                                                              jmp   n149_call_builtin_prolog_α
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 464]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n144_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n145_lit_integer_α
.Lx162_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n146_lit_string_α
.Lx163_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 0
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n147_call_proc_staged_α
.Lx164_0:               .quad            .Lx164_0_s
.Lx164_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n147_call_proc_staged_α:
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx166_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx166_21
.Lx166_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx166_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx166_22
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx166_23
.Lx166_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx166_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx166_24
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx166_25
.Lx166_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx166_25:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx166_26
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx166_27
.Lx166_26:              mov              edi, 3
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx166_27:              lea              rax, [rip + .Lx166_7]
                        push             rax
                        mov              edi, 12
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx166_1
                        lea              rcx, [rip + .Lx166_3]
                        lea              rdx, [rip + .Lx166_4];               jmp   rax
.Lx166_3:               mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx166_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx166_2
.Lx166_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx166_2
.Lx166_4:               mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx166_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx166_2
.Lx166_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx166_2
.Lx166_1:               call             rt_faildescr@PLT
.Lx166_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx166_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx166_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n142_call_proc_staged_β
                                                                              jmp   n148_suspend_α
n147_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 176], 0
                        lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n142_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 80
                        mov              r8d, 1360
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 12
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n142_call_proc_staged_β
                        lea              r11, [rip + .Lx166_7]
                        push             r11
                        lea              rcx, [rip + .Lx166_3]
                        lea              rdx, [rip + .Lx166_4];               jmp   rax
.Lx166_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n142_call_proc_staged_β
                                                                              jmp   n148_suspend_α
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          "$assert/4"
#-----------------------------------------------------------------------------------------------------------------------
n148_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx168_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 448];          jmp   rax
.Lx168_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n148_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n148_suspend_β]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   assertz$2F1_γ
n148_suspend_β:                                                               jmp   n147_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    assertz$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   assertz$2F1_ω
n149_call_builtin_prolog_β:
                                                                              jmp   assertz$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
assertz$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
assertz$2F1_β:
                                                                              jmp   n148_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
assertz$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx169_50
                        mov              qword ptr [rsp + 448], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 448];          jmp   rax
.Lx169_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 504]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
assertz$2F1_ω:
                        mov              rcx, qword ptr [rsp + 512]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$scan_dyn_jump_alt$2F0:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              qword ptr [rsp + 200], rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$scan_dyn_jump_alt$2F0_α_body:
                        lea              rax, [rip + n173_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx175_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx175_101
.Lx175_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx175_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx175_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx175_101
.Lx175_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx175_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    $scan_dyn_jump_alt$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n171_lit_string_α
n170_call_builtin_prolog_β:
                                                                              jmp   $scan_dyn_jump_alt$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 26
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n172_call_proc_staged_α
.Lx176_0:               .quad            .Lx176_0_s
.Lx176_0_s:             .string          "Pl_Scan_Dynamic_Pred_Alt_0"
#-----------------------------------------------------------------------------------------------------------------------
n172_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx178_20
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx178_21
.Lx178_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx178_21:              mov              rdi, qword ptr [rip + .Lx178_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx178_1
                        mov              rdi, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx178_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx178_3]
                        push             rcx
                        lea              rcx, [rip + .Lx178_3]
                        lea              rdx, [rip + .Lx178_4];               jmp   rax
.Lx178_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx178_2
.Lx178_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx178_2
.Lx178_1:               call             rt_faildescr@PLT
.Lx178_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx178_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx178_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n174_call_builtin_prolog_α
                                                                              jmp   n173_suspend_α
n172_call_proc_staged_β:
                                                                              jmp   n174_call_builtin_prolog_α
.Lx178_0:               .quad            .Lx178_0_s
.Lx178_0_s:             .string          "$call_c_jump/1"
#-----------------------------------------------------------------------------------------------------------------------
n173_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx180_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx180_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n173_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n173_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   $scan_dyn_jump_alt$2F0_γ
n173_suspend_β:                                                               jmp   n172_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n174_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    $scan_dyn_jump_alt$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $scan_dyn_jump_alt$2F0_ω
n174_call_builtin_prolog_β:
                                                                              jmp   $scan_dyn_jump_alt$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
$scan_dyn_jump_alt$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$scan_dyn_jump_alt$2F0_β:
                                                                              jmp   n173_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$scan_dyn_jump_alt$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx181_50
                        mov              qword ptr [rsp + 144], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx181_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$scan_dyn_jump_alt$2F0_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__asserta$2F1:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 496
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
asserta$2F1_α_body:
                        lea              rax, [rip + n194_suspend_β]
                        mov              qword ptr [rsp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n182_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx196_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx196_101
.Lx196_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx196_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx196_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx196_101
.Lx196_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx196_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    asserta$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n183_var_ref_α
n182_call_builtin_prolog_β:
                                                                              jmp   asserta$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n184_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n185_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        lea              r8, [rsp + 384]
.Lx201_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx201_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx201_41
                        cmp              esi, 1;                              jne   .Lx201_55
                        mov              r8, rax;                             jmp   .Lx201_40
.Lx201_55:              cmp              esi, 2;                              jne   .Lx201_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx201_41
                        mov              r8, rax;                             jmp   .Lx201_40
.Lx201_56:              cmp              al, 72;                              jne   .Lx201_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx201_41
                        cmp              rax, r8;                             je    .Lx201_41
                        mov              r8, rax;                             jmp   .Lx201_40
.Lx201_41:              lea              r9, [rsp + 400]
.Lx201_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx201_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx201_43
                        cmp              esi, 1;                              jne   .Lx201_57
                        mov              r9, rax;                             jmp   .Lx201_42
.Lx201_57:              cmp              esi, 2;                              jne   .Lx201_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx201_43
                        mov              r9, rax;                             jmp   .Lx201_42
.Lx201_58:              cmp              al, 72;                              jne   .Lx201_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx201_43
                        cmp              rax, r9;                             je    .Lx201_43
                        mov              r9, rax;                             jmp   .Lx201_42
.Lx201_43:              cmp              r8, r9;                              je    .Lx201_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx201_44
                        cmp              al, 104;                             je    .Lx201_44
                        cmp              al, 72;                              jne   .Lx201_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx201_44
                                                                              jmp   .Lx201_45
.Lx201_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx201_53
                        cmp              al, 104;                             je    .Lx201_53
                        cmp              al, 72;                              jne   .Lx201_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx201_53
                                                                              jmp   .Lx201_46
.Lx201_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx201_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx201_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx201_51
.Lx201_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx201_47
                        cmp              al, 104;                             je    .Lx201_47
                        cmp              al, 72;                              jne   .Lx201_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx201_47
                                                                              jmp   .Lx201_48
.Lx201_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx201_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx201_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx201_51
.Lx201_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx201_49
                        cmp              dl, 80;                              je    .Lx201_53
                                                                              jmp   .Lx201_52
.Lx201_49:              cmp              dl, 80;                              je    .Lx201_52
                        cmp              cl, 5;                               je    .Lx201_53
                        cmp              dl, 5;                               je    .Lx201_53
                        cmp              cl, 3;                               jne   .Lx201_50
                        cmp              dl, 3;                               jne   .Lx201_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx201_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx201_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx201_51
                                                                              jmp   .Lx201_52
.Lx201_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx201_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx201_53
.Lx201_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx201_54
.Lx201_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx201_54
.Lx201_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx201_54:              mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n195_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n186_lit_string_α
n185_call_builtin_prolog_β:
                                                                              jmp   n195_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 7
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n187_lit_integer_α
.Lx202_0:               .quad            .Lx202_0_s
.Lx202_0_s:             .string          "asserta"
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:     mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n188_call_proc_staged_α
.Lx203_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n188_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx205_20
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx205_21
.Lx205_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx205_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx205_22
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx205_23
.Lx205_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx205_23:              mov              rdi, qword ptr [rip + .Lx205_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx205_1
                        mov              rdi, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx205_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx205_3]
                        push             rcx
                        lea              rcx, [rip + .Lx205_3]
                        lea              rdx, [rip + .Lx205_4];               jmp   rax
.Lx205_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx205_2
.Lx205_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx205_2
.Lx205_1:               call             rt_faildescr@PLT
.Lx205_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx205_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
.Lx205_29:              mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n195_call_builtin_prolog_α
                                                                              jmp   n189_var_ref_α
n188_call_proc_staged_β:
                                                                              jmp   n195_call_builtin_prolog_α
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 464]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n190_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:     mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n191_lit_integer_α
.Lx208_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:     mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n192_lit_string_α
.Lx209_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 0
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n193_call_proc_staged_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx212_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx212_21
.Lx212_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx212_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx212_22
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx212_23
.Lx212_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx212_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx212_24
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx212_25
.Lx212_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx212_25:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx212_26
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx212_27
.Lx212_26:              mov              edi, 3
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx212_27:              lea              rax, [rip + .Lx212_7]
                        push             rax
                        mov              edi, 12
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx212_1
                        lea              rcx, [rip + .Lx212_3]
                        lea              rdx, [rip + .Lx212_4];               jmp   rax
.Lx212_3:               mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx212_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx212_2
.Lx212_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx212_2
.Lx212_4:               mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx212_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx212_2
.Lx212_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx212_2
.Lx212_1:               call             rt_faildescr@PLT
.Lx212_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx212_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx212_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n188_call_proc_staged_β
                                                                              jmp   n194_suspend_α
n193_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 176], 0
                        lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n188_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 80
                        mov              r8d, 1360
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 12
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n188_call_proc_staged_β
                        lea              r11, [rip + .Lx212_7]
                        push             r11
                        lea              rcx, [rip + .Lx212_3]
                        lea              rdx, [rip + .Lx212_4];               jmp   rax
.Lx212_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n188_call_proc_staged_β
                                                                              jmp   n194_suspend_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "$assert/4"
#-----------------------------------------------------------------------------------------------------------------------
n194_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx214_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 448];          jmp   rax
.Lx214_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n194_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n194_suspend_β]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   asserta$2F1_γ
n194_suspend_β:                                                               jmp   n193_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n195_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    asserta$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   asserta$2F1_ω
n195_call_builtin_prolog_β:
                                                                              jmp   asserta$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
asserta$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
asserta$2F1_β:
                                                                              jmp   n194_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
asserta$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx215_50
                        mov              qword ptr [rsp + 448], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 448];          jmp   rax
.Lx215_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 504]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
asserta$2F1_ω:
                        mov              rcx, qword ptr [rsp + 512]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__abolish$2F1:
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rcx
                        mov              qword ptr [rsp + 480], rdx
                        mov              qword ptr [rsp + 488], rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 464
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
abolish$2F1_α_body:
                        lea              rax, [rip + n227_suspend_β]
                        mov              qword ptr [rsp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n216_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx229_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx229_101
.Lx229_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx229_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx229_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx229_101
.Lx229_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx229_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    abolish$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n217_var_ref_α
n216_call_builtin_prolog_β:
                                                                              jmp   abolish$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n218_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n219_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        lea              r8, [rsp + 352]
.Lx234_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx234_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx234_41
                        cmp              esi, 1;                              jne   .Lx234_55
                        mov              r8, rax;                             jmp   .Lx234_40
.Lx234_55:              cmp              esi, 2;                              jne   .Lx234_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx234_41
                        mov              r8, rax;                             jmp   .Lx234_40
.Lx234_56:              cmp              al, 72;                              jne   .Lx234_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx234_41
                        cmp              rax, r8;                             je    .Lx234_41
                        mov              r8, rax;                             jmp   .Lx234_40
.Lx234_41:              lea              r9, [rsp + 368]
.Lx234_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx234_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx234_43
                        cmp              esi, 1;                              jne   .Lx234_57
                        mov              r9, rax;                             jmp   .Lx234_42
.Lx234_57:              cmp              esi, 2;                              jne   .Lx234_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx234_43
                        mov              r9, rax;                             jmp   .Lx234_42
.Lx234_58:              cmp              al, 72;                              jne   .Lx234_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx234_43
                        cmp              rax, r9;                             je    .Lx234_43
                        mov              r9, rax;                             jmp   .Lx234_42
.Lx234_43:              cmp              r8, r9;                              je    .Lx234_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx234_44
                        cmp              al, 104;                             je    .Lx234_44
                        cmp              al, 72;                              jne   .Lx234_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx234_44
                                                                              jmp   .Lx234_45
.Lx234_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx234_53
                        cmp              al, 104;                             je    .Lx234_53
                        cmp              al, 72;                              jne   .Lx234_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx234_53
                                                                              jmp   .Lx234_46
.Lx234_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx234_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx234_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx234_51
.Lx234_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx234_47
                        cmp              al, 104;                             je    .Lx234_47
                        cmp              al, 72;                              jne   .Lx234_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx234_47
                                                                              jmp   .Lx234_48
.Lx234_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx234_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx234_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx234_51
.Lx234_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx234_49
                        cmp              dl, 80;                              je    .Lx234_53
                                                                              jmp   .Lx234_52
.Lx234_49:              cmp              dl, 80;                              je    .Lx234_52
                        cmp              cl, 5;                               je    .Lx234_53
                        cmp              dl, 5;                               je    .Lx234_53
                        cmp              cl, 3;                               jne   .Lx234_50
                        cmp              dl, 3;                               jne   .Lx234_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx234_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx234_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx234_51
                                                                              jmp   .Lx234_52
.Lx234_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx234_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx234_53
.Lx234_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx234_54
.Lx234_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx234_54
.Lx234_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx234_54:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n228_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n220_lit_string_α
n219_call_builtin_prolog_β:
                                                                              jmp   n228_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 7
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n221_lit_integer_α
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "abolish"
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:     mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n222_call_proc_staged_α
.Lx236_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n222_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx238_20
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx238_21
.Lx238_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx238_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx238_22
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx238_23
.Lx238_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx238_23:              mov              rdi, qword ptr [rip + .Lx238_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx238_1
                        mov              rdi, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx238_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx238_3]
                        push             rcx
                        lea              rcx, [rip + .Lx238_3]
                        lea              rdx, [rip + .Lx238_4];               jmp   rax
.Lx238_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx238_2
.Lx238_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx238_2
.Lx238_1:               call             rt_faildescr@PLT
.Lx238_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx238_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lx238_29:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n228_call_builtin_prolog_α
                                                                              jmp   n223_lit_string_α
n222_call_proc_staged_β:
                                                                              jmp   n228_call_builtin_prolog_α
.Lx238_0:               .quad            .Lx238_0_s
.Lx238_0_s:             .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:      mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 12
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n224_var_ref_α
.Lx239_0:               .quad            .Lx239_0_s
.Lx239_0_s:             .string          "Pl_Abolish_1"
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n225_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n225_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n228_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n226_call_proc_staged_α
n225_call_builtin_prolog_β:
                                                                              jmp   n228_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx244_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx244_21
.Lx244_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx244_21:              mov              rdi, qword ptr [rip + .Lx244_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx244_1
                        mov              rdi, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx244_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx244_3]
                        push             rcx
                        lea              rcx, [rip + .Lx244_3]
                        lea              rdx, [rip + .Lx244_4];               jmp   rax
.Lx244_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx244_2
.Lx244_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx244_2
.Lx244_1:               call             rt_faildescr@PLT
.Lx244_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx244_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx244_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n222_call_proc_staged_β
                                                                              jmp   n227_suspend_α
n226_call_proc_staged_β:
                                                                              jmp   n222_call_proc_staged_β
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "$call_c/1"
#-----------------------------------------------------------------------------------------------------------------------
n227_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx246_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx246_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n227_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n227_suspend_β]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   abolish$2F1_γ
n227_suspend_β:                                                               jmp   n226_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n228_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    abolish$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   abolish$2F1_ω
n228_call_builtin_prolog_β:
                                                                              jmp   abolish$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
abolish$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
abolish$2F1_β:
                                                                              jmp   n227_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
abolish$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx247_50
                        mov              qword ptr [rsp + 416], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx247_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 472]
                        add              rsp, 496;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
abolish$2F1_ω:
                        mov              rcx, qword ptr [rsp + 480]
                        add              rsp, 496;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_4$2F0:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 288
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n254_suspend_β]
                        mov              qword ptr [rsp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx256_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx256_101
.Lx256_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx256_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx256_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx256_101
.Lx256_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx256_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n249_lit_string_α
n248_call_builtin_prolog_β:
                                                                              jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 6
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n250_lit_string_α
.Lx257_0:               .quad            .Lx257_0_s
.Lx257_0_s:             .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n251_lit_string_α
.Lx258_0:               .quad            .Lx258_0_s
.Lx258_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:      mov              qword ptr [rsp + 144], 2             # result
                        mov              dword ptr [rsp + 148], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n252_call_builtin_prolog_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n255_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n253_call_proc_staged_α
n252_call_builtin_prolog_β:
                                                                              jmp   n255_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n253_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx262_20
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx262_21
.Lx262_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx262_21:              mov              rdi, qword ptr [rip + .Lx262_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx262_1
                        mov              rdi, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx262_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx262_3]
                        push             rcx
                        lea              rcx, [rip + .Lx262_3]
                        lea              rdx, [rip + .Lx262_4];               jmp   rax
.Lx262_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx262_2
.Lx262_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx262_2
.Lx262_1:               call             rt_faildescr@PLT
.Lx262_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx262_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx262_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n255_call_builtin_prolog_α
                                                                              jmp   n254_suspend_α
n253_call_proc_staged_β:
                                                                              jmp   n255_call_builtin_prolog_α
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n254_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx264_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx264_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n254_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n254_suspend_β]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_4$2F0_γ
n254_suspend_β:                                                               jmp   n253_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n255_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_4$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_4$2F0_ω
n255_call_builtin_prolog_β:
                                                                              jmp   pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_β:
                                                                              jmp   n254_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx265_50
                        mov              qword ptr [rsp + 256], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256];          jmp   rax
.Lx265_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_4$2F0_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        add              rsp, 320;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_2$2F0:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n271_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx273_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx273_101
.Lx273_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx273_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx273_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx273_101
.Lx273_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx273_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n267_lit_string_α
n266_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n268_lit_string_α
.Lx274_0:               .quad            .Lx274_0_s
.Lx274_0_s:             .string          "retract"
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n269_call_builtin_prolog_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n269_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n272_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n270_call_proc_staged_α
n269_call_builtin_prolog_β:
                                                                              jmp   n272_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx278_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx278_21
.Lx278_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx278_21:              mov              rdi, qword ptr [rip + .Lx278_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx278_1
                        mov              rdi, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx278_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx278_3]
                        push             rcx
                        lea              rcx, [rip + .Lx278_3]
                        lea              rdx, [rip + .Lx278_4];               jmp   rax
.Lx278_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx278_2
.Lx278_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx278_2
.Lx278_1:               call             rt_faildescr@PLT
.Lx278_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx278_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx278_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n272_call_builtin_prolog_α
                                                                              jmp   n271_suspend_α
n270_call_proc_staged_β:
                                                                              jmp   n272_call_builtin_prolog_α
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n271_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx280_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx280_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n271_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n271_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_2$2F0_γ
n271_suspend_β:                                                               jmp   n270_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_2$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_2$2F0_ω
n272_call_builtin_prolog_β:
                                                                              jmp   pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_β:
                                                                              jmp   n271_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx281_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx281_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_2$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_0$2F0:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n287_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n282_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx289_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx289_101
.Lx289_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx289_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx289_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx289_101
.Lx289_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx289_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n283_lit_string_α
n282_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n284_lit_string_α
.Lx290_0:               .quad            .Lx290_0_s
.Lx290_0_s:             .string          "asserta"
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n285_call_builtin_prolog_α
.Lx291_0:               .quad            .Lx291_0_s
.Lx291_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n288_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n286_call_proc_staged_α
n285_call_builtin_prolog_β:
                                                                              jmp   n288_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx294_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx294_21
.Lx294_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx294_21:              mov              rdi, qword ptr [rip + .Lx294_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx294_1
                        mov              rdi, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx294_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx294_3]
                        push             rcx
                        lea              rcx, [rip + .Lx294_3]
                        lea              rdx, [rip + .Lx294_4];               jmp   rax
.Lx294_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx294_2
.Lx294_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx294_2
.Lx294_1:               call             rt_faildescr@PLT
.Lx294_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx294_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx294_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n288_call_builtin_prolog_α
                                                                              jmp   n287_suspend_α
n286_call_proc_staged_β:
                                                                              jmp   n288_call_builtin_prolog_α
.Lx294_0:               .quad            .Lx294_0_s
.Lx294_0_s:             .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n287_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx296_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx296_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n287_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n287_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_0$2F0_γ
n287_suspend_β:                                                               jmp   n286_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n288_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_0$2F0_ω
n288_call_builtin_prolog_β:
                                                                              jmp   pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_β:
                                                                              jmp   n287_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx297_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx297_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__clause$2F2:
                        sub              rsp, 672
                        mov              qword ptr [rsp + 648], rcx
                        mov              qword ptr [rsp + 656], rdx
                        mov              qword ptr [rsp + 664], rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 640
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
clause$2F2_α_body:
                        lea              rax, [rip + n314_suspend_β]
                        mov              qword ptr [rsp + 576], rax
#-----------------------------------------------------------------------------------------------------------------------
n298_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx316_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx316_101
.Lx316_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx316_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx316_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx316_101
.Lx316_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx316_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    clause$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n299_var_ref_α
n298_call_builtin_prolog_β:
                                                                              jmp   clause$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n300_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n301_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n301_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        lea              r8, [rsp + 512]
.Lx321_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx321_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx321_41
                        cmp              esi, 1;                              jne   .Lx321_55
                        mov              r8, rax;                             jmp   .Lx321_40
.Lx321_55:              cmp              esi, 2;                              jne   .Lx321_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx321_41
                        mov              r8, rax;                             jmp   .Lx321_40
.Lx321_56:              cmp              al, 72;                              jne   .Lx321_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx321_41
                        cmp              rax, r8;                             je    .Lx321_41
                        mov              r8, rax;                             jmp   .Lx321_40
.Lx321_41:              lea              r9, [rsp + 528]
.Lx321_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx321_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx321_43
                        cmp              esi, 1;                              jne   .Lx321_57
                        mov              r9, rax;                             jmp   .Lx321_42
.Lx321_57:              cmp              esi, 2;                              jne   .Lx321_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx321_43
                        mov              r9, rax;                             jmp   .Lx321_42
.Lx321_58:              cmp              al, 72;                              jne   .Lx321_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx321_43
                        cmp              rax, r9;                             je    .Lx321_43
                        mov              r9, rax;                             jmp   .Lx321_42
.Lx321_43:              cmp              r8, r9;                              je    .Lx321_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx321_44
                        cmp              al, 104;                             je    .Lx321_44
                        cmp              al, 72;                              jne   .Lx321_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx321_44
                                                                              jmp   .Lx321_45
.Lx321_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx321_53
                        cmp              al, 104;                             je    .Lx321_53
                        cmp              al, 72;                              jne   .Lx321_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx321_53
                                                                              jmp   .Lx321_46
.Lx321_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx321_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx321_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx321_51
.Lx321_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx321_47
                        cmp              al, 104;                             je    .Lx321_47
                        cmp              al, 72;                              jne   .Lx321_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx321_47
                                                                              jmp   .Lx321_48
.Lx321_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx321_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx321_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx321_51
.Lx321_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx321_49
                        cmp              dl, 80;                              je    .Lx321_53
                                                                              jmp   .Lx321_52
.Lx321_49:              cmp              dl, 80;                              je    .Lx321_52
                        cmp              cl, 5;                               je    .Lx321_53
                        cmp              dl, 5;                               je    .Lx321_53
                        cmp              cl, 3;                               jne   .Lx321_50
                        cmp              dl, 3;                               jne   .Lx321_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx321_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx321_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx321_51
                                                                              jmp   .Lx321_52
.Lx321_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx321_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx321_53
.Lx321_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx321_54
.Lx321_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx321_54
.Lx321_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx321_54:              mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n315_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n302_var_ref_α
n301_call_builtin_prolog_β:
                                                                              jmp   n315_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n303_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 608]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        lea              r8, [rsp + 432]
.Lx326_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx326_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx326_41
                        cmp              esi, 1;                              jne   .Lx326_55
                        mov              r8, rax;                             jmp   .Lx326_40
.Lx326_55:              cmp              esi, 2;                              jne   .Lx326_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx326_41
                        mov              r8, rax;                             jmp   .Lx326_40
.Lx326_56:              cmp              al, 72;                              jne   .Lx326_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx326_41
                        cmp              rax, r8;                             je    .Lx326_41
                        mov              r8, rax;                             jmp   .Lx326_40
.Lx326_41:              lea              r9, [rsp + 448]
.Lx326_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx326_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx326_43
                        cmp              esi, 1;                              jne   .Lx326_57
                        mov              r9, rax;                             jmp   .Lx326_42
.Lx326_57:              cmp              esi, 2;                              jne   .Lx326_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx326_43
                        mov              r9, rax;                             jmp   .Lx326_42
.Lx326_58:              cmp              al, 72;                              jne   .Lx326_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx326_43
                        cmp              rax, r9;                             je    .Lx326_43
                        mov              r9, rax;                             jmp   .Lx326_42
.Lx326_43:              cmp              r8, r9;                              je    .Lx326_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx326_44
                        cmp              al, 104;                             je    .Lx326_44
                        cmp              al, 72;                              jne   .Lx326_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx326_44
                                                                              jmp   .Lx326_45
.Lx326_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx326_53
                        cmp              al, 104;                             je    .Lx326_53
                        cmp              al, 72;                              jne   .Lx326_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx326_53
                                                                              jmp   .Lx326_46
.Lx326_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx326_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx326_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx326_51
.Lx326_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx326_47
                        cmp              al, 104;                             je    .Lx326_47
                        cmp              al, 72;                              jne   .Lx326_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx326_47
                                                                              jmp   .Lx326_48
.Lx326_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx326_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx326_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx326_51
.Lx326_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx326_49
                        cmp              dl, 80;                              je    .Lx326_53
                                                                              jmp   .Lx326_52
.Lx326_49:              cmp              dl, 80;                              je    .Lx326_52
                        cmp              cl, 5;                               je    .Lx326_53
                        cmp              dl, 5;                               je    .Lx326_53
                        cmp              cl, 3;                               jne   .Lx326_50
                        cmp              dl, 3;                               jne   .Lx326_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx326_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx326_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx326_51
                                                                              jmp   .Lx326_52
.Lx326_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx326_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx326_53
.Lx326_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx326_54
.Lx326_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx326_54
.Lx326_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx326_54:              mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n315_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n305_lit_string_α
n304_call_builtin_prolog_β:
                                                                              jmp   n315_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 6
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n306_lit_integer_α
.Lx327_0:               .quad            .Lx327_0_s
.Lx327_0_s:             .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_integer_α:     mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n307_call_proc_staged_α
.Lx328_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n307_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx330_20
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx330_21
.Lx330_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx330_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx330_22
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx330_23
.Lx330_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx330_23:              mov              rdi, qword ptr [rip + .Lx330_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx330_1
                        mov              rdi, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx330_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx330_3]
                        push             rcx
                        lea              rcx, [rip + .Lx330_3]
                        lea              rdx, [rip + .Lx330_4];               jmp   rax
.Lx330_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx330_2
.Lx330_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx330_2
.Lx330_1:               call             rt_faildescr@PLT
.Lx330_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx330_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
.Lx330_29:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n315_call_builtin_prolog_α
                                                                              jmp   n308_var_ref_α
n307_call_proc_staged_β:
                                                                              jmp   n315_call_builtin_prolog_α
.Lx330_0:               .quad            .Lx330_0_s
.Lx330_0_s:             .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n309_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n309_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx334_20
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx334_21
.Lx334_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx334_21:              mov              rdi, qword ptr [rip + .Lx334_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx334_1
                        mov              rdi, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx334_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx334_3]
                        push             rcx
                        lea              rcx, [rip + .Lx334_3]
                        lea              rdx, [rip + .Lx334_4];               jmp   rax
.Lx334_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx334_2
.Lx334_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx334_2
.Lx334_1:               call             rt_faildescr@PLT
.Lx334_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx334_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
.Lx334_29:              mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n307_call_proc_staged_β
                                                                              jmp   n310_var_ref_α
n309_call_proc_staged_β:
                                                                              jmp   n307_call_proc_staged_β
.Lx334_0:               .quad            .Lx334_0_s
.Lx334_0_s:             .string          "$check_head/1"
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n311_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 608]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n312_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_integer_α:     mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n313_call_proc_staged_α
.Lx339_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n313_call_proc_staged_α:
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx341_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx341_21
.Lx341_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx341_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx341_22
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx341_23
.Lx341_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx341_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx341_24
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx341_25
.Lx341_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx341_25:              lea              rax, [rip + .Lx341_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx341_1
                        lea              rcx, [rip + .Lx341_3]
                        lea              rdx, [rip + .Lx341_4];               jmp   rax
.Lx341_3:               mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx341_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx341_2
.Lx341_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx341_2
.Lx341_4:               mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx341_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx341_2
.Lx341_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx341_2
.Lx341_1:               call             rt_faildescr@PLT
.Lx341_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx341_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx341_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n309_call_proc_staged_β
                                                                              jmp   n314_suspend_α
n313_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 176], 0
                        lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n309_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 64
                        mov              r8d, 576
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n309_call_proc_staged_β
                        lea              r11, [rip + .Lx341_7]
                        push             r11
                        lea              rcx, [rip + .Lx341_3]
                        lea              rdx, [rip + .Lx341_4];               jmp   rax
.Lx341_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n309_call_proc_staged_β
                                                                              jmp   n314_suspend_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "$clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n314_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx343_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx343_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n314_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n314_suspend_β]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   clause$2F2_γ
n314_suspend_β:                                                               jmp   n313_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    clause$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   clause$2F2_ω
n315_call_builtin_prolog_β:
                                                                              jmp   clause$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_β:
                                                                              jmp   n314_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx344_50
                        mov              qword ptr [rsp + 576], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 576];          jmp   rax
.Lx344_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 648]
                        add              rsp, 672;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_ω:
                        mov              rcx, qword ptr [rsp + 656]
                        add              rsp, 672;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$assert$2F4:
                        sub              rsp, 1552
                        mov              qword ptr [rsp + 1528], rcx
                        mov              qword ptr [rsp + 1536], rdx
                        mov              qword ptr [rsp + 1544], rsp
                        mov              rdi, rsp
                        mov              esi, 1360
                        mov              edx, 1520
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$assert$2F4_α_body:
                        lea              rax, [rip + n387_suspend_β]
                        mov              qword ptr [rsp + 1360], rax
#-----------------------------------------------------------------------------------------------------------------------
n345_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx389_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx389_101
.Lx389_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx389_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx389_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx389_101
.Lx389_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx389_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    $assert$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n346_var_ref_α
n345_call_builtin_prolog_β:
                                                                              jmp   $assert$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n347_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n348_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n348_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1304], rax
                        lea              rdi, [rsp + 1296]
                        lea              r8, [rsp + 1296]
.Lx394_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx394_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx394_41
                        cmp              esi, 1;                              jne   .Lx394_55
                        mov              r8, rax;                             jmp   .Lx394_40
.Lx394_55:              cmp              esi, 2;                              jne   .Lx394_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx394_41
                        mov              r8, rax;                             jmp   .Lx394_40
.Lx394_56:              cmp              al, 72;                              jne   .Lx394_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx394_41
                        cmp              rax, r8;                             je    .Lx394_41
                        mov              r8, rax;                             jmp   .Lx394_40
.Lx394_41:              lea              r9, [rsp + 1312]
.Lx394_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx394_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx394_43
                        cmp              esi, 1;                              jne   .Lx394_57
                        mov              r9, rax;                             jmp   .Lx394_42
.Lx394_57:              cmp              esi, 2;                              jne   .Lx394_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx394_43
                        mov              r9, rax;                             jmp   .Lx394_42
.Lx394_58:              cmp              al, 72;                              jne   .Lx394_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx394_43
                        cmp              rax, r9;                             je    .Lx394_43
                        mov              r9, rax;                             jmp   .Lx394_42
.Lx394_43:              cmp              r8, r9;                              je    .Lx394_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx394_44
                        cmp              al, 104;                             je    .Lx394_44
                        cmp              al, 72;                              jne   .Lx394_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx394_44
                                                                              jmp   .Lx394_45
.Lx394_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx394_53
                        cmp              al, 104;                             je    .Lx394_53
                        cmp              al, 72;                              jne   .Lx394_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx394_53
                                                                              jmp   .Lx394_46
.Lx394_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx394_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx394_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx394_51
.Lx394_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx394_47
                        cmp              al, 104;                             je    .Lx394_47
                        cmp              al, 72;                              jne   .Lx394_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx394_47
                                                                              jmp   .Lx394_48
.Lx394_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx394_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx394_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx394_51
.Lx394_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx394_49
                        cmp              dl, 80;                              je    .Lx394_53
                                                                              jmp   .Lx394_52
.Lx394_49:              cmp              dl, 80;                              je    .Lx394_52
                        cmp              cl, 5;                               je    .Lx394_53
                        cmp              dl, 5;                               je    .Lx394_53
                        cmp              cl, 3;                               jne   .Lx394_50
                        cmp              dl, 3;                               jne   .Lx394_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx394_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx394_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx394_51
                                                                              jmp   .Lx394_52
.Lx394_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx394_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx394_53
.Lx394_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx394_54
.Lx394_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx394_54
.Lx394_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx394_54:              mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n349_var_ref_α
n348_call_builtin_prolog_β:
                                                                              jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n350_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1440]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n351_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n351_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        lea              rdi, [rsp + 1216]
                        lea              r8, [rsp + 1216]
.Lx399_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx399_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx399_41
                        cmp              esi, 1;                              jne   .Lx399_55
                        mov              r8, rax;                             jmp   .Lx399_40
.Lx399_55:              cmp              esi, 2;                              jne   .Lx399_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx399_41
                        mov              r8, rax;                             jmp   .Lx399_40
.Lx399_56:              cmp              al, 72;                              jne   .Lx399_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx399_41
                        cmp              rax, r8;                             je    .Lx399_41
                        mov              r8, rax;                             jmp   .Lx399_40
.Lx399_41:              lea              r9, [rsp + 1232]
.Lx399_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx399_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx399_43
                        cmp              esi, 1;                              jne   .Lx399_57
                        mov              r9, rax;                             jmp   .Lx399_42
.Lx399_57:              cmp              esi, 2;                              jne   .Lx399_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx399_43
                        mov              r9, rax;                             jmp   .Lx399_42
.Lx399_58:              cmp              al, 72;                              jne   .Lx399_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx399_43
                        cmp              rax, r9;                             je    .Lx399_43
                        mov              r9, rax;                             jmp   .Lx399_42
.Lx399_43:              cmp              r8, r9;                              je    .Lx399_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx399_44
                        cmp              al, 104;                             je    .Lx399_44
                        cmp              al, 72;                              jne   .Lx399_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx399_44
                                                                              jmp   .Lx399_45
.Lx399_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx399_53
                        cmp              al, 104;                             je    .Lx399_53
                        cmp              al, 72;                              jne   .Lx399_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx399_53
                                                                              jmp   .Lx399_46
.Lx399_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx399_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx399_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx399_51
.Lx399_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx399_47
                        cmp              al, 104;                             je    .Lx399_47
                        cmp              al, 72;                              jne   .Lx399_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx399_47
                                                                              jmp   .Lx399_48
.Lx399_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx399_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx399_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx399_51
.Lx399_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx399_49
                        cmp              dl, 80;                              je    .Lx399_53
                                                                              jmp   .Lx399_52
.Lx399_49:              cmp              dl, 80;                              je    .Lx399_52
                        cmp              cl, 5;                               je    .Lx399_53
                        cmp              dl, 5;                               je    .Lx399_53
                        cmp              cl, 3;                               jne   .Lx399_50
                        cmp              dl, 3;                               jne   .Lx399_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx399_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx399_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx399_51
                                                                              jmp   .Lx399_52
.Lx399_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx399_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx399_53
.Lx399_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx399_54
.Lx399_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx399_54
.Lx399_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx399_54:              mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n352_var_ref_α
n351_call_builtin_prolog_β:
                                                                              jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n353_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1456]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n354_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax
                        lea              rdi, [rsp + 1136]
                        lea              r8, [rsp + 1136]
.Lx404_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx404_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx404_41
                        cmp              esi, 1;                              jne   .Lx404_55
                        mov              r8, rax;                             jmp   .Lx404_40
.Lx404_55:              cmp              esi, 2;                              jne   .Lx404_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx404_41
                        mov              r8, rax;                             jmp   .Lx404_40
.Lx404_56:              cmp              al, 72;                              jne   .Lx404_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx404_41
                        cmp              rax, r8;                             je    .Lx404_41
                        mov              r8, rax;                             jmp   .Lx404_40
.Lx404_41:              lea              r9, [rsp + 1152]
.Lx404_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx404_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx404_43
                        cmp              esi, 1;                              jne   .Lx404_57
                        mov              r9, rax;                             jmp   .Lx404_42
.Lx404_57:              cmp              esi, 2;                              jne   .Lx404_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx404_43
                        mov              r9, rax;                             jmp   .Lx404_42
.Lx404_58:              cmp              al, 72;                              jne   .Lx404_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx404_43
                        cmp              rax, r9;                             je    .Lx404_43
                        mov              r9, rax;                             jmp   .Lx404_42
.Lx404_43:              cmp              r8, r9;                              je    .Lx404_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx404_44
                        cmp              al, 104;                             je    .Lx404_44
                        cmp              al, 72;                              jne   .Lx404_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx404_44
                                                                              jmp   .Lx404_45
.Lx404_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx404_53
                        cmp              al, 104;                             je    .Lx404_53
                        cmp              al, 72;                              jne   .Lx404_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx404_53
                                                                              jmp   .Lx404_46
.Lx404_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx404_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx404_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx404_51
.Lx404_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx404_47
                        cmp              al, 104;                             je    .Lx404_47
                        cmp              al, 72;                              jne   .Lx404_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx404_47
                                                                              jmp   .Lx404_48
.Lx404_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx404_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx404_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx404_51
.Lx404_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx404_49
                        cmp              dl, 80;                              je    .Lx404_53
                                                                              jmp   .Lx404_52
.Lx404_49:              cmp              dl, 80;                              je    .Lx404_52
                        cmp              cl, 5;                               je    .Lx404_53
                        cmp              dl, 5;                               je    .Lx404_53
                        cmp              cl, 3;                               jne   .Lx404_50
                        cmp              dl, 3;                               jne   .Lx404_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx404_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx404_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx404_51
                                                                              jmp   .Lx404_52
.Lx404_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx404_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx404_53
.Lx404_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx404_54
.Lx404_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx404_54
.Lx404_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx404_54:              mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n355_var_ref_α
n354_call_builtin_prolog_β:
                                                                              jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n356_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1472]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n357_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        lea              r8, [rsp + 1056]
.Lx409_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx409_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx409_41
                        cmp              esi, 1;                              jne   .Lx409_55
                        mov              r8, rax;                             jmp   .Lx409_40
.Lx409_55:              cmp              esi, 2;                              jne   .Lx409_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx409_41
                        mov              r8, rax;                             jmp   .Lx409_40
.Lx409_56:              cmp              al, 72;                              jne   .Lx409_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx409_41
                        cmp              rax, r8;                             je    .Lx409_41
                        mov              r8, rax;                             jmp   .Lx409_40
.Lx409_41:              lea              r9, [rsp + 1072]
.Lx409_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx409_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx409_43
                        cmp              esi, 1;                              jne   .Lx409_57
                        mov              r9, rax;                             jmp   .Lx409_42
.Lx409_57:              cmp              esi, 2;                              jne   .Lx409_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx409_43
                        mov              r9, rax;                             jmp   .Lx409_42
.Lx409_58:              cmp              al, 72;                              jne   .Lx409_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx409_43
                        cmp              rax, r9;                             je    .Lx409_43
                        mov              r9, rax;                             jmp   .Lx409_42
.Lx409_43:              cmp              r8, r9;                              je    .Lx409_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx409_44
                        cmp              al, 104;                             je    .Lx409_44
                        cmp              al, 72;                              jne   .Lx409_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx409_44
                                                                              jmp   .Lx409_45
.Lx409_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx409_53
                        cmp              al, 104;                             je    .Lx409_53
                        cmp              al, 72;                              jne   .Lx409_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx409_53
                                                                              jmp   .Lx409_46
.Lx409_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx409_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx409_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx409_51
.Lx409_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx409_47
                        cmp              al, 104;                             je    .Lx409_47
                        cmp              al, 72;                              jne   .Lx409_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx409_47
                                                                              jmp   .Lx409_48
.Lx409_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx409_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx409_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx409_51
.Lx409_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx409_49
                        cmp              dl, 80;                              je    .Lx409_53
                                                                              jmp   .Lx409_52
.Lx409_49:              cmp              dl, 80;                              je    .Lx409_52
                        cmp              cl, 5;                               je    .Lx409_53
                        cmp              dl, 5;                               je    .Lx409_53
                        cmp              cl, 3;                               jne   .Lx409_50
                        cmp              dl, 3;                               jne   .Lx409_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx409_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx409_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx409_51
                                                                              jmp   .Lx409_52
.Lx409_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx409_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx409_53
.Lx409_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx409_54
.Lx409_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx409_54
.Lx409_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx409_54:              mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n358_var_ref_α
n357_call_builtin_prolog_β:
                                                                              jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1488]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n360_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n361_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n361_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx417_20
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx417_21
.Lx417_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx417_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx417_22
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx417_23
.Lx417_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx417_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx417_24
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx417_25
.Lx417_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx417_25:              mov              rdi, qword ptr [rip + .Lx417_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx417_1
                        mov              rdi, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx417_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx417_3]
                        push             rcx
                        lea              rcx, [rip + .Lx417_3]
                        lea              rdx, [rip + .Lx417_4];               jmp   rax
.Lx417_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx417_2
.Lx417_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx417_2
.Lx417_1:               call             rt_faildescr@PLT
.Lx417_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx417_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
.Lx417_29:              mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                                                                              jmp   n362_var_ref_α
n361_call_proc_staged_β:
                                                                              jmp   n374_call_builtin_prolog_α
.Lx417_0:               .quad            .Lx417_0_s
.Lx417_0_s:             .string          "$get_head_and_body/3"
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n363_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 4
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n364_var_ref_α
.Lx420_0:               .quad            .Lx420_0_s
.Lx420_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n365_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx424_20
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx424_21
.Lx424_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx424_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx424_22
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx424_23
.Lx424_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx424_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx424_24
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx424_25
.Lx424_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx424_25:              mov              rdi, qword ptr [rip + .Lx424_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx424_1
                        mov              rdi, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx424_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx424_3]
                        push             rcx
                        lea              rcx, [rip + .Lx424_3]
                        lea              rdx, [rip + .Lx424_4];               jmp   rax
.Lx424_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx424_2
.Lx424_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx424_2
.Lx424_1:               call             rt_faildescr@PLT
.Lx424_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx424_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
.Lx424_29:              mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n361_call_proc_staged_β
                                                                              jmp   n366_lit_string_α
n365_call_proc_staged_β:
                                                                              jmp   n361_call_proc_staged_β
.Lx424_0:               .quad            .Lx424_0_s
.Lx424_0_s:             .string          "$term_to_goal/3"
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:      mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 11
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n367_var_ref_α
.Lx425_0:               .quad            .Lx425_0_s
.Lx425_0_s:             .string          "Pl_Assert_5"
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n368_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n369_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1440]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n370_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1456]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n371_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1472]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n372_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n372_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n374_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n373_call_proc_staged_α
n372_call_builtin_prolog_β:
                                                                              jmp   n374_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n373_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx438_20
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx438_21
.Lx438_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx438_21:              mov              rdi, qword ptr [rip + .Lx438_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx438_1
                        mov              rdi, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx438_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx438_3]
                        push             rcx
                        lea              rcx, [rip + .Lx438_3]
                        lea              rdx, [rip + .Lx438_4];               jmp   rax
.Lx438_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx438_2
.Lx438_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx438_2
.Lx438_1:               call             rt_faildescr@PLT
.Lx438_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx438_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
.Lx438_29:              mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n365_call_proc_staged_β
                                                                              jmp   n373_call_proc_staged_β
n373_call_proc_staged_β:
                                                                              jmp   n365_call_proc_staged_β
.Lx438_0:               .quad            .Lx438_0_s
.Lx438_0_s:             .string          "$call_c/1"
#-----------------------------------------------------------------------------------------------------------------------
n374_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    $assert$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n375_var_ref_α
n374_call_builtin_prolog_β:
                                                                              jmp   $assert$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n375_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n376_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n377_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n377_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        lea              r8, [rsp + 416]
.Lx444_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx444_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx444_41
                        cmp              esi, 1;                              jne   .Lx444_55
                        mov              r8, rax;                             jmp   .Lx444_40
.Lx444_55:              cmp              esi, 2;                              jne   .Lx444_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx444_41
                        mov              r8, rax;                             jmp   .Lx444_40
.Lx444_56:              cmp              al, 72;                              jne   .Lx444_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx444_41
                        cmp              rax, r8;                             je    .Lx444_41
                        mov              r8, rax;                             jmp   .Lx444_40
.Lx444_41:              lea              r9, [rsp + 432]
.Lx444_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx444_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx444_43
                        cmp              esi, 1;                              jne   .Lx444_57
                        mov              r9, rax;                             jmp   .Lx444_42
.Lx444_57:              cmp              esi, 2;                              jne   .Lx444_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx444_43
                        mov              r9, rax;                             jmp   .Lx444_42
.Lx444_58:              cmp              al, 72;                              jne   .Lx444_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx444_43
                        cmp              rax, r9;                             je    .Lx444_43
                        mov              r9, rax;                             jmp   .Lx444_42
.Lx444_43:              cmp              r8, r9;                              je    .Lx444_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx444_44
                        cmp              al, 104;                             je    .Lx444_44
                        cmp              al, 72;                              jne   .Lx444_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx444_44
                                                                              jmp   .Lx444_45
.Lx444_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx444_53
                        cmp              al, 104;                             je    .Lx444_53
                        cmp              al, 72;                              jne   .Lx444_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx444_53
                                                                              jmp   .Lx444_46
.Lx444_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx444_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx444_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx444_51
.Lx444_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx444_47
                        cmp              al, 104;                             je    .Lx444_47
                        cmp              al, 72;                              jne   .Lx444_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx444_47
                                                                              jmp   .Lx444_48
.Lx444_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx444_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx444_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx444_51
.Lx444_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx444_49
                        cmp              dl, 80;                              je    .Lx444_53
                                                                              jmp   .Lx444_52
.Lx444_49:              cmp              dl, 80;                              je    .Lx444_52
                        cmp              cl, 5;                               je    .Lx444_53
                        cmp              dl, 5;                               je    .Lx444_53
                        cmp              cl, 3;                               jne   .Lx444_50
                        cmp              dl, 3;                               jne   .Lx444_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx444_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx444_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx444_51
                                                                              jmp   .Lx444_52
.Lx444_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx444_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx444_53
.Lx444_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx444_54
.Lx444_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx444_54
.Lx444_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx444_54:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n388_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n378_var_ref_α
n377_call_builtin_prolog_β:
                                                                              jmp   n388_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n378_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n379_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n380_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        lea              r8, [rsp + 336]
.Lx449_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx449_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx449_41
                        cmp              esi, 1;                              jne   .Lx449_55
                        mov              r8, rax;                             jmp   .Lx449_40
.Lx449_55:              cmp              esi, 2;                              jne   .Lx449_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx449_41
                        mov              r8, rax;                             jmp   .Lx449_40
.Lx449_56:              cmp              al, 72;                              jne   .Lx449_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx449_41
                        cmp              rax, r8;                             je    .Lx449_41
                        mov              r8, rax;                             jmp   .Lx449_40
.Lx449_41:              lea              r9, [rsp + 352]
.Lx449_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx449_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx449_43
                        cmp              esi, 1;                              jne   .Lx449_57
                        mov              r9, rax;                             jmp   .Lx449_42
.Lx449_57:              cmp              esi, 2;                              jne   .Lx449_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx449_43
                        mov              r9, rax;                             jmp   .Lx449_42
.Lx449_58:              cmp              al, 72;                              jne   .Lx449_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx449_43
                        cmp              rax, r9;                             je    .Lx449_43
                        mov              r9, rax;                             jmp   .Lx449_42
.Lx449_43:              cmp              r8, r9;                              je    .Lx449_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx449_44
                        cmp              al, 104;                             je    .Lx449_44
                        cmp              al, 72;                              jne   .Lx449_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx449_44
                                                                              jmp   .Lx449_45
.Lx449_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx449_53
                        cmp              al, 104;                             je    .Lx449_53
                        cmp              al, 72;                              jne   .Lx449_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx449_53
                                                                              jmp   .Lx449_46
.Lx449_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx449_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx449_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx449_51
.Lx449_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx449_47
                        cmp              al, 104;                             je    .Lx449_47
                        cmp              al, 72;                              jne   .Lx449_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx449_47
                                                                              jmp   .Lx449_48
.Lx449_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx449_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx449_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx449_51
.Lx449_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx449_49
                        cmp              dl, 80;                              je    .Lx449_53
                                                                              jmp   .Lx449_52
.Lx449_49:              cmp              dl, 80;                              je    .Lx449_52
                        cmp              cl, 5;                               je    .Lx449_53
                        cmp              dl, 5;                               je    .Lx449_53
                        cmp              cl, 3;                               jne   .Lx449_50
                        cmp              dl, 3;                               jne   .Lx449_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx449_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx449_51
                                                                              jmp   .Lx449_52
.Lx449_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx449_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx449_53
.Lx449_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx449_54
.Lx449_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx449_54
.Lx449_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx449_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n388_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n381_var_ref_α
n380_call_builtin_prolog_β:
                                                                              jmp   n388_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n382_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n383_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n383_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        lea              r8, [rsp + 256]
.Lx454_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx454_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx454_41
                        cmp              esi, 1;                              jne   .Lx454_55
                        mov              r8, rax;                             jmp   .Lx454_40
.Lx454_55:              cmp              esi, 2;                              jne   .Lx454_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx454_41
                        mov              r8, rax;                             jmp   .Lx454_40
.Lx454_56:              cmp              al, 72;                              jne   .Lx454_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx454_41
                        cmp              rax, r8;                             je    .Lx454_41
                        mov              r8, rax;                             jmp   .Lx454_40
.Lx454_41:              lea              r9, [rsp + 272]
.Lx454_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx454_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx454_43
                        cmp              esi, 1;                              jne   .Lx454_57
                        mov              r9, rax;                             jmp   .Lx454_42
.Lx454_57:              cmp              esi, 2;                              jne   .Lx454_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx454_43
                        mov              r9, rax;                             jmp   .Lx454_42
.Lx454_58:              cmp              al, 72;                              jne   .Lx454_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx454_43
                        cmp              rax, r9;                             je    .Lx454_43
                        mov              r9, rax;                             jmp   .Lx454_42
.Lx454_43:              cmp              r8, r9;                              je    .Lx454_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx454_44
                        cmp              al, 104;                             je    .Lx454_44
                        cmp              al, 72;                              jne   .Lx454_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx454_44
                                                                              jmp   .Lx454_45
.Lx454_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx454_53
                        cmp              al, 104;                             je    .Lx454_53
                        cmp              al, 72;                              jne   .Lx454_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx454_53
                                                                              jmp   .Lx454_46
.Lx454_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx454_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx454_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx454_51
.Lx454_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx454_47
                        cmp              al, 104;                             je    .Lx454_47
                        cmp              al, 72;                              jne   .Lx454_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx454_47
                                                                              jmp   .Lx454_48
.Lx454_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx454_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx454_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx454_51
.Lx454_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx454_49
                        cmp              dl, 80;                              je    .Lx454_53
                                                                              jmp   .Lx454_52
.Lx454_49:              cmp              dl, 80;                              je    .Lx454_52
                        cmp              cl, 5;                               je    .Lx454_53
                        cmp              dl, 5;                               je    .Lx454_53
                        cmp              cl, 3;                               jne   .Lx454_50
                        cmp              dl, 3;                               jne   .Lx454_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx454_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx454_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx454_51
                                                                              jmp   .Lx454_52
.Lx454_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx454_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx454_53
.Lx454_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx454_54
.Lx454_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx454_54
.Lx454_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx454_54:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n388_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n384_var_ref_α
n383_call_builtin_prolog_β:
                                                                              jmp   n388_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n385_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n386_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n386_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        lea              r8, [rsp + 176]
.Lx459_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx459_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx459_41
                        cmp              esi, 1;                              jne   .Lx459_55
                        mov              r8, rax;                             jmp   .Lx459_40
.Lx459_55:              cmp              esi, 2;                              jne   .Lx459_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx459_41
                        mov              r8, rax;                             jmp   .Lx459_40
.Lx459_56:              cmp              al, 72;                              jne   .Lx459_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx459_41
                        cmp              rax, r8;                             je    .Lx459_41
                        mov              r8, rax;                             jmp   .Lx459_40
.Lx459_41:              lea              r9, [rsp + 192]
.Lx459_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx459_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx459_43
                        cmp              esi, 1;                              jne   .Lx459_57
                        mov              r9, rax;                             jmp   .Lx459_42
.Lx459_57:              cmp              esi, 2;                              jne   .Lx459_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx459_43
                        mov              r9, rax;                             jmp   .Lx459_42
.Lx459_58:              cmp              al, 72;                              jne   .Lx459_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx459_43
                        cmp              rax, r9;                             je    .Lx459_43
                        mov              r9, rax;                             jmp   .Lx459_42
.Lx459_43:              cmp              r8, r9;                              je    .Lx459_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx459_44
                        cmp              al, 104;                             je    .Lx459_44
                        cmp              al, 72;                              jne   .Lx459_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx459_44
                                                                              jmp   .Lx459_45
.Lx459_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx459_53
                        cmp              al, 104;                             je    .Lx459_53
                        cmp              al, 72;                              jne   .Lx459_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx459_53
                                                                              jmp   .Lx459_46
.Lx459_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx459_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx459_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx459_51
.Lx459_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx459_47
                        cmp              al, 104;                             je    .Lx459_47
                        cmp              al, 72;                              jne   .Lx459_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx459_47
                                                                              jmp   .Lx459_48
.Lx459_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx459_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx459_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx459_51
.Lx459_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx459_49
                        cmp              dl, 80;                              je    .Lx459_53
                                                                              jmp   .Lx459_52
.Lx459_49:              cmp              dl, 80;                              je    .Lx459_52
                        cmp              cl, 5;                               je    .Lx459_53
                        cmp              dl, 5;                               je    .Lx459_53
                        cmp              cl, 3;                               jne   .Lx459_50
                        cmp              dl, 3;                               jne   .Lx459_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx459_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx459_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx459_51
                                                                              jmp   .Lx459_52
.Lx459_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx459_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx459_53
.Lx459_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx459_54
.Lx459_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx459_54
.Lx459_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx459_54:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n388_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n387_suspend_α
n386_call_builtin_prolog_β:
                                                                              jmp   n388_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n387_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx461_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1360];         jmp   rax
.Lx461_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n387_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n387_suspend_β]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   $assert$2F4_γ
n387_suspend_β:                                                               jmp   n388_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n388_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    $assert$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $assert$2F4_ω
n388_call_builtin_prolog_β:
                                                                              jmp   $assert$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
$assert$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$assert$2F4_β:
                                                                              jmp   n387_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$assert$2F4_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx462_50
                        mov              qword ptr [rsp + 1360], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1360];         jmp   rax
.Lx462_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1528]
                        add              rsp, 1552;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$assert$2F4_ω:
                        mov              rcx, qword ptr [rsp + 1536]
                        add              rsp, 1552;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$retract$2F2:
                        sub              rsp, 544
                        mov              qword ptr [rsp + 520], rcx
                        mov              qword ptr [rsp + 528], rdx
                        mov              qword ptr [rsp + 536], rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 512
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$retract$2F2_α_body:
                        lea              rax, [rip + n475_suspend_β]
                        mov              qword ptr [rsp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n463_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx477_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx477_101
.Lx477_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx477_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx477_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx477_101
.Lx477_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx477_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    $retract$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n464_var_ref_α
n463_call_builtin_prolog_β:
                                                                              jmp   $retract$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n464_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n465_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n465_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n466_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n466_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        lea              r8, [rsp + 384]
.Lx482_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx482_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx482_41
                        cmp              esi, 1;                              jne   .Lx482_55
                        mov              r8, rax;                             jmp   .Lx482_40
.Lx482_55:              cmp              esi, 2;                              jne   .Lx482_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx482_41
                        mov              r8, rax;                             jmp   .Lx482_40
.Lx482_56:              cmp              al, 72;                              jne   .Lx482_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx482_41
                        cmp              rax, r8;                             je    .Lx482_41
                        mov              r8, rax;                             jmp   .Lx482_40
.Lx482_41:              lea              r9, [rsp + 400]
.Lx482_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx482_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx482_43
                        cmp              esi, 1;                              jne   .Lx482_57
                        mov              r9, rax;                             jmp   .Lx482_42
.Lx482_57:              cmp              esi, 2;                              jne   .Lx482_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx482_43
                        mov              r9, rax;                             jmp   .Lx482_42
.Lx482_58:              cmp              al, 72;                              jne   .Lx482_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx482_43
                        cmp              rax, r9;                             je    .Lx482_43
                        mov              r9, rax;                             jmp   .Lx482_42
.Lx482_43:              cmp              r8, r9;                              je    .Lx482_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx482_44
                        cmp              al, 104;                             je    .Lx482_44
                        cmp              al, 72;                              jne   .Lx482_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx482_44
                                                                              jmp   .Lx482_45
.Lx482_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx482_53
                        cmp              al, 104;                             je    .Lx482_53
                        cmp              al, 72;                              jne   .Lx482_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx482_53
                                                                              jmp   .Lx482_46
.Lx482_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx482_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx482_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx482_51
.Lx482_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx482_47
                        cmp              al, 104;                             je    .Lx482_47
                        cmp              al, 72;                              jne   .Lx482_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx482_47
                                                                              jmp   .Lx482_48
.Lx482_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx482_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx482_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx482_51
.Lx482_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx482_49
                        cmp              dl, 80;                              je    .Lx482_53
                                                                              jmp   .Lx482_52
.Lx482_49:              cmp              dl, 80;                              je    .Lx482_52
                        cmp              cl, 5;                               je    .Lx482_53
                        cmp              dl, 5;                               je    .Lx482_53
                        cmp              cl, 3;                               jne   .Lx482_50
                        cmp              dl, 3;                               jne   .Lx482_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx482_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx482_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx482_51
                                                                              jmp   .Lx482_52
.Lx482_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx482_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx482_53
.Lx482_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx482_54
.Lx482_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx482_54
.Lx482_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx482_54:              mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n467_var_ref_α
n466_call_builtin_prolog_β:
                                                                              jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n468_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n468_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 480]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n469_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n469_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        lea              r8, [rsp + 304]
.Lx487_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx487_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx487_41
                        cmp              esi, 1;                              jne   .Lx487_55
                        mov              r8, rax;                             jmp   .Lx487_40
.Lx487_55:              cmp              esi, 2;                              jne   .Lx487_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx487_41
                        mov              r8, rax;                             jmp   .Lx487_40
.Lx487_56:              cmp              al, 72;                              jne   .Lx487_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx487_41
                        cmp              rax, r8;                             je    .Lx487_41
                        mov              r8, rax;                             jmp   .Lx487_40
.Lx487_41:              lea              r9, [rsp + 320]
.Lx487_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx487_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx487_43
                        cmp              esi, 1;                              jne   .Lx487_57
                        mov              r9, rax;                             jmp   .Lx487_42
.Lx487_57:              cmp              esi, 2;                              jne   .Lx487_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx487_43
                        mov              r9, rax;                             jmp   .Lx487_42
.Lx487_58:              cmp              al, 72;                              jne   .Lx487_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx487_43
                        cmp              rax, r9;                             je    .Lx487_43
                        mov              r9, rax;                             jmp   .Lx487_42
.Lx487_43:              cmp              r8, r9;                              je    .Lx487_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx487_44
                        cmp              al, 104;                             je    .Lx487_44
                        cmp              al, 72;                              jne   .Lx487_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx487_44
                                                                              jmp   .Lx487_45
.Lx487_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx487_53
                        cmp              al, 104;                             je    .Lx487_53
                        cmp              al, 72;                              jne   .Lx487_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx487_53
                                                                              jmp   .Lx487_46
.Lx487_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx487_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx487_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx487_51
.Lx487_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx487_47
                        cmp              al, 104;                             je    .Lx487_47
                        cmp              al, 72;                              jne   .Lx487_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx487_47
                                                                              jmp   .Lx487_48
.Lx487_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx487_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx487_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx487_51
.Lx487_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx487_49
                        cmp              dl, 80;                              je    .Lx487_53
                                                                              jmp   .Lx487_52
.Lx487_49:              cmp              dl, 80;                              je    .Lx487_52
                        cmp              cl, 5;                               je    .Lx487_53
                        cmp              dl, 5;                               je    .Lx487_53
                        cmp              cl, 3;                               jne   .Lx487_50
                        cmp              dl, 3;                               jne   .Lx487_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx487_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx487_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx487_51
                                                                              jmp   .Lx487_52
.Lx487_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx487_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx487_53
.Lx487_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx487_54
.Lx487_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx487_54
.Lx487_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx487_54:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n470_lit_string_α
n469_call_builtin_prolog_β:
                                                                              jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_string_α:      mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 12
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n471_var_ref_α
.Lx488_0:               .quad            .Lx488_0_s
.Lx488_0_s:             .string          "Pl_Retract_2"
#-----------------------------------------------------------------------------------------------------------------------
n471_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 464]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n472_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n472_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 480]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n473_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n473_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n474_call_proc_staged_α
n473_call_builtin_prolog_β:
                                                                              jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n474_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx495_20
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx495_21
.Lx495_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx495_21:              mov              rdi, qword ptr [rip + .Lx495_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx495_1
                        mov              rdi, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx495_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx495_3]
                        push             rcx
                        lea              rcx, [rip + .Lx495_3]
                        lea              rdx, [rip + .Lx495_4];               jmp   rax
.Lx495_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx495_2
.Lx495_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx495_2
.Lx495_1:               call             rt_faildescr@PLT
.Lx495_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx495_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx495_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n476_call_builtin_prolog_α
                                                                              jmp   n475_suspend_α
n474_call_proc_staged_β:
                                                                              jmp   n476_call_builtin_prolog_α
.Lx495_0:               .quad            .Lx495_0_s
.Lx495_0_s:             .string          "$call_c_test/1"
#-----------------------------------------------------------------------------------------------------------------------
n475_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx497_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 448];          jmp   rax
.Lx497_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n475_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n475_suspend_β]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $retract$2F2_γ
n475_suspend_β:                                                               jmp   n474_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n476_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    $retract$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $retract$2F2_ω
n476_call_builtin_prolog_β:
                                                                              jmp   $retract$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
$retract$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$retract$2F2_β:
                                                                              jmp   n475_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$retract$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx498_50
                        mov              qword ptr [rsp + 448], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 448];          jmp   rax
.Lx498_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 520]
                        add              rsp, 544;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$retract$2F2_ω:
                        mov              rcx, qword ptr [rsp + 528]
                        add              rsp, 544;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$remove_predicate$2F2:
                        sub              rsp, 544
                        mov              qword ptr [rsp + 520], rcx
                        mov              qword ptr [rsp + 528], rdx
                        mov              qword ptr [rsp + 536], rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 512
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$remove_predicate$2F2_α_body:
                        lea              rax, [rip + n511_suspend_β]
                        mov              qword ptr [rsp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n499_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx513_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx513_101
.Lx513_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx513_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx513_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx513_101
.Lx513_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx513_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    $remove_predicate$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n500_var_ref_α
n499_call_builtin_prolog_β:
                                                                              jmp   $remove_predicate$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n501_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n502_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n502_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        lea              r8, [rsp + 384]
.Lx518_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx518_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx518_41
                        cmp              esi, 1;                              jne   .Lx518_55
                        mov              r8, rax;                             jmp   .Lx518_40
.Lx518_55:              cmp              esi, 2;                              jne   .Lx518_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx518_41
                        mov              r8, rax;                             jmp   .Lx518_40
.Lx518_56:              cmp              al, 72;                              jne   .Lx518_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx518_41
                        cmp              rax, r8;                             je    .Lx518_41
                        mov              r8, rax;                             jmp   .Lx518_40
.Lx518_41:              lea              r9, [rsp + 400]
.Lx518_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx518_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx518_43
                        cmp              esi, 1;                              jne   .Lx518_57
                        mov              r9, rax;                             jmp   .Lx518_42
.Lx518_57:              cmp              esi, 2;                              jne   .Lx518_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx518_43
                        mov              r9, rax;                             jmp   .Lx518_42
.Lx518_58:              cmp              al, 72;                              jne   .Lx518_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx518_43
                        cmp              rax, r9;                             je    .Lx518_43
                        mov              r9, rax;                             jmp   .Lx518_42
.Lx518_43:              cmp              r8, r9;                              je    .Lx518_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx518_44
                        cmp              al, 104;                             je    .Lx518_44
                        cmp              al, 72;                              jne   .Lx518_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx518_44
                                                                              jmp   .Lx518_45
.Lx518_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx518_53
                        cmp              al, 104;                             je    .Lx518_53
                        cmp              al, 72;                              jne   .Lx518_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx518_53
                                                                              jmp   .Lx518_46
.Lx518_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx518_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx518_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx518_51
.Lx518_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx518_47
                        cmp              al, 104;                             je    .Lx518_47
                        cmp              al, 72;                              jne   .Lx518_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx518_47
                                                                              jmp   .Lx518_48
.Lx518_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx518_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx518_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx518_51
.Lx518_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx518_49
                        cmp              dl, 80;                              je    .Lx518_53
                                                                              jmp   .Lx518_52
.Lx518_49:              cmp              dl, 80;                              je    .Lx518_52
                        cmp              cl, 5;                               je    .Lx518_53
                        cmp              dl, 5;                               je    .Lx518_53
                        cmp              cl, 3;                               jne   .Lx518_50
                        cmp              dl, 3;                               jne   .Lx518_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx518_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx518_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx518_51
                                                                              jmp   .Lx518_52
.Lx518_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx518_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx518_53
.Lx518_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx518_54
.Lx518_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx518_54
.Lx518_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx518_54:              mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n512_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n503_var_ref_α
n502_call_builtin_prolog_β:
                                                                              jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n504_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 480]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n505_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n505_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        lea              r8, [rsp + 304]
.Lx523_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx523_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx523_41
                        cmp              esi, 1;                              jne   .Lx523_55
                        mov              r8, rax;                             jmp   .Lx523_40
.Lx523_55:              cmp              esi, 2;                              jne   .Lx523_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx523_41
                        mov              r8, rax;                             jmp   .Lx523_40
.Lx523_56:              cmp              al, 72;                              jne   .Lx523_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx523_41
                        cmp              rax, r8;                             je    .Lx523_41
                        mov              r8, rax;                             jmp   .Lx523_40
.Lx523_41:              lea              r9, [rsp + 320]
.Lx523_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx523_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx523_43
                        cmp              esi, 1;                              jne   .Lx523_57
                        mov              r9, rax;                             jmp   .Lx523_42
.Lx523_57:              cmp              esi, 2;                              jne   .Lx523_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx523_43
                        mov              r9, rax;                             jmp   .Lx523_42
.Lx523_58:              cmp              al, 72;                              jne   .Lx523_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx523_43
                        cmp              rax, r9;                             je    .Lx523_43
                        mov              r9, rax;                             jmp   .Lx523_42
.Lx523_43:              cmp              r8, r9;                              je    .Lx523_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx523_44
                        cmp              al, 104;                             je    .Lx523_44
                        cmp              al, 72;                              jne   .Lx523_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx523_44
                                                                              jmp   .Lx523_45
.Lx523_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx523_53
                        cmp              al, 104;                             je    .Lx523_53
                        cmp              al, 72;                              jne   .Lx523_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx523_53
                                                                              jmp   .Lx523_46
.Lx523_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx523_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx523_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx523_51
.Lx523_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx523_47
                        cmp              al, 104;                             je    .Lx523_47
                        cmp              al, 72;                              jne   .Lx523_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx523_47
                                                                              jmp   .Lx523_48
.Lx523_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx523_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx523_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx523_51
.Lx523_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx523_49
                        cmp              dl, 80;                              je    .Lx523_53
                                                                              jmp   .Lx523_52
.Lx523_49:              cmp              dl, 80;                              je    .Lx523_52
                        cmp              cl, 5;                               je    .Lx523_53
                        cmp              dl, 5;                               je    .Lx523_53
                        cmp              cl, 3;                               jne   .Lx523_50
                        cmp              dl, 3;                               jne   .Lx523_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx523_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx523_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx523_51
                                                                              jmp   .Lx523_52
.Lx523_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx523_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx523_53
.Lx523_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx523_54
.Lx523_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx523_54
.Lx523_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx523_54:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n512_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n506_lit_string_α
n505_call_builtin_prolog_β:
                                                                              jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:      mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 21
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n507_var_ref_α
.Lx524_0:               .quad            .Lx524_0_s
.Lx524_0_s:             .string          "Pl_Remove_Predicate_2"
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 464]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n508_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 480]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n509_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n509_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n512_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n510_call_proc_staged_α
n509_call_builtin_prolog_β:
                                                                              jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n510_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx531_20
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx531_21
.Lx531_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx531_21:              mov              rdi, qword ptr [rip + .Lx531_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx531_1
                        mov              rdi, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx531_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx531_3]
                        push             rcx
                        lea              rcx, [rip + .Lx531_3]
                        lea              rdx, [rip + .Lx531_4];               jmp   rax
.Lx531_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx531_2
.Lx531_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx531_2
.Lx531_1:               call             rt_faildescr@PLT
.Lx531_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx531_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx531_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n512_call_builtin_prolog_α
                                                                              jmp   n511_suspend_α
n510_call_proc_staged_β:
                                                                              jmp   n512_call_builtin_prolog_α
.Lx531_0:               .quad            .Lx531_0_s
.Lx531_0_s:             .string          "$call_c/1"
#-----------------------------------------------------------------------------------------------------------------------
n511_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx533_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 448];          jmp   rax
.Lx533_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n511_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n511_suspend_β]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $remove_predicate$2F2_γ
n511_suspend_β:                                                               jmp   n510_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n512_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    $remove_predicate$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $remove_predicate$2F2_ω
n512_call_builtin_prolog_β:
                                                                              jmp   $remove_predicate$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
$remove_predicate$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$remove_predicate$2F2_β:
                                                                              jmp   n511_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$remove_predicate$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx534_50
                        mov              qword ptr [rsp + 448], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 448];          jmp   rax
.Lx534_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 520]
                        add              rsp, 544;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$remove_predicate$2F2_ω:
                        mov              rcx, qword ptr [rsp + 528]
                        add              rsp, 544;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__retract$2F1:
                        sub              rsp, 624
                        mov              qword ptr [rsp + 600], rcx
                        mov              qword ptr [rsp + 608], rdx
                        mov              qword ptr [rsp + 616], rsp
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 592
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
retract$2F1_α_body:
                        lea              rax, [rip + n549_suspend_β]
                        mov              qword ptr [rsp + 512], rax
#-----------------------------------------------------------------------------------------------------------------------
n535_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx551_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx551_101
.Lx551_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx551_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx551_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx551_101
.Lx551_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx551_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    retract$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n536_var_ref_α
n535_call_builtin_prolog_β:
                                                                              jmp   retract$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n537_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 560]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n538_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n538_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        lea              r8, [rsp + 448]
.Lx556_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx556_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx556_41
                        cmp              esi, 1;                              jne   .Lx556_55
                        mov              r8, rax;                             jmp   .Lx556_40
.Lx556_55:              cmp              esi, 2;                              jne   .Lx556_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx556_41
                        mov              r8, rax;                             jmp   .Lx556_40
.Lx556_56:              cmp              al, 72;                              jne   .Lx556_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx556_41
                        cmp              rax, r8;                             je    .Lx556_41
                        mov              r8, rax;                             jmp   .Lx556_40
.Lx556_41:              lea              r9, [rsp + 464]
.Lx556_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx556_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx556_43
                        cmp              esi, 1;                              jne   .Lx556_57
                        mov              r9, rax;                             jmp   .Lx556_42
.Lx556_57:              cmp              esi, 2;                              jne   .Lx556_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx556_43
                        mov              r9, rax;                             jmp   .Lx556_42
.Lx556_58:              cmp              al, 72;                              jne   .Lx556_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx556_43
                        cmp              rax, r9;                             je    .Lx556_43
                        mov              r9, rax;                             jmp   .Lx556_42
.Lx556_43:              cmp              r8, r9;                              je    .Lx556_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx556_44
                        cmp              al, 104;                             je    .Lx556_44
                        cmp              al, 72;                              jne   .Lx556_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx556_44
                                                                              jmp   .Lx556_45
.Lx556_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx556_53
                        cmp              al, 104;                             je    .Lx556_53
                        cmp              al, 72;                              jne   .Lx556_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx556_53
                                                                              jmp   .Lx556_46
.Lx556_46:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx556_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx556_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx556_51
.Lx556_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx556_47
                        cmp              al, 104;                             je    .Lx556_47
                        cmp              al, 72;                              jne   .Lx556_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx556_47
                                                                              jmp   .Lx556_48
.Lx556_47:              lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx556_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx556_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx556_51
.Lx556_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx556_49
                        cmp              dl, 80;                              je    .Lx556_53
                                                                              jmp   .Lx556_52
.Lx556_49:              cmp              dl, 80;                              je    .Lx556_52
                        cmp              cl, 5;                               je    .Lx556_53
                        cmp              dl, 5;                               je    .Lx556_53
                        cmp              cl, 3;                               jne   .Lx556_50
                        cmp              dl, 3;                               jne   .Lx556_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx556_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx556_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx556_51
                                                                              jmp   .Lx556_52
.Lx556_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx556_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx556_53
.Lx556_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx556_54
.Lx556_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx556_54
.Lx556_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx556_54:              mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n550_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n539_lit_string_α
n538_call_builtin_prolog_β:
                                                                              jmp   n550_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n539_lit_string_α:      mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 7
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n540_lit_integer_α
.Lx557_0:               .quad            .Lx557_0_s
.Lx557_0_s:             .string          "retract"
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_integer_α:     mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n541_call_proc_staged_α
.Lx558_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n541_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx560_20
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx560_21
.Lx560_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx560_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx560_22
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx560_23
.Lx560_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx560_23:              mov              rdi, qword ptr [rip + .Lx560_0]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx560_1
                        mov              rdi, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx560_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx560_3]
                        push             rcx
                        lea              rcx, [rip + .Lx560_3]
                        lea              rdx, [rip + .Lx560_4];               jmp   rax
.Lx560_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx560_2
.Lx560_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx560_2
.Lx560_1:               call             rt_faildescr@PLT
.Lx560_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx560_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
.Lx560_29:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n550_call_builtin_prolog_α
                                                                              jmp   n542_var_ref_α
n541_call_proc_staged_β:
                                                                              jmp   n550_call_builtin_prolog_α
.Lx560_0:               .quad            .Lx560_0_s
.Lx560_0_s:             .string          "set_bip_name/2"
#-----------------------------------------------------------------------------------------------------------------------
n542_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 560]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n543_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n543_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 528]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n544_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 544]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n545_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n545_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx568_20
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx568_21
.Lx568_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx568_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx568_22
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx568_23
.Lx568_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx568_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx568_24
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx568_25
.Lx568_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx568_25:              mov              rdi, qword ptr [rip + .Lx568_0]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx568_1
                        mov              rdi, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx568_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx568_3]
                        push             rcx
                        lea              rcx, [rip + .Lx568_3]
                        lea              rdx, [rip + .Lx568_4];               jmp   rax
.Lx568_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx568_2
.Lx568_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx568_2
.Lx568_1:               call             rt_faildescr@PLT
.Lx568_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx568_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
.Lx568_29:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n541_call_proc_staged_β
                                                                              jmp   n546_var_ref_α
n545_call_proc_staged_β:
                                                                              jmp   n541_call_proc_staged_β
.Lx568_0:               .quad            .Lx568_0_s
.Lx568_0_s:             .string          "$get_head_and_body/3"
#-----------------------------------------------------------------------------------------------------------------------
n546_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 528]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n547_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 544]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n548_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n548_call_proc_staged_α:
                        mov              qword ptr [rsp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx574_20
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx574_21
.Lx574_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx574_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx574_22
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx574_23
.Lx574_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx574_23:              lea              rax, [rip + .Lx574_7]
                        push             rax
                        mov              edi, 13
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx574_1
                        lea              rcx, [rip + .Lx574_3]
                        lea              rdx, [rip + .Lx574_4];               jmp   rax
.Lx574_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx574_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx574_2
.Lx574_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx574_2
.Lx574_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx574_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx574_2
.Lx574_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx574_2
.Lx574_1:               call             rt_faildescr@PLT
.Lx574_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx574_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx574_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n545_call_proc_staged_β
                                                                              jmp   n549_suspend_α
n548_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n545_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 48
                        mov              r8d, 448
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 13
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n545_call_proc_staged_β
                        lea              r11, [rip + .Lx574_7]
                        push             r11
                        lea              rcx, [rip + .Lx574_3]
                        lea              rdx, [rip + .Lx574_4];               jmp   rax
.Lx574_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n545_call_proc_staged_β
                                                                              jmp   n549_suspend_α
.Lx574_0:               .quad            .Lx574_0_s
.Lx574_0_s:             .string          "$retract/2"
#-----------------------------------------------------------------------------------------------------------------------
n549_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx576_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 512];          jmp   rax
.Lx576_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n549_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n549_suspend_β]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   retract$2F1_γ
n549_suspend_β:                                                               jmp   n548_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n550_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    retract$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   retract$2F1_ω
n550_call_builtin_prolog_β:
                                                                              jmp   retract$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
retract$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
retract$2F1_β:
                                                                              jmp   n549_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
retract$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx577_50
                        mov              qword ptr [rsp + 512], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 512];          jmp   rax
.Lx577_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 600]
                        add              rsp, 624;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
retract$2F1_ω:
                        mov              rcx, qword ptr [rsp + 608]
                        add              rsp, 624;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_5$2F0:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n583_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n578_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx585_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx585_101
.Lx585_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx585_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx585_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx585_101
.Lx585_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx585_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_5$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n579_lit_string_α
n578_call_builtin_prolog_β:
                                                                              jmp   pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n580_lit_string_α
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "abolish"
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx587_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n581_call_builtin_prolog_α
.Lx587_0:               .quad            .Lx587_0_s
.Lx587_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n581_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n584_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n582_call_proc_staged_α
n581_call_builtin_prolog_β:
                                                                              jmp   n584_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n582_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx590_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx590_21
.Lx590_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx590_21:              mov              rdi, qword ptr [rip + .Lx590_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx590_1
                        mov              rdi, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx590_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx590_3]
                        push             rcx
                        lea              rcx, [rip + .Lx590_3]
                        lea              rdx, [rip + .Lx590_4];               jmp   rax
.Lx590_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx590_2
.Lx590_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx590_2
.Lx590_1:               call             rt_faildescr@PLT
.Lx590_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx590_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx590_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n584_call_builtin_prolog_α
                                                                              jmp   n583_suspend_α
n582_call_proc_staged_β:
                                                                              jmp   n584_call_builtin_prolog_α
.Lx590_0:               .quad            .Lx590_0_s
.Lx590_0_s:             .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n583_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx592_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx592_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n583_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n583_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_5$2F0_γ
n583_suspend_β:                                                               jmp   n582_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n584_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_5$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_5$2F0_ω
n584_call_builtin_prolog_β:
                                                                              jmp   pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_β:
                                                                              jmp   n583_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx593_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx593_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_5$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_3$2F0:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n599_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n594_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx601_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx601_101
.Lx601_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx601_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx601_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx601_101
.Lx601_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx601_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n595_lit_string_α
n594_call_builtin_prolog_β:
                                                                              jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 10
                        mov              rax, qword ptr [rip + .Lx602_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n596_lit_string_α
.Lx602_0:               .quad            .Lx602_0_s
.Lx602_0_s:             .string          "retractall"
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n597_call_builtin_prolog_α
.Lx603_0:               .quad            .Lx603_0_s
.Lx603_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n597_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n600_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n598_call_proc_staged_α
n597_call_builtin_prolog_β:
                                                                              jmp   n600_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n598_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx606_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx606_21
.Lx606_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx606_21:              mov              rdi, qword ptr [rip + .Lx606_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx606_1
                        mov              rdi, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx606_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx606_3]
                        push             rcx
                        lea              rcx, [rip + .Lx606_3]
                        lea              rdx, [rip + .Lx606_4];               jmp   rax
.Lx606_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx606_2
.Lx606_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx606_2
.Lx606_1:               call             rt_faildescr@PLT
.Lx606_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx606_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx606_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n600_call_builtin_prolog_α
                                                                              jmp   n599_suspend_α
n598_call_proc_staged_β:
                                                                              jmp   n600_call_builtin_prolog_α
.Lx606_0:               .quad            .Lx606_0_s
.Lx606_0_s:             .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n599_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx608_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx608_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n599_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n599_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_3$2F0_γ
n599_suspend_β:                                                               jmp   n598_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n600_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_3$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_3$2F0_ω
n600_call_builtin_prolog_β:
                                                                              jmp   pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_β:
                                                                              jmp   n599_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx609_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx609_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_3$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pj_dir_1$2F0:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 256
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n615_suspend_β]
                        mov              qword ptr [rsp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n610_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx617_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx617_101
.Lx617_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx617_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx617_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx617_101
.Lx617_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx617_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n611_lit_string_α
n610_call_builtin_prolog_β:
                                                                              jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n611_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 7
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n612_lit_string_α
.Lx618_0:               .quad            .Lx618_0_s
.Lx618_0_s:             .string          "assertz"
#-----------------------------------------------------------------------------------------------------------------------
n612_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 1
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n613_call_builtin_prolog_α
.Lx619_0:               .quad            .Lx619_0_s
.Lx619_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n613_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n616_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n614_call_proc_staged_α
n613_call_builtin_prolog_β:
                                                                              jmp   n616_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n614_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx622_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx622_21
.Lx622_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx622_21:              mov              rdi, qword ptr [rip + .Lx622_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx622_1
                        mov              rdi, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx622_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx622_3]
                        push             rcx
                        lea              rcx, [rip + .Lx622_3]
                        lea              rdx, [rip + .Lx622_4];               jmp   rax
.Lx622_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx622_2
.Lx622_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx622_2
.Lx622_1:               call             rt_faildescr@PLT
.Lx622_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx622_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
.Lx622_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n616_call_builtin_prolog_α
                                                                              jmp   n615_suspend_α
n614_call_proc_staged_β:
                                                                              jmp   n616_call_builtin_prolog_α
.Lx622_0:               .quad            .Lx622_0_s
.Lx622_0_s:             .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n615_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx624_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx624_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n615_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n615_suspend_β]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   pj_dir_1$2F0_γ
n615_suspend_β:                                                               jmp   n614_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n616_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 72], rax
                        lea              rdi, [rsp + 64]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    pj_dir_1$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   pj_dir_1$2F0_ω
n616_call_builtin_prolog_β:
                                                                              jmp   pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_β:
                                                                              jmp   n615_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx625_50
                        mov              qword ptr [rsp + 224], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 224];          jmp   rax
.Lx625_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 264]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pj_dir_1$2F0_ω:
                        mov              rcx, qword ptr [rsp + 272]
                        add              rsp, 288;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$3A$2F0:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rsp
                        mov              rdi, rsp
                        mov              esi, 80
                        mov              edx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$3A$2F0_α_body:
                        lea              rax, [rip + n628_suspend_β]
                        mov              qword ptr [rsp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n626_lit_string_α:      mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 1
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n627_call_builtin_gen_α
.Lx629_0:               .quad            .Lx629_0_s
.Lx629_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n627_call_builtin_gen_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              qword ptr [rsp + 48], 0
.Lx630_60:              .section         .rodata
.Lbynamegenfn250:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn250]
                        lea              rsi, [rsp + 32]
                        mov              edx, 1
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    $3A$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n628_suspend_α
n627_call_builtin_gen_β:
                                                                              jmp   .Lx630_60
#-----------------------------------------------------------------------------------------------------------------------
n628_suspend_α:         mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx632_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80];           jmp   rax
.Lx632_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n628_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n628_suspend_β]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   $3A$2F0_γ
n628_suspend_β:                                                               jmp   n627_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$3A$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$3A$2F0_β:
                                                                              jmp   n627_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$3A$2F0_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx632_50
                        mov              qword ptr [rsp + 80], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 80];           jmp   rax
.Lx632_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 120]
                        add              rsp, 144;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$3A$2F0_ω:
                        mov              rcx, qword ptr [rsp + 128]
                        add              rsp, 144;                            jmp   rcx
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 160
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n633_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 7
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n634_lit_string_α
.Lx637_0:               .quad            .Lx637_0_s
.Lx637_0_s:             .string          "abolish"
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:      mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 1
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n635_call_builtin_prolog_α
.Lx638_0:               .quad            .Lx638_0_s
.Lx638_0_s:             .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n635_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n636_call_proc_staged_α
n635_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n636_call_proc_staged_α:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx641_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx641_21
.Lx641_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx641_21:              mov              rdi, qword ptr [rip + .Lx641_0]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx641_1
                        mov              rdi, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx641_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx641_3]
                        push             rcx
                        lea              rcx, [rip + .Lx641_3]
                        lea              rdx, [rip + .Lx641_4];               jmp   rax
.Lx641_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx641_2
.Lx641_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx641_2
.Lx641_1:               call             rt_faildescr@PLT
.Lx641_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx641_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx641_29:              mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n636_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx641_0:               .quad            .Lx641_0_s
.Lx641_0_s:             .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 168]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 176]
                        add              rsp, 192;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$use_assert/0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__$use_assert$2F0
                        .quad            $use_assert$2F0_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$clause/3"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__$clause$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            640
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "retractall/1"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__retractall$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            816
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$scan_dyn_test_alt/0"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__$scan_dyn_test_alt$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            160
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "assertz/1"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__assertz$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            480
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "$scan_dyn_jump_alt/0"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__$scan_dyn_jump_alt$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            160
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "asserta/1"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__asserta$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            480
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "abolish/1"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__abolish$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            448
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "pj_dir_4/0"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__pj_dir_4$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            272
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "pj_dir_2/0"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__pj_dir_2$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pj_dir_0/0"
                        .align           8
.Lstartup_prec10:
                        .quad            .Lstartup_pname10
                        .quad            FN__pj_dir_0$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec10]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "clause/2"
                        .align           8
.Lstartup_prec11:
                        .quad            .Lstartup_pname11
                        .quad            FN__clause$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            624
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec11]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "$assert/4"
                        .align           8
.Lstartup_prec12:
                        .quad            .Lstartup_pname12
                        .quad            FN__$assert$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            1504
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec12]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "$retract/2"
                        .align           8
.Lstartup_prec13:
                        .quad            .Lstartup_pname13
                        .quad            FN__$retract$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            496
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec13]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "$remove_predicate/2"
                        .align           8
.Lstartup_prec14:
                        .quad            .Lstartup_pname14
                        .quad            FN__$remove_predicate$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            496
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec14]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "retract/1"
                        .align           8
.Lstartup_prec15:
                        .quad            .Lstartup_pname15
                        .quad            FN__retract$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            576
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec15]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "pj_dir_5/0"
                        .align           8
.Lstartup_prec16:
                        .quad            .Lstartup_pname16
                        .quad            FN__pj_dir_5$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec16]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "pj_dir_3/0"
                        .align           8
.Lstartup_prec17:
                        .quad            .Lstartup_pname17
                        .quad            FN__pj_dir_3$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec17]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "pj_dir_1/0"
                        .align           8
.Lstartup_prec18:
                        .quad            .Lstartup_pname18
                        .quad            FN__pj_dir_1$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            240
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec18]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          ":/0"
                        .align           8
.Lstartup_prec19:
                        .quad            .Lstartup_pname19
                        .quad            FN__$3A$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec19]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
