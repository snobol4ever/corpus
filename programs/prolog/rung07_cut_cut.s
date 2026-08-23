                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__differ$2F2:
                        sub              rsp, 608
                        mov              qword ptr [rsp + 584], rcx
                        mov              qword ptr [rsp + 592], rdx
                        mov              qword ptr [rsp + 600], rsp
                        mov              rdi, rsp
                        mov              esi, 496
                        mov              edx, 576
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
differ$2F2_α_body:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rsp + 496], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx17_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx17_101
.Lx17_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx17_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx17_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx17_101
.Lx17_100:              lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx17_101:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    differ$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   differ$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 544]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
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
.Lx22_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx22_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx22_41
                        cmp              esi, 1;                              jne   .Lx22_55
                        mov              r8, rax;                             jmp   .Lx22_40
.Lx22_55:               cmp              esi, 2;                              jne   .Lx22_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx22_41
                        mov              r8, rax;                             jmp   .Lx22_40
.Lx22_56:               cmp              al, 72;                              jne   .Lx22_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx22_41
                        cmp              rax, r8;                             je    .Lx22_41
                        mov              r8, rax;                             jmp   .Lx22_40
.Lx22_41:               lea              r9, [rsp + 448]
.Lx22_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx22_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx22_43
                        cmp              esi, 1;                              jne   .Lx22_57
                        mov              r9, rax;                             jmp   .Lx22_42
.Lx22_57:               cmp              esi, 2;                              jne   .Lx22_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx22_43
                        mov              r9, rax;                             jmp   .Lx22_42
.Lx22_58:               cmp              al, 72;                              jne   .Lx22_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx22_43
                        cmp              rax, r9;                             je    .Lx22_43
                        mov              r9, rax;                             jmp   .Lx22_42
.Lx22_43:               cmp              r8, r9;                              je    .Lx22_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx22_44
                        cmp              al, 104;                             je    .Lx22_44
                        cmp              al, 72;                              jne   .Lx22_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx22_44
                                                                              jmp   .Lx22_45
.Lx22_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx22_53
                        cmp              al, 104;                             je    .Lx22_53
                        cmp              al, 72;                              jne   .Lx22_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx22_53
                                                                              jmp   .Lx22_46
.Lx22_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx22_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx22_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx22_51
.Lx22_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx22_47
                        cmp              al, 104;                             je    .Lx22_47
                        cmp              al, 72;                              jne   .Lx22_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx22_47
                                                                              jmp   .Lx22_48
.Lx22_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx22_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx22_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx22_51
.Lx22_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx22_49
                        cmp              dl, 80;                              je    .Lx22_53
                                                                              jmp   .Lx22_52
.Lx22_49:               cmp              dl, 80;                              je    .Lx22_52
                        cmp              cl, 5;                               je    .Lx22_53
                        cmp              dl, 5;                               je    .Lx22_53
                        cmp              cl, 3;                               jne   .Lx22_50
                        cmp              dl, 3;                               jne   .Lx22_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx22_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx22_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx22_51
                                                                              jmp   .Lx22_52
.Lx22_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx22_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx22_53
.Lx22_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx22_54
.Lx22_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx22_54
.Lx22_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx22_54:               mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n8_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 544]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
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
.Lx27_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx27_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx27_41
                        cmp              esi, 1;                              jne   .Lx27_55
                        mov              r8, rax;                             jmp   .Lx27_40
.Lx27_55:               cmp              esi, 2;                              jne   .Lx27_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx27_41
                        mov              r8, rax;                             jmp   .Lx27_40
.Lx27_56:               cmp              al, 72;                              jne   .Lx27_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx27_41
                        cmp              rax, r8;                             je    .Lx27_41
                        mov              r8, rax;                             jmp   .Lx27_40
.Lx27_41:               lea              r9, [rsp + 368]
.Lx27_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx27_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx27_43
                        cmp              esi, 1;                              jne   .Lx27_57
                        mov              r9, rax;                             jmp   .Lx27_42
.Lx27_57:               cmp              esi, 2;                              jne   .Lx27_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx27_43
                        mov              r9, rax;                             jmp   .Lx27_42
.Lx27_58:               cmp              al, 72;                              jne   .Lx27_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx27_43
                        cmp              rax, r9;                             je    .Lx27_43
                        mov              r9, rax;                             jmp   .Lx27_42
.Lx27_43:               cmp              r8, r9;                              je    .Lx27_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx27_44
                        cmp              al, 104;                             je    .Lx27_44
                        cmp              al, 72;                              jne   .Lx27_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx27_44
                                                                              jmp   .Lx27_45
.Lx27_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx27_53
                        cmp              al, 104;                             je    .Lx27_53
                        cmp              al, 72;                              jne   .Lx27_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx27_53
                                                                              jmp   .Lx27_46
.Lx27_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx27_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx27_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx27_51
.Lx27_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx27_47
                        cmp              al, 104;                             je    .Lx27_47
                        cmp              al, 72;                              jne   .Lx27_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx27_47
                                                                              jmp   .Lx27_48
.Lx27_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx27_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx27_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx27_51
.Lx27_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx27_49
                        cmp              dl, 80;                              je    .Lx27_53
                                                                              jmp   .Lx27_52
.Lx27_49:               cmp              dl, 80;                              je    .Lx27_52
                        cmp              cl, 5;                               je    .Lx27_53
                        cmp              dl, 5;                               je    .Lx27_53
                        cmp              cl, 3;                               jne   .Lx27_50
                        cmp              dl, 3;                               jne   .Lx27_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx27_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx27_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx27_51
                                                                              jmp   .Lx27_52
.Lx27_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx27_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx27_53
.Lx27_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx27_54
.Lx27_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx27_54
.Lx27_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx27_54:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n8_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_cut_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_cut_α:               mov              r11, 8;                              jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 9
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    differ$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   differ$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 528]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        lea              r8, [rsp + 224]
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
.Lx34_41:               lea              r9, [rsp + 240]
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
.Lx34_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx34_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx34_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
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
.Lx34_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx34_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx34_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx34_54:               mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                        mov              r11, 12;                             jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 512]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        lea              r8, [rsp + 144]
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
.Lx39_41:               lea              r9, [rsp + 160]
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
.Lx39_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx39_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx39_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
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
.Lx39_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx39_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx39_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx39_54:               mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_suspend_α
n14_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:          mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx41_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 496];          jmp   rax
.Lx41_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n15_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   differ$2F2_γ
n15_suspend_β:          mov              r11, 16;                             jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    differ$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   differ$2F2_ω
n16_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   differ$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
differ$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
differ$2F2_β:
                                                                              jmp   n15_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
differ$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx42_50
                        mov              qword ptr [rsp + 496], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 496];          jmp   rax
.Lx42_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 584]
                        add              rsp, 608;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
differ$2F2_ω:
                        mov              rcx, qword ptr [rsp + 592]
                        add              rsp, 608;                            jmp   rcx
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
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rcx
                        mov              qword ptr [rsp + 640], rdx
                        mov              qword ptr [rsp + 648], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 624
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              r11, 18
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx65_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx65_101
.Lx65_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx65_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx65_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx65_101
.Lx65_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx65_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_lit_string_α
n43_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n45_lit_string_α
.Lx66_0:                .quad            .Lx66_0_s
.Lx66_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n46_call_proc_staged_α
.Lx67_0:                .quad            .Lx67_0_s
.Lx67_0_s:              .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_proc_staged_α: mov              r11, 21
                        mov              qword ptr [rsp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx69_200
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx69_201
.Lx69_200:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx69_201:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx69_202
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx69_203
.Lx69_202:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx69_203:              lea              rax, [rip + .Lx69_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx69_1
                        lea              rcx, [rip + .Lx69_3]
                        lea              rdx, [rip + .Lx69_4];                jmp   rax
.Lx69_3:                mov              qword ptr [rsp + 552], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 544]
                        test             rax, rax;                            jne   .Lx69_5
                        mov              qword ptr [rsp + 544], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx69_2
.Lx69_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx69_2
.Lx69_4:                mov              rax, qword ptr [rsp + 544]
                        test             rax, rax;                            jne   .Lx69_6
                        mov              qword ptr [rsp + 544], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx69_2
.Lx69_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx69_2
.Lx69_1:                call             rt_faildescr@PLT
.Lx69_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx69_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
.Lx69_29:               mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n49_lit_string_α
                                                                              jmp   n47_lit_string_α
n46_call_proc_staged_β: mov              r11, 21
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 544], 0
                        lea              rdi, [rsp + 560]
                        lea              rsi, [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n49_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              ecx, 48
                        mov              r8d, 496
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n49_lit_string_α
                        lea              r8, [rip + .Lx69_7]
                        push             r8
                        lea              rcx, [rip + .Lx69_3]
                        lea              rdx, [rip + .Lx69_4];                jmp   rax
.Lx69_7:                add              rsp, 8
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n49_lit_string_α
                                                                              jmp   n47_lit_string_α
.Lx69_0:                .quad            .Lx69_0_s
.Lx69_0_s:              .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 3
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n48_call_builtin_prolog_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn72:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n64_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_lit_string_α
n48_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 2
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n50_call_builtin_prolog_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn75:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n64_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_lit_string_α
n50_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 0
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n52_call_builtin_prolog_α
.Lx76_0:                .quad            .Lx76_0_s
.Lx76_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn78:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn78]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n64_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_lit_string_α
n52_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx79_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n54_lit_string_α
.Lx79_0:                .quad            .Lx79_0_s
.Lx79_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 1
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n55_call_proc_staged_α
.Lx80_0:                .quad            .Lx80_0_s
.Lx80_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n55_call_proc_staged_α: mov              r11, 30
                        mov              qword ptr [rsp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx82_200
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx82_201
.Lx82_200:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx82_201:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx82_202
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx82_203
.Lx82_202:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx82_203:              lea              rax, [rip + .Lx82_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx82_1
                        lea              rcx, [rip + .Lx82_3]
                        lea              rdx, [rip + .Lx82_4];                jmp   rax
.Lx82_3:                mov              qword ptr [rsp + 296], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lx82_5
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx82_2
.Lx82_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx82_2
.Lx82_4:                mov              rax, qword ptr [rsp + 288]
                        test             rax, rax;                            jne   .Lx82_6
                        mov              qword ptr [rsp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx82_2
.Lx82_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx82_2
.Lx82_1:                call             rt_faildescr@PLT
.Lx82_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx82_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
.Lx82_29:               mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n58_lit_string_α
                                                                              jmp   n56_lit_string_α
n55_call_proc_staged_β: mov              r11, 30
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 288], 0
                        lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n58_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              ecx, 48
                        mov              r8d, 496
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n58_lit_string_α
                        lea              r8, [rip + .Lx82_7]
                        push             r8
                        lea              rcx, [rip + .Lx82_3]
                        lea              rdx, [rip + .Lx82_4];                jmp   rax
.Lx82_7:                add              rsp, 8
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n58_lit_string_α
                                                                              jmp   n56_lit_string_α
.Lx82_0:                .quad            .Lx82_0_s
.Lx82_0_s:              .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 3
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n57_call_builtin_prolog_α
.Lx83_0:                .quad            .Lx83_0_s
.Lx83_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn85:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn85]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n64_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n60_lit_string_α
n57_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n59_call_builtin_prolog_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              r11, 34
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn88:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n64_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n60_lit_string_α
n59_call_builtin_prolog_β:
                        mov              r11, 34;                             jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n61_call_builtin_prolog_α
.Lx89_0:                .quad            .Lx89_0_s
.Lx89_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn91:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n64_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n62_move_label_α
n61_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_move_label_α:       mov              r11, 37
                        lea              rax, [rip + n64_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n63_disjunction_α:      mov              r11, 38
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n63_disjunction_β:      mov              r11, 38;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_ω
n64_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n63_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 632]
                        add              rsp, 656;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 640]
                        add              rsp, 656;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "differ/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__differ$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            560
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
