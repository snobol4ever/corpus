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
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
differ$2F2_α_body:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rsp + 496], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx17_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx17_101
.Lx17_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx17_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx17_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx17_101
.Lx17_100:              lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx17_101:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    differ$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
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
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx22_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx22_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx22_51
.Lx22_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx22_47
                        cmp              al, 104;                             je    .Lx22_47
                        cmp              al, 72;                              jne   .Lx22_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx22_47
                                                                              jmp   .Lx22_48
.Lx22_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx22_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx22_53
                        add              rdi, rsi
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx22_54:               mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n8_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_var_ref_α
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
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx27_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx27_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx27_51
.Lx27_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx27_47
                        cmp              al, 104;                             je    .Lx27_47
                        cmp              al, 72;                              jne   .Lx27_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx27_47
                                                                              jmp   .Lx27_48
.Lx27_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx27_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx27_53
                        add              rdi, rsi
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx27_54:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n8_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_cut_α
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
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    differ$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_var_ref_α
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
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx34_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx34_53
                        add              rdi, rsi
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
.Lx34_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx34_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx34_53
                        add              rdi, rsi
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
.Lx34_54:               mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_var_ref_α
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
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx39_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx39_53
                        add              rdi, rsi
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
.Lx39_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx39_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx39_53
                        add              rdi, rsi
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
.Lx39_54:               mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n16_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_suspend_α
n14_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:          mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx41_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 496];          jmp   rax
.Lx41_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n15_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    differ$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   differ$2F2_ω
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
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx42_50
                        mov              qword ptr [rsp + 496], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 496];          jmp   rax
.Lx42_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 584]
                        add              rsp, 608;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
differ$2F2_ω:
                        mov              rcx, qword ptr [rsp + 592]
                        add              rsp, 608;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__differ$2F4:
                        sub              rsp, 2864
                        mov              qword ptr [rsp + 2840], rcx
                        mov              qword ptr [rsp + 2848], rdx
                        mov              qword ptr [rsp + 2856], rsp
                        mov              rdi, rsp
                        mov              esi, 2688
                        mov              edx, 2832
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
differ$2F4_α_body:
                        lea              rax, [rip + n140_suspend_β]
                        mov              qword ptr [rsp + 2688], rax
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              r11, 18
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx142_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx142_101
.Lx142_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx142_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx142_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx142_101
.Lx142_100:             lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx142_101:             mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_var_ref_α
n43_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n45_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n46_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2648], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2632], rax
                        lea              rdi, [rsp + 2624]
                        lea              r8, [rsp + 2624]
.Lx147_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx147_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx147_41
                        cmp              esi, 1;                              jne   .Lx147_55
                        mov              r8, rax;                             jmp   .Lx147_40
.Lx147_55:              cmp              esi, 2;                              jne   .Lx147_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx147_41
                        mov              r8, rax;                             jmp   .Lx147_40
.Lx147_56:              cmp              al, 72;                              jne   .Lx147_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx147_41
                        cmp              rax, r8;                             je    .Lx147_41
                        mov              r8, rax;                             jmp   .Lx147_40
.Lx147_41:              lea              r9, [rsp + 2640]
.Lx147_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx147_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx147_43
                        cmp              esi, 1;                              jne   .Lx147_57
                        mov              r9, rax;                             jmp   .Lx147_42
.Lx147_57:              cmp              esi, 2;                              jne   .Lx147_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx147_43
                        mov              r9, rax;                             jmp   .Lx147_42
.Lx147_58:              cmp              al, 72;                              jne   .Lx147_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx147_43
                        cmp              rax, r9;                             je    .Lx147_43
                        mov              r9, rax;                             jmp   .Lx147_42
.Lx147_43:              cmp              r8, r9;                              je    .Lx147_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx147_44
                        cmp              al, 104;                             je    .Lx147_44
                        cmp              al, 72;                              jne   .Lx147_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx147_44
                                                                              jmp   .Lx147_45
.Lx147_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx147_53
                        cmp              al, 104;                             je    .Lx147_53
                        cmp              al, 72;                              jne   .Lx147_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx147_53
                                                                              jmp   .Lx147_46
.Lx147_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx147_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx147_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx147_51
.Lx147_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx147_47
                        cmp              al, 104;                             je    .Lx147_47
                        cmp              al, 72;                              jne   .Lx147_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx147_47
                                                                              jmp   .Lx147_48
.Lx147_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx147_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx147_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx147_51
.Lx147_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx147_49
                        cmp              dl, 80;                              je    .Lx147_53
                                                                              jmp   .Lx147_52
.Lx147_49:              cmp              dl, 80;                              je    .Lx147_52
                        cmp              cl, 5;                               je    .Lx147_53
                        cmp              dl, 5;                               je    .Lx147_53
                        cmp              cl, 3;                               jne   .Lx147_50
                        cmp              dl, 3;                               jne   .Lx147_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx147_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx147_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx147_51
                                                                              jmp   .Lx147_52
.Lx147_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx147_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx147_53
.Lx147_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx147_54
.Lx147_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx147_54
.Lx147_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx147_54:              mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n57_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_var_ref_α
n46_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   n57_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n49_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2568], rax
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2552], rax
                        lea              rdi, [rsp + 2544]
                        lea              r8, [rsp + 2544]
.Lx152_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx152_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx152_41
                        cmp              esi, 1;                              jne   .Lx152_55
                        mov              r8, rax;                             jmp   .Lx152_40
.Lx152_55:              cmp              esi, 2;                              jne   .Lx152_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx152_41
                        mov              r8, rax;                             jmp   .Lx152_40
.Lx152_56:              cmp              al, 72;                              jne   .Lx152_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx152_41
                        cmp              rax, r8;                             je    .Lx152_41
                        mov              r8, rax;                             jmp   .Lx152_40
.Lx152_41:              lea              r9, [rsp + 2560]
.Lx152_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx152_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx152_43
                        cmp              esi, 1;                              jne   .Lx152_57
                        mov              r9, rax;                             jmp   .Lx152_42
.Lx152_57:              cmp              esi, 2;                              jne   .Lx152_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx152_43
                        mov              r9, rax;                             jmp   .Lx152_42
.Lx152_58:              cmp              al, 72;                              jne   .Lx152_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx152_43
                        cmp              rax, r9;                             je    .Lx152_43
                        mov              r9, rax;                             jmp   .Lx152_42
.Lx152_43:              cmp              r8, r9;                              je    .Lx152_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx152_44
                        cmp              al, 104;                             je    .Lx152_44
                        cmp              al, 72;                              jne   .Lx152_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx152_44
                                                                              jmp   .Lx152_45
.Lx152_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx152_53
                        cmp              al, 104;                             je    .Lx152_53
                        cmp              al, 72;                              jne   .Lx152_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx152_53
                                                                              jmp   .Lx152_46
.Lx152_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx152_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx152_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx152_51
.Lx152_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx152_47
                        cmp              al, 104;                             je    .Lx152_47
                        cmp              al, 72;                              jne   .Lx152_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx152_47
                                                                              jmp   .Lx152_48
.Lx152_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx152_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx152_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx152_51
.Lx152_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx152_49
                        cmp              dl, 80;                              je    .Lx152_53
                                                                              jmp   .Lx152_52
.Lx152_49:              cmp              dl, 80;                              je    .Lx152_52
                        cmp              cl, 5;                               je    .Lx152_53
                        cmp              dl, 5;                               je    .Lx152_53
                        cmp              cl, 3;                               jne   .Lx152_50
                        cmp              dl, 3;                               jne   .Lx152_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx152_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx152_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx152_51
                                                                              jmp   .Lx152_52
.Lx152_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx152_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx152_53
.Lx152_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx152_54
.Lx152_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx152_54
.Lx152_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx152_54:              mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              al, 104;                             je    n57_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_var_ref_α
n49_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n57_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n51_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n52_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2472], rax
                        lea              rdi, [rsp + 2464]
                        lea              r8, [rsp + 2464]
.Lx157_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx157_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx157_41
                        cmp              esi, 1;                              jne   .Lx157_55
                        mov              r8, rax;                             jmp   .Lx157_40
.Lx157_55:              cmp              esi, 2;                              jne   .Lx157_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx157_41
                        mov              r8, rax;                             jmp   .Lx157_40
.Lx157_56:              cmp              al, 72;                              jne   .Lx157_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx157_41
                        cmp              rax, r8;                             je    .Lx157_41
                        mov              r8, rax;                             jmp   .Lx157_40
.Lx157_41:              lea              r9, [rsp + 2480]
.Lx157_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx157_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx157_43
                        cmp              esi, 1;                              jne   .Lx157_57
                        mov              r9, rax;                             jmp   .Lx157_42
.Lx157_57:              cmp              esi, 2;                              jne   .Lx157_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx157_43
                        mov              r9, rax;                             jmp   .Lx157_42
.Lx157_58:              cmp              al, 72;                              jne   .Lx157_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx157_43
                        cmp              rax, r9;                             je    .Lx157_43
                        mov              r9, rax;                             jmp   .Lx157_42
.Lx157_43:              cmp              r8, r9;                              je    .Lx157_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx157_44
                        cmp              al, 104;                             je    .Lx157_44
                        cmp              al, 72;                              jne   .Lx157_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx157_44
                                                                              jmp   .Lx157_45
.Lx157_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx157_53
                        cmp              al, 104;                             je    .Lx157_53
                        cmp              al, 72;                              jne   .Lx157_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx157_53
                                                                              jmp   .Lx157_46
.Lx157_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx157_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx157_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx157_51
.Lx157_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx157_47
                        cmp              al, 104;                             je    .Lx157_47
                        cmp              al, 72;                              jne   .Lx157_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx157_47
                                                                              jmp   .Lx157_48
.Lx157_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx157_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx157_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx157_51
.Lx157_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx157_49
                        cmp              dl, 80;                              je    .Lx157_53
                                                                              jmp   .Lx157_52
.Lx157_49:              cmp              dl, 80;                              je    .Lx157_52
                        cmp              cl, 5;                               je    .Lx157_53
                        cmp              dl, 5;                               je    .Lx157_53
                        cmp              cl, 3;                               jne   .Lx157_50
                        cmp              dl, 3;                               jne   .Lx157_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx157_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx157_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx157_51
                                                                              jmp   .Lx157_52
.Lx157_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx157_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx157_53
.Lx157_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx157_54
.Lx157_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx157_54
.Lx157_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx157_54:              mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              al, 104;                             je    n57_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_var_ref_α
n52_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n57_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n54_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2408], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2392], rax
                        lea              rdi, [rsp + 2384]
                        lea              r8, [rsp + 2384]
.Lx162_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx162_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx162_41
                        cmp              esi, 1;                              jne   .Lx162_55
                        mov              r8, rax;                             jmp   .Lx162_40
.Lx162_55:              cmp              esi, 2;                              jne   .Lx162_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx162_41
                        mov              r8, rax;                             jmp   .Lx162_40
.Lx162_56:              cmp              al, 72;                              jne   .Lx162_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx162_41
                        cmp              rax, r8;                             je    .Lx162_41
                        mov              r8, rax;                             jmp   .Lx162_40
.Lx162_41:              lea              r9, [rsp + 2400]
.Lx162_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx162_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx162_43
                        cmp              esi, 1;                              jne   .Lx162_57
                        mov              r9, rax;                             jmp   .Lx162_42
.Lx162_57:              cmp              esi, 2;                              jne   .Lx162_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx162_43
                        mov              r9, rax;                             jmp   .Lx162_42
.Lx162_58:              cmp              al, 72;                              jne   .Lx162_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx162_43
                        cmp              rax, r9;                             je    .Lx162_43
                        mov              r9, rax;                             jmp   .Lx162_42
.Lx162_43:              cmp              r8, r9;                              je    .Lx162_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx162_44
                        cmp              al, 104;                             je    .Lx162_44
                        cmp              al, 72;                              jne   .Lx162_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx162_44
                                                                              jmp   .Lx162_45
.Lx162_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx162_53
                        cmp              al, 104;                             je    .Lx162_53
                        cmp              al, 72;                              jne   .Lx162_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx162_53
                                                                              jmp   .Lx162_46
.Lx162_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx162_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx162_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx162_51
.Lx162_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx162_47
                        cmp              al, 104;                             je    .Lx162_47
                        cmp              al, 72;                              jne   .Lx162_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx162_47
                                                                              jmp   .Lx162_48
.Lx162_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx162_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx162_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx162_51
.Lx162_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx162_49
                        cmp              dl, 80;                              je    .Lx162_53
                                                                              jmp   .Lx162_52
.Lx162_49:              cmp              dl, 80;                              je    .Lx162_52
                        cmp              cl, 5;                               je    .Lx162_53
                        cmp              dl, 5;                               je    .Lx162_53
                        cmp              cl, 3;                               jne   .Lx162_50
                        cmp              dl, 3;                               jne   .Lx162_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx162_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx162_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx162_51
                                                                              jmp   .Lx162_52
.Lx162_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx162_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx162_53
.Lx162_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx162_54
.Lx162_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx162_54
.Lx162_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx162_54:              mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                        cmp              al, 104;                             je    n57_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_cut_α
n55_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   n57_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_cut_α:              mov              r11, 31;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2344], rax
                        lea              rdi, [rsp + 2336]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n58_var_ref_α
n57_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n59_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx;         jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_prolog_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2264], rax
                        lea              rdi, [rsp + 2256]
                        lea              r8, [rsp + 2256]
.Lx169_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx169_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx169_41
                        cmp              esi, 1;                              jne   .Lx169_55
                        mov              r8, rax;                             jmp   .Lx169_40
.Lx169_55:              cmp              esi, 2;                              jne   .Lx169_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx169_41
                        mov              r8, rax;                             jmp   .Lx169_40
.Lx169_56:              cmp              al, 72;                              jne   .Lx169_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx169_41
                        cmp              rax, r8;                             je    .Lx169_41
                        mov              r8, rax;                             jmp   .Lx169_40
.Lx169_41:              lea              r9, [rsp + 2272]
.Lx169_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx169_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx169_43
                        cmp              esi, 1;                              jne   .Lx169_57
                        mov              r9, rax;                             jmp   .Lx169_42
.Lx169_57:              cmp              esi, 2;                              jne   .Lx169_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx169_43
                        mov              r9, rax;                             jmp   .Lx169_42
.Lx169_58:              cmp              al, 72;                              jne   .Lx169_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx169_43
                        cmp              rax, r9;                             je    .Lx169_43
                        mov              r9, rax;                             jmp   .Lx169_42
.Lx169_43:              cmp              r8, r9;                              je    .Lx169_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx169_44
                        cmp              al, 104;                             je    .Lx169_44
                        cmp              al, 72;                              jne   .Lx169_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx169_44
                                                                              jmp   .Lx169_45
.Lx169_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx169_53
                        cmp              al, 104;                             je    .Lx169_53
                        cmp              al, 72;                              jne   .Lx169_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx169_53
                                                                              jmp   .Lx169_46
.Lx169_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx169_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx169_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx169_51
.Lx169_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx169_47
                        cmp              al, 104;                             je    .Lx169_47
                        cmp              al, 72;                              jne   .Lx169_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx169_47
                                                                              jmp   .Lx169_48
.Lx169_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx169_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx169_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx169_51
.Lx169_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx169_49
                        cmp              dl, 80;                              je    .Lx169_53
                                                                              jmp   .Lx169_52
.Lx169_49:              cmp              dl, 80;                              je    .Lx169_52
                        cmp              cl, 5;                               je    .Lx169_53
                        cmp              dl, 5;                               je    .Lx169_53
                        cmp              cl, 3;                               jne   .Lx169_50
                        cmp              dl, 3;                               jne   .Lx169_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx169_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx169_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx169_51
                                                                              jmp   .Lx169_52
.Lx169_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx169_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx169_53
.Lx169_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx169_54
.Lx169_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx169_54
.Lx169_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx169_54:              mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n61_var_ref_α
n60_call_builtin_prolog_β:
                        mov              r11, 35;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx;         jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n63_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2184], rax
                        lea              rdi, [rsp + 2176]
                        lea              r8, [rsp + 2176]
.Lx174_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx174_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx174_41
                        cmp              esi, 1;                              jne   .Lx174_55
                        mov              r8, rax;                             jmp   .Lx174_40
.Lx174_55:              cmp              esi, 2;                              jne   .Lx174_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx174_41
                        mov              r8, rax;                             jmp   .Lx174_40
.Lx174_56:              cmp              al, 72;                              jne   .Lx174_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx174_41
                        cmp              rax, r8;                             je    .Lx174_41
                        mov              r8, rax;                             jmp   .Lx174_40
.Lx174_41:              lea              r9, [rsp + 2192]
.Lx174_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx174_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx174_43
                        cmp              esi, 1;                              jne   .Lx174_57
                        mov              r9, rax;                             jmp   .Lx174_42
.Lx174_57:              cmp              esi, 2;                              jne   .Lx174_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx174_43
                        mov              r9, rax;                             jmp   .Lx174_42
.Lx174_58:              cmp              al, 72;                              jne   .Lx174_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx174_43
                        cmp              rax, r9;                             je    .Lx174_43
                        mov              r9, rax;                             jmp   .Lx174_42
.Lx174_43:              cmp              r8, r9;                              je    .Lx174_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx174_44
                        cmp              al, 104;                             je    .Lx174_44
                        cmp              al, 72;                              jne   .Lx174_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx174_44
                                                                              jmp   .Lx174_45
.Lx174_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx174_53
                        cmp              al, 104;                             je    .Lx174_53
                        cmp              al, 72;                              jne   .Lx174_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx174_53
                                                                              jmp   .Lx174_46
.Lx174_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx174_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx174_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx174_51
.Lx174_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx174_47
                        cmp              al, 104;                             je    .Lx174_47
                        cmp              al, 72;                              jne   .Lx174_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx174_47
                                                                              jmp   .Lx174_48
.Lx174_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx174_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx174_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx174_51
.Lx174_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx174_49
                        cmp              dl, 80;                              je    .Lx174_53
                                                                              jmp   .Lx174_52
.Lx174_49:              cmp              dl, 80;                              je    .Lx174_52
                        cmp              cl, 5;                               je    .Lx174_53
                        cmp              dl, 5;                               je    .Lx174_53
                        cmp              cl, 3;                               jne   .Lx174_50
                        cmp              dl, 3;                               jne   .Lx174_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx174_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx174_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx174_51
                                                                              jmp   .Lx174_52
.Lx174_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx174_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx174_53
.Lx174_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx174_54
.Lx174_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx174_54
.Lx174_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx174_54:              mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_var_ref_α
n63_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n65_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n66_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2120], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        lea              rdi, [rsp + 2096]
                        lea              r8, [rsp + 2096]
.Lx179_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx179_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx179_41
                        cmp              esi, 1;                              jne   .Lx179_55
                        mov              r8, rax;                             jmp   .Lx179_40
.Lx179_55:              cmp              esi, 2;                              jne   .Lx179_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx179_41
                        mov              r8, rax;                             jmp   .Lx179_40
.Lx179_56:              cmp              al, 72;                              jne   .Lx179_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx179_41
                        cmp              rax, r8;                             je    .Lx179_41
                        mov              r8, rax;                             jmp   .Lx179_40
.Lx179_41:              lea              r9, [rsp + 2112]
.Lx179_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx179_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx179_43
                        cmp              esi, 1;                              jne   .Lx179_57
                        mov              r9, rax;                             jmp   .Lx179_42
.Lx179_57:              cmp              esi, 2;                              jne   .Lx179_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx179_43
                        mov              r9, rax;                             jmp   .Lx179_42
.Lx179_58:              cmp              al, 72;                              jne   .Lx179_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx179_43
                        cmp              rax, r9;                             je    .Lx179_43
                        mov              r9, rax;                             jmp   .Lx179_42
.Lx179_43:              cmp              r8, r9;                              je    .Lx179_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx179_44
                        cmp              al, 104;                             je    .Lx179_44
                        cmp              al, 72;                              jne   .Lx179_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx179_44
                                                                              jmp   .Lx179_45
.Lx179_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx179_53
                        cmp              al, 104;                             je    .Lx179_53
                        cmp              al, 72;                              jne   .Lx179_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx179_53
                                                                              jmp   .Lx179_46
.Lx179_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx179_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx179_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx179_51
.Lx179_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx179_47
                        cmp              al, 104;                             je    .Lx179_47
                        cmp              al, 72;                              jne   .Lx179_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx179_47
                                                                              jmp   .Lx179_48
.Lx179_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx179_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx179_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx179_51
.Lx179_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx179_49
                        cmp              dl, 80;                              je    .Lx179_53
                                                                              jmp   .Lx179_52
.Lx179_49:              cmp              dl, 80;                              je    .Lx179_52
                        cmp              cl, 5;                               je    .Lx179_53
                        cmp              dl, 5;                               je    .Lx179_53
                        cmp              cl, 3;                               jne   .Lx179_50
                        cmp              dl, 3;                               jne   .Lx179_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx179_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx179_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx179_51
                                                                              jmp   .Lx179_52
.Lx179_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx179_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx179_53
.Lx179_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx179_54
.Lx179_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx179_54
.Lx179_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx179_54:              mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n67_var_ref_α
n66_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n68_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n69_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_prolog_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax
                        lea              rdi, [rsp + 2016]
                        lea              r8, [rsp + 2016]
.Lx184_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx184_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx184_41
                        cmp              esi, 1;                              jne   .Lx184_55
                        mov              r8, rax;                             jmp   .Lx184_40
.Lx184_55:              cmp              esi, 2;                              jne   .Lx184_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx184_41
                        mov              r8, rax;                             jmp   .Lx184_40
.Lx184_56:              cmp              al, 72;                              jne   .Lx184_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx184_41
                        cmp              rax, r8;                             je    .Lx184_41
                        mov              r8, rax;                             jmp   .Lx184_40
.Lx184_41:              lea              r9, [rsp + 2032]
.Lx184_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx184_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx184_43
                        cmp              esi, 1;                              jne   .Lx184_57
                        mov              r9, rax;                             jmp   .Lx184_42
.Lx184_57:              cmp              esi, 2;                              jne   .Lx184_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx184_43
                        mov              r9, rax;                             jmp   .Lx184_42
.Lx184_58:              cmp              al, 72;                              jne   .Lx184_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx184_43
                        cmp              rax, r9;                             je    .Lx184_43
                        mov              r9, rax;                             jmp   .Lx184_42
.Lx184_43:              cmp              r8, r9;                              je    .Lx184_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx184_44
                        cmp              al, 104;                             je    .Lx184_44
                        cmp              al, 72;                              jne   .Lx184_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx184_44
                                                                              jmp   .Lx184_45
.Lx184_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx184_53
                        cmp              al, 104;                             je    .Lx184_53
                        cmp              al, 72;                              jne   .Lx184_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx184_53
                                                                              jmp   .Lx184_46
.Lx184_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx184_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx184_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx184_51
.Lx184_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx184_47
                        cmp              al, 104;                             je    .Lx184_47
                        cmp              al, 72;                              jne   .Lx184_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx184_47
                                                                              jmp   .Lx184_48
.Lx184_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx184_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx184_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx184_51
.Lx184_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx184_49
                        cmp              dl, 80;                              je    .Lx184_53
                                                                              jmp   .Lx184_52
.Lx184_49:              cmp              dl, 80;                              je    .Lx184_52
                        cmp              cl, 5;                               je    .Lx184_53
                        cmp              dl, 5;                               je    .Lx184_53
                        cmp              cl, 3;                               jne   .Lx184_50
                        cmp              dl, 3;                               jne   .Lx184_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx184_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx184_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx184_51
                                                                              jmp   .Lx184_52
.Lx184_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx184_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx184_53
.Lx184_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx184_54
.Lx184_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx184_54
.Lx184_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx184_54:              mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n71_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_cut_α
n69_call_builtin_prolog_β:
                        mov              r11, 44;                             jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_cut_α:              mov              r11, 45;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1976], rax
                        lea              rdi, [rsp + 1968]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_var_ref_α
n71_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n73_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n74_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        lea              r8, [rsp + 1888]
.Lx191_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx191_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx191_41
                        cmp              esi, 1;                              jne   .Lx191_55
                        mov              r8, rax;                             jmp   .Lx191_40
.Lx191_55:              cmp              esi, 2;                              jne   .Lx191_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx191_41
                        mov              r8, rax;                             jmp   .Lx191_40
.Lx191_56:              cmp              al, 72;                              jne   .Lx191_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx191_41
                        cmp              rax, r8;                             je    .Lx191_41
                        mov              r8, rax;                             jmp   .Lx191_40
.Lx191_41:              lea              r9, [rsp + 1904]
.Lx191_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx191_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx191_43
                        cmp              esi, 1;                              jne   .Lx191_57
                        mov              r9, rax;                             jmp   .Lx191_42
.Lx191_57:              cmp              esi, 2;                              jne   .Lx191_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx191_43
                        mov              r9, rax;                             jmp   .Lx191_42
.Lx191_58:              cmp              al, 72;                              jne   .Lx191_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx191_43
                        cmp              rax, r9;                             je    .Lx191_43
                        mov              r9, rax;                             jmp   .Lx191_42
.Lx191_43:              cmp              r8, r9;                              je    .Lx191_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx191_44
                        cmp              al, 104;                             je    .Lx191_44
                        cmp              al, 72;                              jne   .Lx191_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx191_44
                                                                              jmp   .Lx191_45
.Lx191_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx191_53
                        cmp              al, 104;                             je    .Lx191_53
                        cmp              al, 72;                              jne   .Lx191_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx191_53
                                                                              jmp   .Lx191_46
.Lx191_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx191_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx191_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx191_51
.Lx191_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx191_47
                        cmp              al, 104;                             je    .Lx191_47
                        cmp              al, 72;                              jne   .Lx191_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx191_47
                                                                              jmp   .Lx191_48
.Lx191_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx191_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx191_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx191_51
.Lx191_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx191_49
                        cmp              dl, 80;                              je    .Lx191_53
                                                                              jmp   .Lx191_52
.Lx191_49:              cmp              dl, 80;                              je    .Lx191_52
                        cmp              cl, 5;                               je    .Lx191_53
                        cmp              dl, 5;                               je    .Lx191_53
                        cmp              cl, 3;                               jne   .Lx191_50
                        cmp              dl, 3;                               jne   .Lx191_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx191_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx191_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx191_51
                                                                              jmp   .Lx191_52
.Lx191_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx191_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx191_53
.Lx191_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx191_54
.Lx191_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx191_54
.Lx191_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx191_54:              mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n85_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n75_var_ref_α
n74_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   n85_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n77_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1816], rax
                        lea              rdi, [rsp + 1808]
                        lea              r8, [rsp + 1808]
.Lx196_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx196_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx196_41
                        cmp              esi, 1;                              jne   .Lx196_55
                        mov              r8, rax;                             jmp   .Lx196_40
.Lx196_55:              cmp              esi, 2;                              jne   .Lx196_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx196_41
                        mov              r8, rax;                             jmp   .Lx196_40
.Lx196_56:              cmp              al, 72;                              jne   .Lx196_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx196_41
                        cmp              rax, r8;                             je    .Lx196_41
                        mov              r8, rax;                             jmp   .Lx196_40
.Lx196_41:              lea              r9, [rsp + 1824]
.Lx196_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx196_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx196_43
                        cmp              esi, 1;                              jne   .Lx196_57
                        mov              r9, rax;                             jmp   .Lx196_42
.Lx196_57:              cmp              esi, 2;                              jne   .Lx196_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx196_43
                        mov              r9, rax;                             jmp   .Lx196_42
.Lx196_58:              cmp              al, 72;                              jne   .Lx196_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx196_43
                        cmp              rax, r9;                             je    .Lx196_43
                        mov              r9, rax;                             jmp   .Lx196_42
.Lx196_43:              cmp              r8, r9;                              je    .Lx196_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx196_44
                        cmp              al, 104;                             je    .Lx196_44
                        cmp              al, 72;                              jne   .Lx196_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx196_44
                                                                              jmp   .Lx196_45
.Lx196_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx196_53
                        cmp              al, 104;                             je    .Lx196_53
                        cmp              al, 72;                              jne   .Lx196_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx196_53
                                                                              jmp   .Lx196_46
.Lx196_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx196_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx196_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx196_51
.Lx196_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx196_47
                        cmp              al, 104;                             je    .Lx196_47
                        cmp              al, 72;                              jne   .Lx196_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx196_47
                                                                              jmp   .Lx196_48
.Lx196_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx196_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx196_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx196_51
.Lx196_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx196_49
                        cmp              dl, 80;                              je    .Lx196_53
                                                                              jmp   .Lx196_52
.Lx196_49:              cmp              dl, 80;                              je    .Lx196_52
                        cmp              cl, 5;                               je    .Lx196_53
                        cmp              dl, 5;                               je    .Lx196_53
                        cmp              cl, 3;                               jne   .Lx196_50
                        cmp              dl, 3;                               jne   .Lx196_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx196_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx196_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx196_51
                                                                              jmp   .Lx196_52
.Lx196_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx196_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx196_53
.Lx196_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx196_54
.Lx196_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx196_54
.Lx196_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx196_54:              mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              al, 104;                             je    n85_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_var_ref_α
n77_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n85_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n79_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n80_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              r11, 55
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1736], rax
                        lea              rdi, [rsp + 1728]
                        lea              r8, [rsp + 1728]
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
.Lx201_41:              lea              r9, [rsp + 1744]
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
.Lx201_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx201_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx201_53
                        add              rdi, rsi
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
.Lx201_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx201_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx201_53
                        add              rdi, rsi
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
.Lx201_54:              mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    n85_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n81_var_ref_α
n80_call_builtin_prolog_β:
                        mov              r11, 55;                             jmp   n85_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n82_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2800]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n83_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              r11, 58
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1656], rax
                        lea              rdi, [rsp + 1648]
                        lea              r8, [rsp + 1648]
.Lx206_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx206_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx206_41
                        cmp              esi, 1;                              jne   .Lx206_55
                        mov              r8, rax;                             jmp   .Lx206_40
.Lx206_55:              cmp              esi, 2;                              jne   .Lx206_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx206_41
                        mov              r8, rax;                             jmp   .Lx206_40
.Lx206_56:              cmp              al, 72;                              jne   .Lx206_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx206_41
                        cmp              rax, r8;                             je    .Lx206_41
                        mov              r8, rax;                             jmp   .Lx206_40
.Lx206_41:              lea              r9, [rsp + 1664]
.Lx206_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx206_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx206_43
                        cmp              esi, 1;                              jne   .Lx206_57
                        mov              r9, rax;                             jmp   .Lx206_42
.Lx206_57:              cmp              esi, 2;                              jne   .Lx206_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx206_43
                        mov              r9, rax;                             jmp   .Lx206_42
.Lx206_58:              cmp              al, 72;                              jne   .Lx206_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx206_43
                        cmp              rax, r9;                             je    .Lx206_43
                        mov              r9, rax;                             jmp   .Lx206_42
.Lx206_43:              cmp              r8, r9;                              je    .Lx206_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx206_44
                        cmp              al, 104;                             je    .Lx206_44
                        cmp              al, 72;                              jne   .Lx206_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx206_44
                                                                              jmp   .Lx206_45
.Lx206_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx206_53
                        cmp              al, 104;                             je    .Lx206_53
                        cmp              al, 72;                              jne   .Lx206_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx206_53
                                                                              jmp   .Lx206_46
.Lx206_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx206_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx206_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx206_51
.Lx206_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx206_47
                        cmp              al, 104;                             je    .Lx206_47
                        cmp              al, 72;                              jne   .Lx206_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx206_47
                                                                              jmp   .Lx206_48
.Lx206_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx206_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx206_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx206_51
.Lx206_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx206_49
                        cmp              dl, 80;                              je    .Lx206_53
                                                                              jmp   .Lx206_52
.Lx206_49:              cmp              dl, 80;                              je    .Lx206_52
                        cmp              cl, 5;                               je    .Lx206_53
                        cmp              dl, 5;                               je    .Lx206_53
                        cmp              cl, 3;                               jne   .Lx206_50
                        cmp              dl, 3;                               jne   .Lx206_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx206_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx206_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx206_51
                                                                              jmp   .Lx206_52
.Lx206_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx206_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx206_53
.Lx206_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx206_54
.Lx206_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx206_54
.Lx206_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx206_54:              mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n85_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n84_cut_α
n83_call_builtin_prolog_β:
                        mov              r11, 58;                             jmp   n85_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_cut_α:              mov              r11, 59;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
                        mov              r11, 60
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1608], rax
                        lea              rdi, [rsp + 1600]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_var_ref_α
n85_call_builtin_prolog_β:
                        mov              r11, 60;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n87_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        lea              rdi, [rsp + 1520]
                        lea              r8, [rsp + 1520]
.Lx213_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx213_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx213_41
                        cmp              esi, 1;                              jne   .Lx213_55
                        mov              r8, rax;                             jmp   .Lx213_40
.Lx213_55:              cmp              esi, 2;                              jne   .Lx213_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx213_41
                        mov              r8, rax;                             jmp   .Lx213_40
.Lx213_56:              cmp              al, 72;                              jne   .Lx213_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx213_41
                        cmp              rax, r8;                             je    .Lx213_41
                        mov              r8, rax;                             jmp   .Lx213_40
.Lx213_41:              lea              r9, [rsp + 1536]
.Lx213_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx213_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx213_43
                        cmp              esi, 1;                              jne   .Lx213_57
                        mov              r9, rax;                             jmp   .Lx213_42
.Lx213_57:              cmp              esi, 2;                              jne   .Lx213_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx213_43
                        mov              r9, rax;                             jmp   .Lx213_42
.Lx213_58:              cmp              al, 72;                              jne   .Lx213_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx213_43
                        cmp              rax, r9;                             je    .Lx213_43
                        mov              r9, rax;                             jmp   .Lx213_42
.Lx213_43:              cmp              r8, r9;                              je    .Lx213_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx213_44
                        cmp              al, 104;                             je    .Lx213_44
                        cmp              al, 72;                              jne   .Lx213_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx213_44
                                                                              jmp   .Lx213_45
.Lx213_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx213_53
                        cmp              al, 104;                             je    .Lx213_53
                        cmp              al, 72;                              jne   .Lx213_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx213_53
                                                                              jmp   .Lx213_46
.Lx213_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx213_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx213_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx213_51
.Lx213_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx213_47
                        cmp              al, 104;                             je    .Lx213_47
                        cmp              al, 72;                              jne   .Lx213_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx213_47
                                                                              jmp   .Lx213_48
.Lx213_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx213_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx213_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx213_51
.Lx213_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx213_49
                        cmp              dl, 80;                              je    .Lx213_53
                                                                              jmp   .Lx213_52
.Lx213_49:              cmp              dl, 80;                              je    .Lx213_52
                        cmp              cl, 5;                               je    .Lx213_53
                        cmp              dl, 5;                               je    .Lx213_53
                        cmp              cl, 3;                               jne   .Lx213_50
                        cmp              dl, 3;                               jne   .Lx213_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx213_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx213_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx213_51
                                                                              jmp   .Lx213_52
.Lx213_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx213_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx213_53
.Lx213_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx213_54
.Lx213_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx213_54
.Lx213_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx213_54:              mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n99_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n89_var_ref_α
n88_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   n99_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n90_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2784]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
                        mov              r11, 66
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        lea              r8, [rsp + 1440]
.Lx218_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx218_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx218_41
                        cmp              esi, 1;                              jne   .Lx218_55
                        mov              r8, rax;                             jmp   .Lx218_40
.Lx218_55:              cmp              esi, 2;                              jne   .Lx218_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx218_41
                        mov              r8, rax;                             jmp   .Lx218_40
.Lx218_56:              cmp              al, 72;                              jne   .Lx218_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx218_41
                        cmp              rax, r8;                             je    .Lx218_41
                        mov              r8, rax;                             jmp   .Lx218_40
.Lx218_41:              lea              r9, [rsp + 1456]
.Lx218_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx218_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx218_43
                        cmp              esi, 1;                              jne   .Lx218_57
                        mov              r9, rax;                             jmp   .Lx218_42
.Lx218_57:              cmp              esi, 2;                              jne   .Lx218_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx218_43
                        mov              r9, rax;                             jmp   .Lx218_42
.Lx218_58:              cmp              al, 72;                              jne   .Lx218_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx218_43
                        cmp              rax, r9;                             je    .Lx218_43
                        mov              r9, rax;                             jmp   .Lx218_42
.Lx218_43:              cmp              r8, r9;                              je    .Lx218_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx218_44
                        cmp              al, 104;                             je    .Lx218_44
                        cmp              al, 72;                              jne   .Lx218_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx218_44
                                                                              jmp   .Lx218_45
.Lx218_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx218_53
                        cmp              al, 104;                             je    .Lx218_53
                        cmp              al, 72;                              jne   .Lx218_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx218_53
                                                                              jmp   .Lx218_46
.Lx218_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx218_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx218_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx218_51
.Lx218_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx218_47
                        cmp              al, 104;                             je    .Lx218_47
                        cmp              al, 72;                              jne   .Lx218_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx218_47
                                                                              jmp   .Lx218_48
.Lx218_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx218_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx218_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx218_51
.Lx218_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx218_49
                        cmp              dl, 80;                              je    .Lx218_53
                                                                              jmp   .Lx218_52
.Lx218_49:              cmp              dl, 80;                              je    .Lx218_52
                        cmp              cl, 5;                               je    .Lx218_53
                        cmp              dl, 5;                               je    .Lx218_53
                        cmp              cl, 3;                               jne   .Lx218_50
                        cmp              dl, 3;                               jne   .Lx218_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx218_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx218_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx218_51
                                                                              jmp   .Lx218_52
.Lx218_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx218_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx218_53
.Lx218_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx218_54
.Lx218_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx218_54
.Lx218_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx218_54:              mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n99_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n92_var_ref_α
n91_call_builtin_prolog_β:
                        mov              r11, 66;                             jmp   n99_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n93_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2784]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n94_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
                        mov              r11, 69
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        lea              rdi, [rsp + 1360]
                        lea              r8, [rsp + 1360]
.Lx223_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx223_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx223_41
                        cmp              esi, 1;                              jne   .Lx223_55
                        mov              r8, rax;                             jmp   .Lx223_40
.Lx223_55:              cmp              esi, 2;                              jne   .Lx223_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx223_41
                        mov              r8, rax;                             jmp   .Lx223_40
.Lx223_56:              cmp              al, 72;                              jne   .Lx223_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx223_41
                        cmp              rax, r8;                             je    .Lx223_41
                        mov              r8, rax;                             jmp   .Lx223_40
.Lx223_41:              lea              r9, [rsp + 1376]
.Lx223_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx223_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx223_43
                        cmp              esi, 1;                              jne   .Lx223_57
                        mov              r9, rax;                             jmp   .Lx223_42
.Lx223_57:              cmp              esi, 2;                              jne   .Lx223_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx223_43
                        mov              r9, rax;                             jmp   .Lx223_42
.Lx223_58:              cmp              al, 72;                              jne   .Lx223_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx223_43
                        cmp              rax, r9;                             je    .Lx223_43
                        mov              r9, rax;                             jmp   .Lx223_42
.Lx223_43:              cmp              r8, r9;                              je    .Lx223_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx223_44
                        cmp              al, 104;                             je    .Lx223_44
                        cmp              al, 72;                              jne   .Lx223_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx223_44
                                                                              jmp   .Lx223_45
.Lx223_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx223_53
                        cmp              al, 104;                             je    .Lx223_53
                        cmp              al, 72;                              jne   .Lx223_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx223_53
                                                                              jmp   .Lx223_46
.Lx223_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx223_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx223_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx223_51
.Lx223_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx223_47
                        cmp              al, 104;                             je    .Lx223_47
                        cmp              al, 72;                              jne   .Lx223_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx223_47
                                                                              jmp   .Lx223_48
.Lx223_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx223_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx223_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx223_51
.Lx223_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx223_49
                        cmp              dl, 80;                              je    .Lx223_53
                                                                              jmp   .Lx223_52
.Lx223_49:              cmp              dl, 80;                              je    .Lx223_52
                        cmp              cl, 5;                               je    .Lx223_53
                        cmp              dl, 5;                               je    .Lx223_53
                        cmp              cl, 3;                               jne   .Lx223_50
                        cmp              dl, 3;                               jne   .Lx223_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx223_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx223_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx223_51
                                                                              jmp   .Lx223_52
.Lx223_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx223_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx223_53
.Lx223_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx223_54
.Lx223_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx223_54
.Lx223_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx223_54:              mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n99_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_var_ref_α
n94_call_builtin_prolog_β:
                        mov              r11, 69;                             jmp   n99_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              r11, 72
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax
                        lea              rdi, [rsp + 1280]
                        lea              r8, [rsp + 1280]
.Lx228_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx228_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx228_41
                        cmp              esi, 1;                              jne   .Lx228_55
                        mov              r8, rax;                             jmp   .Lx228_40
.Lx228_55:              cmp              esi, 2;                              jne   .Lx228_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx228_41
                        mov              r8, rax;                             jmp   .Lx228_40
.Lx228_56:              cmp              al, 72;                              jne   .Lx228_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx228_41
                        cmp              rax, r8;                             je    .Lx228_41
                        mov              r8, rax;                             jmp   .Lx228_40
.Lx228_41:              lea              r9, [rsp + 1296]
.Lx228_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx228_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx228_43
                        cmp              esi, 1;                              jne   .Lx228_57
                        mov              r9, rax;                             jmp   .Lx228_42
.Lx228_57:              cmp              esi, 2;                              jne   .Lx228_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx228_43
                        mov              r9, rax;                             jmp   .Lx228_42
.Lx228_58:              cmp              al, 72;                              jne   .Lx228_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx228_43
                        cmp              rax, r9;                             je    .Lx228_43
                        mov              r9, rax;                             jmp   .Lx228_42
.Lx228_43:              cmp              r8, r9;                              je    .Lx228_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx228_44
                        cmp              al, 104;                             je    .Lx228_44
                        cmp              al, 72;                              jne   .Lx228_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx228_44
                                                                              jmp   .Lx228_45
.Lx228_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx228_53
                        cmp              al, 104;                             je    .Lx228_53
                        cmp              al, 72;                              jne   .Lx228_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx228_53
                                                                              jmp   .Lx228_46
.Lx228_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx228_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx228_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx228_51
.Lx228_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx228_47
                        cmp              al, 104;                             je    .Lx228_47
                        cmp              al, 72;                              jne   .Lx228_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx228_47
                                                                              jmp   .Lx228_48
.Lx228_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx228_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx228_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx228_51
.Lx228_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx228_49
                        cmp              dl, 80;                              je    .Lx228_53
                                                                              jmp   .Lx228_52
.Lx228_49:              cmp              dl, 80;                              je    .Lx228_52
                        cmp              cl, 5;                               je    .Lx228_53
                        cmp              dl, 5;                               je    .Lx228_53
                        cmp              cl, 3;                               jne   .Lx228_50
                        cmp              dl, 3;                               jne   .Lx228_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx228_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx228_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx228_51
                                                                              jmp   .Lx228_52
.Lx228_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx228_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx228_53
.Lx228_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx228_54
.Lx228_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx228_54
.Lx228_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx228_54:              mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n99_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_cut_α
n97_call_builtin_prolog_β:
                        mov              r11, 72;                             jmp   n99_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_cut_α:              mov              r11, 73;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              r11, 74
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_var_ref_α
n99_call_builtin_prolog_β:
                        mov              r11, 74;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n101_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n102_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
                        mov              r11, 77
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        lea              r8, [rsp + 1152]
.Lx235_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx235_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx235_41
                        cmp              esi, 1;                              jne   .Lx235_55
                        mov              r8, rax;                             jmp   .Lx235_40
.Lx235_55:              cmp              esi, 2;                              jne   .Lx235_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx235_41
                        mov              r8, rax;                             jmp   .Lx235_40
.Lx235_56:              cmp              al, 72;                              jne   .Lx235_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx235_41
                        cmp              rax, r8;                             je    .Lx235_41
                        mov              r8, rax;                             jmp   .Lx235_40
.Lx235_41:              lea              r9, [rsp + 1168]
.Lx235_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx235_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx235_43
                        cmp              esi, 1;                              jne   .Lx235_57
                        mov              r9, rax;                             jmp   .Lx235_42
.Lx235_57:              cmp              esi, 2;                              jne   .Lx235_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx235_43
                        mov              r9, rax;                             jmp   .Lx235_42
.Lx235_58:              cmp              al, 72;                              jne   .Lx235_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx235_43
                        cmp              rax, r9;                             je    .Lx235_43
                        mov              r9, rax;                             jmp   .Lx235_42
.Lx235_43:              cmp              r8, r9;                              je    .Lx235_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx235_44
                        cmp              al, 104;                             je    .Lx235_44
                        cmp              al, 72;                              jne   .Lx235_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx235_44
                                                                              jmp   .Lx235_45
.Lx235_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx235_53
                        cmp              al, 104;                             je    .Lx235_53
                        cmp              al, 72;                              jne   .Lx235_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx235_53
                                                                              jmp   .Lx235_46
.Lx235_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx235_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx235_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx235_51
.Lx235_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx235_47
                        cmp              al, 104;                             je    .Lx235_47
                        cmp              al, 72;                              jne   .Lx235_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx235_47
                                                                              jmp   .Lx235_48
.Lx235_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx235_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx235_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx235_51
.Lx235_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx235_49
                        cmp              dl, 80;                              je    .Lx235_53
                                                                              jmp   .Lx235_52
.Lx235_49:              cmp              dl, 80;                              je    .Lx235_52
                        cmp              cl, 5;                               je    .Lx235_53
                        cmp              dl, 5;                               je    .Lx235_53
                        cmp              cl, 3;                               jne   .Lx235_50
                        cmp              dl, 3;                               jne   .Lx235_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx235_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx235_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx235_51
                                                                              jmp   .Lx235_52
.Lx235_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx235_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx235_53
.Lx235_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx235_54
.Lx235_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx235_54
.Lx235_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx235_54:              mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n113_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_var_ref_α
n102_call_builtin_prolog_β:
                        mov              r11, 77;                             jmp   n113_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n104_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2784]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n105_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              r11, 80
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        lea              r8, [rsp + 1072]
.Lx240_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx240_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx240_41
                        cmp              esi, 1;                              jne   .Lx240_55
                        mov              r8, rax;                             jmp   .Lx240_40
.Lx240_55:              cmp              esi, 2;                              jne   .Lx240_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx240_41
                        mov              r8, rax;                             jmp   .Lx240_40
.Lx240_56:              cmp              al, 72;                              jne   .Lx240_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx240_41
                        cmp              rax, r8;                             je    .Lx240_41
                        mov              r8, rax;                             jmp   .Lx240_40
.Lx240_41:              lea              r9, [rsp + 1088]
.Lx240_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx240_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx240_43
                        cmp              esi, 1;                              jne   .Lx240_57
                        mov              r9, rax;                             jmp   .Lx240_42
.Lx240_57:              cmp              esi, 2;                              jne   .Lx240_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx240_43
                        mov              r9, rax;                             jmp   .Lx240_42
.Lx240_58:              cmp              al, 72;                              jne   .Lx240_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx240_43
                        cmp              rax, r9;                             je    .Lx240_43
                        mov              r9, rax;                             jmp   .Lx240_42
.Lx240_43:              cmp              r8, r9;                              je    .Lx240_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx240_44
                        cmp              al, 104;                             je    .Lx240_44
                        cmp              al, 72;                              jne   .Lx240_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx240_44
                                                                              jmp   .Lx240_45
.Lx240_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx240_53
                        cmp              al, 104;                             je    .Lx240_53
                        cmp              al, 72;                              jne   .Lx240_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx240_53
                                                                              jmp   .Lx240_46
.Lx240_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx240_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx240_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx240_51
.Lx240_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx240_47
                        cmp              al, 104;                             je    .Lx240_47
                        cmp              al, 72;                              jne   .Lx240_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx240_47
                                                                              jmp   .Lx240_48
.Lx240_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx240_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx240_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx240_51
.Lx240_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx240_49
                        cmp              dl, 80;                              je    .Lx240_53
                                                                              jmp   .Lx240_52
.Lx240_49:              cmp              dl, 80;                              je    .Lx240_52
                        cmp              cl, 5;                               je    .Lx240_53
                        cmp              dl, 5;                               je    .Lx240_53
                        cmp              cl, 3;                               jne   .Lx240_50
                        cmp              dl, 3;                               jne   .Lx240_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx240_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx240_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx240_51
                                                                              jmp   .Lx240_52
.Lx240_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx240_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx240_53
.Lx240_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx240_54
.Lx240_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx240_54
.Lx240_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx240_54:              mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n113_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n106_var_ref_α
n105_call_builtin_prolog_β:
                        mov              r11, 80;                             jmp   n113_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n107_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n108_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_prolog_α:
                        mov              r11, 83
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        lea              r8, [rsp + 992]
.Lx245_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx245_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx245_41
                        cmp              esi, 1;                              jne   .Lx245_55
                        mov              r8, rax;                             jmp   .Lx245_40
.Lx245_55:              cmp              esi, 2;                              jne   .Lx245_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx245_41
                        mov              r8, rax;                             jmp   .Lx245_40
.Lx245_56:              cmp              al, 72;                              jne   .Lx245_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx245_41
                        cmp              rax, r8;                             je    .Lx245_41
                        mov              r8, rax;                             jmp   .Lx245_40
.Lx245_41:              lea              r9, [rsp + 1008]
.Lx245_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx245_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx245_43
                        cmp              esi, 1;                              jne   .Lx245_57
                        mov              r9, rax;                             jmp   .Lx245_42
.Lx245_57:              cmp              esi, 2;                              jne   .Lx245_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx245_43
                        mov              r9, rax;                             jmp   .Lx245_42
.Lx245_58:              cmp              al, 72;                              jne   .Lx245_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx245_43
                        cmp              rax, r9;                             je    .Lx245_43
                        mov              r9, rax;                             jmp   .Lx245_42
.Lx245_43:              cmp              r8, r9;                              je    .Lx245_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx245_44
                        cmp              al, 104;                             je    .Lx245_44
                        cmp              al, 72;                              jne   .Lx245_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx245_44
                                                                              jmp   .Lx245_45
.Lx245_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx245_53
                        cmp              al, 104;                             je    .Lx245_53
                        cmp              al, 72;                              jne   .Lx245_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx245_53
                                                                              jmp   .Lx245_46
.Lx245_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx245_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx245_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx245_51
.Lx245_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx245_47
                        cmp              al, 104;                             je    .Lx245_47
                        cmp              al, 72;                              jne   .Lx245_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx245_47
                                                                              jmp   .Lx245_48
.Lx245_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx245_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx245_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx245_51
.Lx245_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx245_49
                        cmp              dl, 80;                              je    .Lx245_53
                                                                              jmp   .Lx245_52
.Lx245_49:              cmp              dl, 80;                              je    .Lx245_52
                        cmp              cl, 5;                               je    .Lx245_53
                        cmp              dl, 5;                               je    .Lx245_53
                        cmp              cl, 3;                               jne   .Lx245_50
                        cmp              dl, 3;                               jne   .Lx245_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx245_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx245_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx245_51
                                                                              jmp   .Lx245_52
.Lx245_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx245_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx245_53
.Lx245_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx245_54
.Lx245_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx245_54
.Lx245_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx245_54:              mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n113_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_var_ref_α
n108_call_builtin_prolog_β:
                        mov              r11, 83;                             jmp   n113_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n110_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2784]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        lea              r8, [rsp + 912]
.Lx250_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx250_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx250_41
                        cmp              esi, 1;                              jne   .Lx250_55
                        mov              r8, rax;                             jmp   .Lx250_40
.Lx250_55:              cmp              esi, 2;                              jne   .Lx250_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx250_41
                        mov              r8, rax;                             jmp   .Lx250_40
.Lx250_56:              cmp              al, 72;                              jne   .Lx250_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx250_41
                        cmp              rax, r8;                             je    .Lx250_41
                        mov              r8, rax;                             jmp   .Lx250_40
.Lx250_41:              lea              r9, [rsp + 928]
.Lx250_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx250_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx250_43
                        cmp              esi, 1;                              jne   .Lx250_57
                        mov              r9, rax;                             jmp   .Lx250_42
.Lx250_57:              cmp              esi, 2;                              jne   .Lx250_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx250_43
                        mov              r9, rax;                             jmp   .Lx250_42
.Lx250_58:              cmp              al, 72;                              jne   .Lx250_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx250_43
                        cmp              rax, r9;                             je    .Lx250_43
                        mov              r9, rax;                             jmp   .Lx250_42
.Lx250_43:              cmp              r8, r9;                              je    .Lx250_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx250_44
                        cmp              al, 104;                             je    .Lx250_44
                        cmp              al, 72;                              jne   .Lx250_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx250_44
                                                                              jmp   .Lx250_45
.Lx250_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx250_53
                        cmp              al, 104;                             je    .Lx250_53
                        cmp              al, 72;                              jne   .Lx250_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx250_53
                                                                              jmp   .Lx250_46
.Lx250_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx250_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx250_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx250_51
.Lx250_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx250_47
                        cmp              al, 104;                             je    .Lx250_47
                        cmp              al, 72;                              jne   .Lx250_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx250_47
                                                                              jmp   .Lx250_48
.Lx250_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx250_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx250_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx250_51
.Lx250_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx250_49
                        cmp              dl, 80;                              je    .Lx250_53
                                                                              jmp   .Lx250_52
.Lx250_49:              cmp              dl, 80;                              je    .Lx250_52
                        cmp              cl, 5;                               je    .Lx250_53
                        cmp              dl, 5;                               je    .Lx250_53
                        cmp              cl, 3;                               jne   .Lx250_50
                        cmp              dl, 3;                               jne   .Lx250_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx250_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx250_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx250_51
                                                                              jmp   .Lx250_52
.Lx250_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx250_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx250_53
.Lx250_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx250_54
.Lx250_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx250_54
.Lx250_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx250_54:              mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n113_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_cut_α
n111_call_builtin_prolog_β:
                        mov              r11, 86;                             jmp   n113_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_cut_α:             mov              r11, 87;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_prolog_α:
                        mov              r11, 88
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 872], rax
                        lea              rdi, [rsp + 864]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n114_var_ref_α
n113_call_builtin_prolog_β:
                        mov              r11, 88;                             jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n115_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n116_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              r11, 91
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        lea              r8, [rsp + 784]
.Lx257_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx257_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx257_41
                        cmp              esi, 1;                              jne   .Lx257_55
                        mov              r8, rax;                             jmp   .Lx257_40
.Lx257_55:              cmp              esi, 2;                              jne   .Lx257_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx257_41
                        mov              r8, rax;                             jmp   .Lx257_40
.Lx257_56:              cmp              al, 72;                              jne   .Lx257_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx257_41
                        cmp              rax, r8;                             je    .Lx257_41
                        mov              r8, rax;                             jmp   .Lx257_40
.Lx257_41:              lea              r9, [rsp + 800]
.Lx257_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx257_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx257_43
                        cmp              esi, 1;                              jne   .Lx257_57
                        mov              r9, rax;                             jmp   .Lx257_42
.Lx257_57:              cmp              esi, 2;                              jne   .Lx257_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx257_43
                        mov              r9, rax;                             jmp   .Lx257_42
.Lx257_58:              cmp              al, 72;                              jne   .Lx257_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx257_43
                        cmp              rax, r9;                             je    .Lx257_43
                        mov              r9, rax;                             jmp   .Lx257_42
.Lx257_43:              cmp              r8, r9;                              je    .Lx257_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx257_44
                        cmp              al, 104;                             je    .Lx257_44
                        cmp              al, 72;                              jne   .Lx257_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx257_44
                                                                              jmp   .Lx257_45
.Lx257_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx257_53
                        cmp              al, 104;                             je    .Lx257_53
                        cmp              al, 72;                              jne   .Lx257_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx257_53
                                                                              jmp   .Lx257_46
.Lx257_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx257_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx257_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx257_51
.Lx257_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx257_47
                        cmp              al, 104;                             je    .Lx257_47
                        cmp              al, 72;                              jne   .Lx257_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx257_47
                                                                              jmp   .Lx257_48
.Lx257_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx257_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx257_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx257_51
.Lx257_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx257_49
                        cmp              dl, 80;                              je    .Lx257_53
                                                                              jmp   .Lx257_52
.Lx257_49:              cmp              dl, 80;                              je    .Lx257_52
                        cmp              cl, 5;                               je    .Lx257_53
                        cmp              dl, 5;                               je    .Lx257_53
                        cmp              cl, 3;                               jne   .Lx257_50
                        cmp              dl, 3;                               jne   .Lx257_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx257_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx257_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx257_51
                                                                              jmp   .Lx257_52
.Lx257_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx257_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx257_53
.Lx257_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx257_54
.Lx257_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx257_54
.Lx257_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx257_54:              mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n127_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n117_var_ref_α
n116_call_builtin_prolog_β:
                        mov              r11, 91;                             jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n118_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              r11, 94
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
.Lx262_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx262_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx262_41
                        cmp              esi, 1;                              jne   .Lx262_55
                        mov              r8, rax;                             jmp   .Lx262_40
.Lx262_55:              cmp              esi, 2;                              jne   .Lx262_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx262_41
                        mov              r8, rax;                             jmp   .Lx262_40
.Lx262_56:              cmp              al, 72;                              jne   .Lx262_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx262_41
                        cmp              rax, r8;                             je    .Lx262_41
                        mov              r8, rax;                             jmp   .Lx262_40
.Lx262_41:              lea              r9, [rsp + 720]
.Lx262_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx262_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx262_43
                        cmp              esi, 1;                              jne   .Lx262_57
                        mov              r9, rax;                             jmp   .Lx262_42
.Lx262_57:              cmp              esi, 2;                              jne   .Lx262_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx262_43
                        mov              r9, rax;                             jmp   .Lx262_42
.Lx262_58:              cmp              al, 72;                              jne   .Lx262_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx262_43
                        cmp              rax, r9;                             je    .Lx262_43
                        mov              r9, rax;                             jmp   .Lx262_42
.Lx262_43:              cmp              r8, r9;                              je    .Lx262_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx262_44
                        cmp              al, 104;                             je    .Lx262_44
                        cmp              al, 72;                              jne   .Lx262_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx262_44
                                                                              jmp   .Lx262_45
.Lx262_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx262_53
                        cmp              al, 104;                             je    .Lx262_53
                        cmp              al, 72;                              jne   .Lx262_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx262_53
                                                                              jmp   .Lx262_46
.Lx262_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx262_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx262_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx262_51
.Lx262_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx262_47
                        cmp              al, 104;                             je    .Lx262_47
                        cmp              al, 72;                              jne   .Lx262_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx262_47
                                                                              jmp   .Lx262_48
.Lx262_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx262_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx262_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx262_51
.Lx262_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx262_49
                        cmp              dl, 80;                              je    .Lx262_53
                                                                              jmp   .Lx262_52
.Lx262_49:              cmp              dl, 80;                              je    .Lx262_52
                        cmp              cl, 5;                               je    .Lx262_53
                        cmp              dl, 5;                               je    .Lx262_53
                        cmp              cl, 3;                               jne   .Lx262_50
                        cmp              dl, 3;                               jne   .Lx262_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx262_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx262_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx262_51
                                                                              jmp   .Lx262_52
.Lx262_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx262_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx262_53
.Lx262_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx262_54
.Lx262_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx262_54
.Lx262_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx262_54:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n127_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_var_ref_α
n119_call_builtin_prolog_β:
                        mov              r11, 94;                             jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n121_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2768]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n122_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
                        mov              r11, 97
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        lea              r8, [rsp + 624]
.Lx267_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx267_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx267_41
                        cmp              esi, 1;                              jne   .Lx267_55
                        mov              r8, rax;                             jmp   .Lx267_40
.Lx267_55:              cmp              esi, 2;                              jne   .Lx267_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx267_41
                        mov              r8, rax;                             jmp   .Lx267_40
.Lx267_56:              cmp              al, 72;                              jne   .Lx267_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx267_41
                        cmp              rax, r8;                             je    .Lx267_41
                        mov              r8, rax;                             jmp   .Lx267_40
.Lx267_41:              lea              r9, [rsp + 640]
.Lx267_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx267_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx267_43
                        cmp              esi, 1;                              jne   .Lx267_57
                        mov              r9, rax;                             jmp   .Lx267_42
.Lx267_57:              cmp              esi, 2;                              jne   .Lx267_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx267_43
                        mov              r9, rax;                             jmp   .Lx267_42
.Lx267_58:              cmp              al, 72;                              jne   .Lx267_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx267_43
                        cmp              rax, r9;                             je    .Lx267_43
                        mov              r9, rax;                             jmp   .Lx267_42
.Lx267_43:              cmp              r8, r9;                              je    .Lx267_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx267_44
                        cmp              al, 104;                             je    .Lx267_44
                        cmp              al, 72;                              jne   .Lx267_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx267_44
                                                                              jmp   .Lx267_45
.Lx267_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx267_53
                        cmp              al, 104;                             je    .Lx267_53
                        cmp              al, 72;                              jne   .Lx267_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx267_53
                                                                              jmp   .Lx267_46
.Lx267_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx267_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx267_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx267_51
.Lx267_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx267_47
                        cmp              al, 104;                             je    .Lx267_47
                        cmp              al, 72;                              jne   .Lx267_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx267_47
                                                                              jmp   .Lx267_48
.Lx267_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx267_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx267_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx267_51
.Lx267_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx267_49
                        cmp              dl, 80;                              je    .Lx267_53
                                                                              jmp   .Lx267_52
.Lx267_49:              cmp              dl, 80;                              je    .Lx267_52
                        cmp              cl, 5;                               je    .Lx267_53
                        cmp              dl, 5;                               je    .Lx267_53
                        cmp              cl, 3;                               jne   .Lx267_50
                        cmp              dl, 3;                               jne   .Lx267_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx267_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx267_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx267_51
                                                                              jmp   .Lx267_52
.Lx267_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx267_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx267_53
.Lx267_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx267_54
.Lx267_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx267_54
.Lx267_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx267_54:              mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n127_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n123_var_ref_α
n122_call_builtin_prolog_β:
                        mov              r11, 97;                             jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n124_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2768]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n125_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_prolog_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        lea              r8, [rsp + 544]
.Lx272_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx272_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx272_41
                        cmp              esi, 1;                              jne   .Lx272_55
                        mov              r8, rax;                             jmp   .Lx272_40
.Lx272_55:              cmp              esi, 2;                              jne   .Lx272_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx272_41
                        mov              r8, rax;                             jmp   .Lx272_40
.Lx272_56:              cmp              al, 72;                              jne   .Lx272_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx272_41
                        cmp              rax, r8;                             je    .Lx272_41
                        mov              r8, rax;                             jmp   .Lx272_40
.Lx272_41:              lea              r9, [rsp + 560]
.Lx272_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx272_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx272_43
                        cmp              esi, 1;                              jne   .Lx272_57
                        mov              r9, rax;                             jmp   .Lx272_42
.Lx272_57:              cmp              esi, 2;                              jne   .Lx272_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx272_43
                        mov              r9, rax;                             jmp   .Lx272_42
.Lx272_58:              cmp              al, 72;                              jne   .Lx272_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx272_43
                        cmp              rax, r9;                             je    .Lx272_43
                        mov              r9, rax;                             jmp   .Lx272_42
.Lx272_43:              cmp              r8, r9;                              je    .Lx272_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx272_44
                        cmp              al, 104;                             je    .Lx272_44
                        cmp              al, 72;                              jne   .Lx272_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx272_44
                                                                              jmp   .Lx272_45
.Lx272_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx272_53
                        cmp              al, 104;                             je    .Lx272_53
                        cmp              al, 72;                              jne   .Lx272_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx272_53
                                                                              jmp   .Lx272_46
.Lx272_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx272_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx272_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx272_51
.Lx272_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx272_47
                        cmp              al, 104;                             je    .Lx272_47
                        cmp              al, 72;                              jne   .Lx272_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx272_47
                                                                              jmp   .Lx272_48
.Lx272_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx272_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx272_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx272_51
.Lx272_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx272_49
                        cmp              dl, 80;                              je    .Lx272_53
                                                                              jmp   .Lx272_52
.Lx272_49:              cmp              dl, 80;                              je    .Lx272_52
                        cmp              cl, 5;                               je    .Lx272_53
                        cmp              dl, 5;                               je    .Lx272_53
                        cmp              cl, 3;                               jne   .Lx272_50
                        cmp              dl, 3;                               jne   .Lx272_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx272_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx272_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx272_51
                                                                              jmp   .Lx272_52
.Lx272_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx272_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx272_53
.Lx272_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx272_54
.Lx272_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx272_54
.Lx272_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx272_54:              mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n127_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_cut_α
n125_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n126_cut_α:             mov              r11, 101;                            jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
                        mov              r11, 102
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
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n128_var_ref_α
n127_call_builtin_prolog_β:
                        mov              r11, 102;                            jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2752]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n130_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              r11, 105
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
.Lx279_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx279_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx279_41
                        cmp              esi, 1;                              jne   .Lx279_55
                        mov              r8, rax;                             jmp   .Lx279_40
.Lx279_55:              cmp              esi, 2;                              jne   .Lx279_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx279_41
                        mov              r8, rax;                             jmp   .Lx279_40
.Lx279_56:              cmp              al, 72;                              jne   .Lx279_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx279_41
                        cmp              rax, r8;                             je    .Lx279_41
                        mov              r8, rax;                             jmp   .Lx279_40
.Lx279_41:              lea              r9, [rsp + 432]
.Lx279_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx279_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx279_43
                        cmp              esi, 1;                              jne   .Lx279_57
                        mov              r9, rax;                             jmp   .Lx279_42
.Lx279_57:              cmp              esi, 2;                              jne   .Lx279_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx279_43
                        mov              r9, rax;                             jmp   .Lx279_42
.Lx279_58:              cmp              al, 72;                              jne   .Lx279_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx279_43
                        cmp              rax, r9;                             je    .Lx279_43
                        mov              r9, rax;                             jmp   .Lx279_42
.Lx279_43:              cmp              r8, r9;                              je    .Lx279_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx279_44
                        cmp              al, 104;                             je    .Lx279_44
                        cmp              al, 72;                              jne   .Lx279_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx279_44
                                                                              jmp   .Lx279_45
.Lx279_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx279_53
                        cmp              al, 104;                             je    .Lx279_53
                        cmp              al, 72;                              jne   .Lx279_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx279_53
                                                                              jmp   .Lx279_46
.Lx279_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx279_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx279_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx279_51
.Lx279_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx279_47
                        cmp              al, 104;                             je    .Lx279_47
                        cmp              al, 72;                              jne   .Lx279_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx279_47
                                                                              jmp   .Lx279_48
.Lx279_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx279_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx279_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx279_51
.Lx279_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx279_49
                        cmp              dl, 80;                              je    .Lx279_53
                                                                              jmp   .Lx279_52
.Lx279_49:              cmp              dl, 80;                              je    .Lx279_52
                        cmp              cl, 5;                               je    .Lx279_53
                        cmp              dl, 5;                               je    .Lx279_53
                        cmp              cl, 3;                               jne   .Lx279_50
                        cmp              dl, 3;                               jne   .Lx279_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx279_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx279_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx279_51
                                                                              jmp   .Lx279_52
.Lx279_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx279_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx279_53
.Lx279_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx279_54
.Lx279_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx279_54
.Lx279_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx279_54:              mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n131_var_ref_α
n130_call_builtin_prolog_β:
                        mov              r11, 105;                            jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n132_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2736]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              r11, 108
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
.Lx284_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx284_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx284_41
                        cmp              esi, 1;                              jne   .Lx284_55
                        mov              r8, rax;                             jmp   .Lx284_40
.Lx284_55:              cmp              esi, 2;                              jne   .Lx284_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx284_41
                        mov              r8, rax;                             jmp   .Lx284_40
.Lx284_56:              cmp              al, 72;                              jne   .Lx284_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx284_41
                        cmp              rax, r8;                             je    .Lx284_41
                        mov              r8, rax;                             jmp   .Lx284_40
.Lx284_41:              lea              r9, [rsp + 352]
.Lx284_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx284_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx284_43
                        cmp              esi, 1;                              jne   .Lx284_57
                        mov              r9, rax;                             jmp   .Lx284_42
.Lx284_57:              cmp              esi, 2;                              jne   .Lx284_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx284_43
                        mov              r9, rax;                             jmp   .Lx284_42
.Lx284_58:              cmp              al, 72;                              jne   .Lx284_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx284_43
                        cmp              rax, r9;                             je    .Lx284_43
                        mov              r9, rax;                             jmp   .Lx284_42
.Lx284_43:              cmp              r8, r9;                              je    .Lx284_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx284_44
                        cmp              al, 104;                             je    .Lx284_44
                        cmp              al, 72;                              jne   .Lx284_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx284_44
                                                                              jmp   .Lx284_45
.Lx284_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx284_53
                        cmp              al, 104;                             je    .Lx284_53
                        cmp              al, 72;                              jne   .Lx284_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx284_53
                                                                              jmp   .Lx284_46
.Lx284_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx284_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx284_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx284_51
.Lx284_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx284_47
                        cmp              al, 104;                             je    .Lx284_47
                        cmp              al, 72;                              jne   .Lx284_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx284_47
                                                                              jmp   .Lx284_48
.Lx284_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx284_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx284_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx284_51
.Lx284_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx284_49
                        cmp              dl, 80;                              je    .Lx284_53
                                                                              jmp   .Lx284_52
.Lx284_49:              cmp              dl, 80;                              je    .Lx284_52
                        cmp              cl, 5;                               je    .Lx284_53
                        cmp              dl, 5;                               je    .Lx284_53
                        cmp              cl, 3;                               jne   .Lx284_50
                        cmp              dl, 3;                               jne   .Lx284_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx284_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx284_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx284_51
                                                                              jmp   .Lx284_52
.Lx284_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx284_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx284_53
.Lx284_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx284_54
.Lx284_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx284_54
.Lx284_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx284_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n134_var_ref_α
n133_call_builtin_prolog_β:
                        mov              r11, 108;                            jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n135_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2720]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n136_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              r11, 111
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
.Lx289_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx289_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx289_41
                        cmp              esi, 1;                              jne   .Lx289_55
                        mov              r8, rax;                             jmp   .Lx289_40
.Lx289_55:              cmp              esi, 2;                              jne   .Lx289_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx289_41
                        mov              r8, rax;                             jmp   .Lx289_40
.Lx289_56:              cmp              al, 72;                              jne   .Lx289_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx289_41
                        cmp              rax, r8;                             je    .Lx289_41
                        mov              r8, rax;                             jmp   .Lx289_40
.Lx289_41:              lea              r9, [rsp + 272]
.Lx289_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx289_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx289_43
                        cmp              esi, 1;                              jne   .Lx289_57
                        mov              r9, rax;                             jmp   .Lx289_42
.Lx289_57:              cmp              esi, 2;                              jne   .Lx289_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx289_43
                        mov              r9, rax;                             jmp   .Lx289_42
.Lx289_58:              cmp              al, 72;                              jne   .Lx289_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx289_43
                        cmp              rax, r9;                             je    .Lx289_43
                        mov              r9, rax;                             jmp   .Lx289_42
.Lx289_43:              cmp              r8, r9;                              je    .Lx289_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx289_44
                        cmp              al, 104;                             je    .Lx289_44
                        cmp              al, 72;                              jne   .Lx289_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx289_44
                                                                              jmp   .Lx289_45
.Lx289_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx289_53
                        cmp              al, 104;                             je    .Lx289_53
                        cmp              al, 72;                              jne   .Lx289_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx289_53
                                                                              jmp   .Lx289_46
.Lx289_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx289_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx289_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx289_51
.Lx289_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx289_47
                        cmp              al, 104;                             je    .Lx289_47
                        cmp              al, 72;                              jne   .Lx289_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx289_47
                                                                              jmp   .Lx289_48
.Lx289_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx289_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx289_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx289_51
.Lx289_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx289_49
                        cmp              dl, 80;                              je    .Lx289_53
                                                                              jmp   .Lx289_52
.Lx289_49:              cmp              dl, 80;                              je    .Lx289_52
                        cmp              cl, 5;                               je    .Lx289_53
                        cmp              dl, 5;                               je    .Lx289_53
                        cmp              cl, 3;                               jne   .Lx289_50
                        cmp              dl, 3;                               jne   .Lx289_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx289_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx289_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx289_51
                                                                              jmp   .Lx289_52
.Lx289_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx289_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx289_53
.Lx289_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx289_54
.Lx289_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx289_54
.Lx289_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx289_54:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_var_ref_α
n136_call_builtin_prolog_β:
                        mov              r11, 111;                            jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2704]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
                        mov              r11, 114
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
.Lx294_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx294_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx294_41
                        cmp              esi, 1;                              jne   .Lx294_55
                        mov              r8, rax;                             jmp   .Lx294_40
.Lx294_55:              cmp              esi, 2;                              jne   .Lx294_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx294_41
                        mov              r8, rax;                             jmp   .Lx294_40
.Lx294_56:              cmp              al, 72;                              jne   .Lx294_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx294_41
                        cmp              rax, r8;                             je    .Lx294_41
                        mov              r8, rax;                             jmp   .Lx294_40
.Lx294_41:              lea              r9, [rsp + 192]
.Lx294_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx294_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx294_43
                        cmp              esi, 1;                              jne   .Lx294_57
                        mov              r9, rax;                             jmp   .Lx294_42
.Lx294_57:              cmp              esi, 2;                              jne   .Lx294_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx294_43
                        mov              r9, rax;                             jmp   .Lx294_42
.Lx294_58:              cmp              al, 72;                              jne   .Lx294_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx294_43
                        cmp              rax, r9;                             je    .Lx294_43
                        mov              r9, rax;                             jmp   .Lx294_42
.Lx294_43:              cmp              r8, r9;                              je    .Lx294_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx294_44
                        cmp              al, 104;                             je    .Lx294_44
                        cmp              al, 72;                              jne   .Lx294_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx294_44
                                                                              jmp   .Lx294_45
.Lx294_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx294_53
                        cmp              al, 104;                             je    .Lx294_53
                        cmp              al, 72;                              jne   .Lx294_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx294_53
                                                                              jmp   .Lx294_46
.Lx294_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx294_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx294_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx294_51
.Lx294_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx294_47
                        cmp              al, 104;                             je    .Lx294_47
                        cmp              al, 72;                              jne   .Lx294_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx294_47
                                                                              jmp   .Lx294_48
.Lx294_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx294_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx294_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx294_51
.Lx294_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx294_49
                        cmp              dl, 80;                              je    .Lx294_53
                                                                              jmp   .Lx294_52
.Lx294_49:              cmp              dl, 80;                              je    .Lx294_52
                        cmp              cl, 5;                               je    .Lx294_53
                        cmp              dl, 5;                               je    .Lx294_53
                        cmp              cl, 3;                               jne   .Lx294_50
                        cmp              dl, 3;                               jne   .Lx294_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx294_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx294_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx294_51
                                                                              jmp   .Lx294_52
.Lx294_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx294_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx294_53
.Lx294_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx294_54
.Lx294_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx294_54
.Lx294_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx294_54:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n140_suspend_α
n139_call_builtin_prolog_β:
                        mov              r11, 114;                            jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_suspend_α:         mov              r11, 115
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx296_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2688];         jmp   rax
.Lx296_61:              mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n140_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n140_suspend_β]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   differ$2F4_γ
n140_suspend_β:         mov              r11, 115;                            jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_prolog_α:
                        mov              r11, 116
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
                        cmp              al, 104;                             je    differ$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   differ$2F4_ω
n141_call_builtin_prolog_β:
                        mov              r11, 116;                            jmp   differ$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
differ$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
differ$2F4_β:
                                                                              jmp   n140_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
differ$2F4_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx297_50
                        mov              qword ptr [rsp + 2688], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 2688];         jmp   rax
.Lx297_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2840]
                        add              rsp, 2864;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
differ$2F4_ω:
                        mov              rcx, qword ptr [rsp + 2848]
                        add              rsp, 2864;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__puzzle$2F0:
                        sub              rsp, 1408
                        mov              qword ptr [rsp + 1384], rcx
                        mov              qword ptr [rsp + 1392], rdx
                        mov              qword ptr [rsp + 1400], rsp
                        mov              rdi, rsp
                        mov              esi, 1280
                        mov              edx, 1376
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
puzzle$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n298_call_builtin_prolog_α:
                        mov              r11, 117
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx336_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx336_101
.Lx336_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx336_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx336_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx336_101
.Lx336_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx336_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    puzzle$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n299_var_ref_α
n298_call_builtin_prolog_β:
                        mov              r11, 117;                            jmp   puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n300_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n300_call_proc_staged_α:
                        mov              r11, 119
                        mov              qword ptr [rsp + 1232], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx340_20
                        mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx340_21
.Lx340_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx340_21:              lea              rax, [rip + .Lx340_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx340_1
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4];               jmp   rax
.Lx340_3:               mov              qword ptr [rsp + 1240], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1232]
                        test             rax, rax;                            jne   .Lx340_5
                        mov              qword ptr [rsp + 1232], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx340_2
.Lx340_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx340_2
.Lx340_4:               mov              rax, qword ptr [rsp + 1232]
                        test             rax, rax;                            jne   .Lx340_6
                        mov              qword ptr [rsp + 1232], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx340_2
.Lx340_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx340_2
.Lx340_1:               call             rt_faildescr@PLT
.Lx340_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx340_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
.Lx340_29:              mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n335_call_builtin_prolog_α
                                                                              jmp   n301_var_ref_α
n300_call_proc_staged_β:
                        mov              r11, 119
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1232], 0
                        lea              rdi, [rsp + 1248]
                        lea              rsi, [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n335_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              ecx, 32
                        mov              r8d, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n335_call_builtin_prolog_α
                        lea              r8, [rip + .Lx340_7]
                        push             r8
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4];               jmp   rax
.Lx340_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n335_call_builtin_prolog_α
                                                                              jmp   n301_var_ref_α
.Lx340_0:               .quad            .Lx340_0_s
.Lx340_0_s:             .string          "profession/1"
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n302_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n302_call_proc_staged_α:
                        mov              r11, 121
                        mov              qword ptr [rsp + 1152], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx344_20
                        mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx344_21
.Lx344_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx344_21:              lea              rax, [rip + .Lx344_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx344_1
                        lea              rcx, [rip + .Lx344_3]
                        lea              rdx, [rip + .Lx344_4];               jmp   rax
.Lx344_3:               mov              qword ptr [rsp + 1160], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1152]
                        test             rax, rax;                            jne   .Lx344_5
                        mov              qword ptr [rsp + 1152], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx344_2
.Lx344_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx344_2
.Lx344_4:               mov              rax, qword ptr [rsp + 1152]
                        test             rax, rax;                            jne   .Lx344_6
                        mov              qword ptr [rsp + 1152], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx344_2
.Lx344_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx344_2
.Lx344_1:               call             rt_faildescr@PLT
.Lx344_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx344_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
.Lx344_29:              mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n300_call_proc_staged_β
                                                                              jmp   n303_var_ref_α
n302_call_proc_staged_β:
                        mov              r11, 121
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1152], 0
                        lea              rdi, [rsp + 1168]
                        lea              rsi, [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n300_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              ecx, 32
                        mov              r8d, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n300_call_proc_staged_β
                        lea              r8, [rip + .Lx344_7]
                        push             r8
                        lea              rcx, [rip + .Lx344_3]
                        lea              rdx, [rip + .Lx344_4];               jmp   rax
.Lx344_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n300_call_proc_staged_β
                                                                              jmp   n303_var_ref_α
.Lx344_0:               .quad            .Lx344_0_s
.Lx344_0_s:             .string          "profession/1"
#-----------------------------------------------------------------------------------------------------------------------
n303_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n304_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_proc_staged_α:
                        mov              r11, 123
                        mov              qword ptr [rsp + 1072], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx348_20
                        mov              rax, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx348_21
.Lx348_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx348_21:              lea              rax, [rip + .Lx348_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx348_1
                        lea              rcx, [rip + .Lx348_3]
                        lea              rdx, [rip + .Lx348_4];               jmp   rax
.Lx348_3:               mov              qword ptr [rsp + 1080], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1072]
                        test             rax, rax;                            jne   .Lx348_5
                        mov              qword ptr [rsp + 1072], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx348_2
.Lx348_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx348_2
.Lx348_4:               mov              rax, qword ptr [rsp + 1072]
                        test             rax, rax;                            jne   .Lx348_6
                        mov              qword ptr [rsp + 1072], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx348_2
.Lx348_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx348_2
.Lx348_1:               call             rt_faildescr@PLT
.Lx348_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx348_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
.Lx348_29:              mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n302_call_proc_staged_β
                                                                              jmp   n305_var_ref_α
n304_call_proc_staged_β:
                        mov              r11, 123
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1072], 0
                        lea              rdi, [rsp + 1088]
                        lea              rsi, [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n302_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              ecx, 32
                        mov              r8d, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n302_call_proc_staged_β
                        lea              r8, [rip + .Lx348_7]
                        push             r8
                        lea              rcx, [rip + .Lx348_3]
                        lea              rdx, [rip + .Lx348_4];               jmp   rax
.Lx348_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n302_call_proc_staged_β
                                                                              jmp   n305_var_ref_α
.Lx348_0:               .quad            .Lx348_0_s
.Lx348_0_s:             .string          "profession/1"
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n306_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n306_call_proc_staged_α:
                        mov              r11, 125
                        mov              qword ptr [rsp + 992], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx352_20
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx352_21
.Lx352_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx352_21:              lea              rax, [rip + .Lx352_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx352_1
                        lea              rcx, [rip + .Lx352_3]
                        lea              rdx, [rip + .Lx352_4];               jmp   rax
.Lx352_3:               mov              qword ptr [rsp + 1000], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 992]
                        test             rax, rax;                            jne   .Lx352_5
                        mov              qword ptr [rsp + 992], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx352_2
.Lx352_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx352_2
.Lx352_4:               mov              rax, qword ptr [rsp + 992]
                        test             rax, rax;                            jne   .Lx352_6
                        mov              qword ptr [rsp + 992], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx352_2
.Lx352_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx352_2
.Lx352_1:               call             rt_faildescr@PLT
.Lx352_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx352_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
.Lx352_29:              mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n304_call_proc_staged_β
                                                                              jmp   n307_var_ref_α
n306_call_proc_staged_β:
                        mov              r11, 125
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 992], 0
                        lea              rdi, [rsp + 1008]
                        lea              rsi, [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n304_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              ecx, 32
                        mov              r8d, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n304_call_proc_staged_β
                        lea              r8, [rip + .Lx352_7]
                        push             r8
                        lea              rcx, [rip + .Lx352_3]
                        lea              rdx, [rip + .Lx352_4];               jmp   rax
.Lx352_7:               add              rsp, 8
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n304_call_proc_staged_β
                                                                              jmp   n307_var_ref_α
.Lx352_0:               .quad            .Lx352_0_s
.Lx352_0_s:             .string          "profession/1"
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n308_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n309_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n310_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n311_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n311_call_proc_staged_α:
                        mov              r11, 130
                        mov              qword ptr [rsp + 864], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx362_20
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx362_21
.Lx362_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx362_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx362_22
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx362_23
.Lx362_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx362_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx362_24
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx362_25
.Lx362_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx362_25:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx362_26
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx362_27
.Lx362_26:              mov              edi, 3
                        mov              rsi, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx362_27:              lea              rax, [rip + .Lx362_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx362_1
                        lea              rcx, [rip + .Lx362_3]
                        lea              rdx, [rip + .Lx362_4];               jmp   rax
.Lx362_3:               mov              qword ptr [rsp + 872], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 864]
                        test             rax, rax;                            jne   .Lx362_5
                        mov              qword ptr [rsp + 864], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx362_2
.Lx362_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx362_2
.Lx362_4:               mov              rax, qword ptr [rsp + 864]
                        test             rax, rax;                            jne   .Lx362_6
                        mov              qword ptr [rsp + 864], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx362_2
.Lx362_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx362_2
.Lx362_1:               call             rt_faildescr@PLT
.Lx362_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx362_29
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
.Lx362_29:              mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n306_call_proc_staged_β
                                                                              jmp   n312_var_ref_α
n311_call_proc_staged_β:
                        mov              r11, 130
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 864], 0
                        lea              rdi, [rsp + 880]
                        lea              rsi, [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n306_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              ecx, 80
                        mov              r8d, 2688
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n306_call_proc_staged_β
                        lea              r8, [rip + .Lx362_7]
                        push             r8
                        lea              rcx, [rip + .Lx362_3]
                        lea              rdx, [rip + .Lx362_4];               jmp   rax
.Lx362_7:               add              rsp, 8
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n306_call_proc_staged_β
                                                                              jmp   n312_var_ref_α
.Lx362_0:               .quad            .Lx362_0_s
.Lx362_0_s:             .string          "differ/4"
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n313_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 6
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n314_call_builtin_prolog_α
.Lx365_0:               .quad            .Lx365_0_s
.Lx365_0_s:             .string          "lawyer"
#-----------------------------------------------------------------------------------------------------------------------
n314_call_builtin_prolog_α:
                        mov              r11, 133
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        mov              rsi, qword ptr [rip + .Lx366_2];     jmp   .Lx366_3
.Lx366_2:               .quad            .Lx366_2_s
.Lx366_2_s:             .string          "lawyer"
.Lx366_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n311_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n315_var_ref_α
n314_call_builtin_prolog_β:
                        mov              r11, 133;                            jmp   n311_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n316_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 6
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n317_call_proc_staged_α
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "doctor"
#-----------------------------------------------------------------------------------------------------------------------
n317_call_proc_staged_α:
                        mov              r11, 136
                        mov              qword ptr [rsp + 640], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx371_20
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx371_21
.Lx371_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx371_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx371_22
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx371_23
.Lx371_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx371_23:              lea              rax, [rip + .Lx371_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx371_1
                        lea              rcx, [rip + .Lx371_3]
                        lea              rdx, [rip + .Lx371_4];               jmp   rax
.Lx371_3:               mov              qword ptr [rsp + 648], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lx371_5
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx371_2
.Lx371_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx371_2
.Lx371_4:               mov              rax, qword ptr [rsp + 640]
                        test             rax, rax;                            jne   .Lx371_6
                        mov              qword ptr [rsp + 640], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx371_2
.Lx371_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx371_2
.Lx371_1:               call             rt_faildescr@PLT
.Lx371_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx371_29
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
.Lx371_29:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n311_call_proc_staged_β
                                                                              jmp   n318_var_ref_α
n317_call_proc_staged_β:
                        mov              r11, 136
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 640], 0
                        lea              rdi, [rsp + 656]
                        lea              rsi, [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n311_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              ecx, 48
                        mov              r8d, 496
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n311_call_proc_staged_β
                        lea              r8, [rip + .Lx371_7]
                        push             r8
                        lea              rcx, [rip + .Lx371_3]
                        lea              rdx, [rip + .Lx371_4];               jmp   rax
.Lx371_7:               add              rsp, 8
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n311_call_proc_staged_β
                                                                              jmp   n318_var_ref_α
.Lx371_0:               .quad            .Lx371_0_s
.Lx371_0_s:             .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n319_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 6
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n320_call_proc_staged_α
.Lx374_0:               .quad            .Lx374_0_s
.Lx374_0_s:             .string          "banker"
#-----------------------------------------------------------------------------------------------------------------------
n320_call_proc_staged_α:
                        mov              r11, 139
                        mov              qword ptr [rsp + 528], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx376_20
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx376_21
.Lx376_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx376_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx376_22
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx376_23
.Lx376_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx376_23:              lea              rax, [rip + .Lx376_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx376_1
                        lea              rcx, [rip + .Lx376_3]
                        lea              rdx, [rip + .Lx376_4];               jmp   rax
.Lx376_3:               mov              qword ptr [rsp + 536], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 528]
                        test             rax, rax;                            jne   .Lx376_5
                        mov              qword ptr [rsp + 528], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx376_2
.Lx376_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx376_2
.Lx376_4:               mov              rax, qword ptr [rsp + 528]
                        test             rax, rax;                            jne   .Lx376_6
                        mov              qword ptr [rsp + 528], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx376_2
.Lx376_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx376_2
.Lx376_1:               call             rt_faildescr@PLT
.Lx376_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx376_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
.Lx376_29:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n317_call_proc_staged_β
                                                                              jmp   n321_var_ref_α
n320_call_proc_staged_β:
                        mov              r11, 139
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 528], 0
                        lea              rdi, [rsp + 544]
                        lea              rsi, [rsp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n317_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              ecx, 48
                        mov              r8d, 496
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n317_call_proc_staged_β
                        lea              r8, [rip + .Lx376_7]
                        push             r8
                        lea              rcx, [rip + .Lx376_3]
                        lea              rdx, [rip + .Lx376_4];               jmp   rax
.Lx376_7:               add              rsp, 8
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n317_call_proc_staged_β
                                                                              jmp   n321_var_ref_α
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          "differ/2"
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n322_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      mov              r11, 141
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 6
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n323_call_builtin_prolog_α
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          "doctor"
#-----------------------------------------------------------------------------------------------------------------------
n323_call_builtin_prolog_α:
                        mov              r11, 142
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              rsi, qword ptr [rip + .Lx380_2];     jmp   .Lx380_3
.Lx380_2:               .quad            .Lx380_2_s
.Lx380_2_s:             .string          "doctor"
.Lx380_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n320_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n324_var_ref_α
n323_call_builtin_prolog_β:
                        mov              r11, 142;                            jmp   n320_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n325_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 6
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n326_call_builtin_prolog_α
.Lx383_0:               .quad            .Lx383_0_s
.Lx383_0_s:             .string          "banker"
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_prolog_α:
                        mov              r11, 145
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              rsi, qword ptr [rip + .Lx384_2];     jmp   .Lx384_3
.Lx384_2:               .quad            .Lx384_2_s
.Lx384_2_s:             .string          "banker"
.Lx384_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n320_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n327_var_ref_α
n326_call_builtin_prolog_β:
                        mov              r11, 145;                            jmp   n320_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n328_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 9
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n329_call_builtin_prolog_α
.Lx387_0:               .quad            .Lx387_0_s
.Lx387_0_s:             .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_prolog_α:
                        mov              r11, 148
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              rsi, qword ptr [rip + .Lx388_2];     jmp   .Lx388_3
.Lx388_2:               .quad            .Lx388_2_s
.Lx388_2_s:             .string          "architect"
.Lx388_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n320_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n330_var_ref_α
n329_call_builtin_prolog_β:
                        mov              r11, 148;                            jmp   n320_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n330_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n331_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n332_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n333_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n333_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n334_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n334_call_proc_staged_α:
                        mov              r11, 153
                        lea              rsi, [rsp + 176]
                        lea              rdx, [rsp + 192]
                        lea              rcx, [rsp + 208]
                        lea              r8, [rsp + 224]
                        call             display$2F4_dcα;                     jmp   .Lx398_2
.Lx398_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx398_29
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
.Lx398_29:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n320_call_proc_staged_β
                                                                              jmp   n334_call_proc_staged_β
n334_call_proc_staged_β:
                        mov              r11, 153;                            jmp   n320_call_proc_staged_β
.Lx398_0:               .quad            .Lx398_0_s
.Lx398_0_s:             .string          "display/4"
#-----------------------------------------------------------------------------------------------------------------------
n335_call_builtin_prolog_α:
                        mov              r11, 154
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
                        cmp              al, 104;                             je    puzzle$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   puzzle$2F0_ω
n335_call_builtin_prolog_β:
                        mov              r11, 154;                            jmp   puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_β:
                                                                              jmp   puzzle$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx399_50
                        mov              qword ptr [rsp + 1280], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1280];         jmp   rax
.Lx399_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1384]
                        add              rsp, 1408;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
puzzle$2F0_ω:
                        mov              rcx, qword ptr [rsp + 1392]
                        add              rsp, 1408;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$disj0$2F0:
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rcx
                        mov              qword ptr [rsp + 224], rdx
                        mov              qword ptr [rsp + 232], rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 208
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$disj0$2F0_α_body:
                        lea              rax, [rip + n402_suspend_β]
                        mov              qword ptr [rsp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n400_call_builtin_prolog_α:
                        mov              r11, 155
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx406_102
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24];           jmp   .Lx406_101
.Lx406_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx406_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx406_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx406_101
.Lx406_100:             lea              rdi, [rsp + 32]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx406_101:             mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              al, 104;                             je    $disj0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n401_call_proc_staged_α
n400_call_builtin_prolog_β:
                        mov              r11, 155;                            jmp   $disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_call_proc_staged_α:
                        mov              r11, 156
                        mov              qword ptr [rsp + 144], 0
                        lea              rax, [rip + .Lx408_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx408_1
                        lea              rcx, [rip + .Lx408_3]
                        lea              rdx, [rip + .Lx408_4];               jmp   rax
.Lx408_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx408_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx408_2
.Lx408_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx408_2
.Lx408_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx408_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx408_2
.Lx408_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx408_2
.Lx408_1:               call             rt_faildescr@PLT
.Lx408_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx408_29
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
.Lx408_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n403_call_builtin_prolog_α
                                                                              jmp   n402_suspend_α
n401_call_proc_staged_β:
                        mov              r11, 156
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n403_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 16
                        mov              r8d, 1280
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n403_call_builtin_prolog_α
                        lea              r8, [rip + .Lx408_7]
                        push             r8
                        lea              rcx, [rip + .Lx408_3]
                        lea              rdx, [rip + .Lx408_4];               jmp   rax
.Lx408_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n403_call_builtin_prolog_α
                                                                              jmp   n402_suspend_α
.Lx408_0:               .quad            .Lx408_0_s
.Lx408_0_s:             .string          "puzzle/0"
#-----------------------------------------------------------------------------------------------------------------------
n402_suspend_α:         mov              r11, 157
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx410_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx410_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n402_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n402_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F0_γ
n402_suspend_β:         mov              r11, 157;                            jmp   n401_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n403_call_builtin_prolog_α:
                        mov              r11, 158
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    $disj0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n404_suspend_α
n403_call_builtin_prolog_β:
                        mov              r11, 158;                            jmp   $disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n404_suspend_α:         mov              r11, 159
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx413_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx413_61:              mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        lea              rdx, [rip + n404_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n404_suspend_β]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F0_γ
n404_suspend_β:         mov              r11, 159;                            jmp   n405_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n405_call_builtin_prolog_α:
                        mov              r11, 160
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
                        cmp              al, 104;                             je    $disj0$2F0_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $disj0$2F0_ω
n405_call_builtin_prolog_β:
                        mov              r11, 160;                            jmp   $disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_β:
                                                                              jmp   n402_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx414_50
                        mov              qword ptr [rsp + 176], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 176];          jmp   rax
.Lx414_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 216]
                        add              rsp, 240;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F0_ω:
                        mov              rcx, qword ptr [rsp + 224]
                        add              rsp, 240;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__betterGolfer$2F2:
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rsp
                        mov              rdi, rsp
                        mov              esi, 704
                        mov              edx, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
betterGolfer$2F2_α_body:
                        lea              rax, [rip + n422_suspend_β]
                        mov              qword ptr [rsp + 704], rax
#-----------------------------------------------------------------------------------------------------------------------
n415_call_builtin_prolog_α:
                        mov              r11, 161
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx440_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx440_101
.Lx440_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx440_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx440_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx440_101
.Lx440_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx440_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    betterGolfer$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n416_var_ref_α
n415_call_builtin_prolog_β:
                        mov              r11, 161;                            jmp   betterGolfer$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n416_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n417_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 5
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n418_call_builtin_prolog_α
.Lx443_0:               .quad            .Lx443_0_s
.Lx443_0_s:             .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n418_call_builtin_prolog_α:
                        mov              r11, 164
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              rsi, qword ptr [rip + .Lx444_2];     jmp   .Lx444_3
.Lx444_2:               .quad            .Lx444_2_s
.Lx444_2_s:             .string          "brown"
.Lx444_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n423_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n419_var_ref_α
n418_call_builtin_prolog_β:
                        mov              r11, 164;                            jmp   n423_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n420_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:      mov              r11, 166
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 5
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n421_call_builtin_prolog_α
.Lx447_0:               .quad            .Lx447_0_s
.Lx447_0_s:             .string          "jones"
#-----------------------------------------------------------------------------------------------------------------------
n421_call_builtin_prolog_α:
                        mov              r11, 167
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              rsi, qword ptr [rip + .Lx448_2];     jmp   .Lx448_3
.Lx448_2:               .quad            .Lx448_2_s
.Lx448_2_s:             .string          "jones"
.Lx448_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n423_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n422_suspend_α
n421_call_builtin_prolog_β:
                        mov              r11, 167;                            jmp   n423_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n422_suspend_α:         mov              r11, 168
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx450_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx450_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n422_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n422_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   betterGolfer$2F2_γ
n422_suspend_β:         mov              r11, 168;                            jmp   n423_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n423_call_builtin_prolog_α:
                        mov              r11, 169
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    betterGolfer$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n424_var_ref_α
n423_call_builtin_prolog_β:
                        mov              r11, 169;                            jmp   betterGolfer$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n425_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:      mov              r11, 171
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 5
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n426_call_builtin_prolog_α
.Lx454_0:               .quad            .Lx454_0_s
.Lx454_0_s:             .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n426_call_builtin_prolog_α:
                        mov              r11, 172
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              rsi, qword ptr [rip + .Lx455_2];     jmp   .Lx455_3
.Lx455_2:               .quad            .Lx455_2_s
.Lx455_2_s:             .string          "brown"
.Lx455_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n431_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n427_var_ref_α
n426_call_builtin_prolog_β:
                        mov              r11, 172;                            jmp   n431_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n428_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 5
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n429_call_builtin_prolog_α
.Lx458_0:               .quad            .Lx458_0_s
.Lx458_0_s:             .string          "smith"
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_prolog_α:
                        mov              r11, 175
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              rsi, qword ptr [rip + .Lx459_2];     jmp   .Lx459_3
.Lx459_2:               .quad            .Lx459_2_s
.Lx459_2_s:             .string          "smith"
.Lx459_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n431_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n430_suspend_α
n429_call_builtin_prolog_β:
                        mov              r11, 175;                            jmp   n431_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n430_suspend_α:         mov              r11, 176
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx461_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx461_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n430_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n430_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   betterGolfer$2F2_γ
n430_suspend_β:         mov              r11, 176;                            jmp   n431_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n431_call_builtin_prolog_α:
                        mov              r11, 177
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    betterGolfer$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n432_var_ref_α
n431_call_builtin_prolog_β:
                        mov              r11, 177;                            jmp   betterGolfer$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n433_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 5
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n434_call_builtin_prolog_α
.Lx465_0:               .quad            .Lx465_0_s
.Lx465_0_s:             .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_prolog_α:
                        mov              r11, 180
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              rsi, qword ptr [rip + .Lx466_2];     jmp   .Lx466_3
.Lx466_2:               .quad            .Lx466_2_s
.Lx466_2_s:             .string          "brown"
.Lx466_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n439_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n435_var_ref_α
n434_call_builtin_prolog_β:
                        mov              r11, 180;                            jmp   n439_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n436_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:      mov              r11, 182
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 5
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n437_call_builtin_prolog_α
.Lx469_0:               .quad            .Lx469_0_s
.Lx469_0_s:             .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
                        mov              r11, 183
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              rsi, qword ptr [rip + .Lx470_2];     jmp   .Lx470_3
.Lx470_2:               .quad            .Lx470_2_s
.Lx470_2_s:             .string          "clark"
.Lx470_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n439_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n438_suspend_α
n437_call_builtin_prolog_β:
                        mov              r11, 183;                            jmp   n439_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n438_suspend_α:         mov              r11, 184
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx472_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx472_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n438_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n438_suspend_β]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   betterGolfer$2F2_γ
n438_suspend_β:         mov              r11, 184;                            jmp   n439_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_prolog_α:
                        mov              r11, 185
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
                        cmp              al, 104;                             je    betterGolfer$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   betterGolfer$2F2_ω
n439_call_builtin_prolog_β:
                        mov              r11, 185;                            jmp   betterGolfer$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
betterGolfer$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
betterGolfer$2F2_β:
                                                                              jmp   n422_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
betterGolfer$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx473_50
                        mov              qword ptr [rsp + 704], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 704];          jmp   rax
.Lx473_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
betterGolfer$2F2_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__profession$2F1:
                        sub              rsp, 816
                        mov              qword ptr [rsp + 792], rcx
                        mov              qword ptr [rsp + 800], rdx
                        mov              qword ptr [rsp + 808], rsp
                        mov              rdi, rsp
                        mov              esi, 736
                        mov              edx, 784
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
profession$2F1_α_body:
                        lea              rax, [rip + n493_suspend_β]
                        mov              qword ptr [rsp + 736], rax
#-----------------------------------------------------------------------------------------------------------------------
n474_call_builtin_prolog_α:
                        mov              r11, 186
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx495_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx495_101
.Lx495_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx495_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx495_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx495_101
.Lx495_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx495_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    profession$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n475_var_ref_α
n474_call_builtin_prolog_β:
                        mov              r11, 186;                            jmp   profession$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n475_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n476_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n477_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n477_call_builtin_prolog_α:
                        mov              r11, 189
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        lea              r8, [rsp + 672]
.Lx500_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx500_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx500_41
                        cmp              esi, 1;                              jne   .Lx500_55
                        mov              r8, rax;                             jmp   .Lx500_40
.Lx500_55:              cmp              esi, 2;                              jne   .Lx500_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx500_41
                        mov              r8, rax;                             jmp   .Lx500_40
.Lx500_56:              cmp              al, 72;                              jne   .Lx500_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx500_41
                        cmp              rax, r8;                             je    .Lx500_41
                        mov              r8, rax;                             jmp   .Lx500_40
.Lx500_41:              lea              r9, [rsp + 688]
.Lx500_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx500_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx500_43
                        cmp              esi, 1;                              jne   .Lx500_57
                        mov              r9, rax;                             jmp   .Lx500_42
.Lx500_57:              cmp              esi, 2;                              jne   .Lx500_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx500_43
                        mov              r9, rax;                             jmp   .Lx500_42
.Lx500_58:              cmp              al, 72;                              jne   .Lx500_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx500_43
                        cmp              rax, r9;                             je    .Lx500_43
                        mov              r9, rax;                             jmp   .Lx500_42
.Lx500_43:              cmp              r8, r9;                              je    .Lx500_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx500_44
                        cmp              al, 104;                             je    .Lx500_44
                        cmp              al, 72;                              jne   .Lx500_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx500_44
                                                                              jmp   .Lx500_45
.Lx500_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx500_53
                        cmp              al, 104;                             je    .Lx500_53
                        cmp              al, 72;                              jne   .Lx500_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx500_53
                                                                              jmp   .Lx500_46
.Lx500_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx500_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx500_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx500_51
.Lx500_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx500_47
                        cmp              al, 104;                             je    .Lx500_47
                        cmp              al, 72;                              jne   .Lx500_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx500_47
                                                                              jmp   .Lx500_48
.Lx500_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx500_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx500_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx500_51
.Lx500_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx500_49
                        cmp              dl, 80;                              je    .Lx500_53
                                                                              jmp   .Lx500_52
.Lx500_49:              cmp              dl, 80;                              je    .Lx500_52
                        cmp              cl, 5;                               je    .Lx500_53
                        cmp              dl, 5;                               je    .Lx500_53
                        cmp              cl, 3;                               jne   .Lx500_50
                        cmp              dl, 3;                               jne   .Lx500_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx500_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx500_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx500_51
                                                                              jmp   .Lx500_52
.Lx500_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx500_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx500_53
.Lx500_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx500_54
.Lx500_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx500_54
.Lx500_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx500_54:              mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n494_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n478_var_ref_α
n477_call_builtin_prolog_β:
                        mov              r11, 189;                            jmp   n494_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 752]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n479_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:      mov              r11, 191
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 1
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n480_lit_string_α
.Lx503_0:               .quad            .Lx503_0_s
.Lx503_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 9
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n481_lit_string_α
.Lx504_0:               .quad            .Lx504_0_s
.Lx504_0_s:             .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:      mov              r11, 193
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n482_lit_string_α
.Lx505_0:               .quad            .Lx505_0_s
.Lx505_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:      mov              r11, 194
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 6
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n483_lit_string_α
.Lx506_0:               .quad            .Lx506_0_s
.Lx506_0_s:             .string          "banker"
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n484_lit_string_α
.Lx507_0:               .quad            .Lx507_0_s
.Lx507_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_string_α:      mov              r11, 196
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 6
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n485_lit_string_α
.Lx508_0:               .quad            .Lx508_0_s
.Lx508_0_s:             .string          "doctor"
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_string_α:      mov              r11, 197
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n486_lit_string_α
.Lx509_0:               .quad            .Lx509_0_s
.Lx509_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_string_α:      mov              r11, 198
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 6
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n487_lit_string_α
.Lx510_0:               .quad            .Lx510_0_s
.Lx510_0_s:             .string          "lawyer"
#-----------------------------------------------------------------------------------------------------------------------
n487_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 2
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n488_call_builtin_prolog_α
.Lx511_0:               .quad            .Lx511_0_s
.Lx511_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n488_call_builtin_prolog_α:
                        mov              r11, 200
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    profession$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n489_call_builtin_prolog_α
n488_call_builtin_prolog_β:
                        mov              r11, 200;                            jmp   profession$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n489_call_builtin_prolog_α:
                        mov              r11, 201
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    profession$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n490_call_builtin_prolog_α
n489_call_builtin_prolog_β:
                        mov              r11, 201;                            jmp   profession$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_prolog_α:
                        mov              r11, 202
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    profession$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n491_call_builtin_prolog_α
n490_call_builtin_prolog_β:
                        mov              r11, 202;                            jmp   profession$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n491_call_builtin_prolog_α:
                        mov              r11, 203
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n494_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n492_call_proc_staged_α
n491_call_builtin_prolog_β:
                        mov              r11, 203;                            jmp   n494_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n492_call_proc_staged_α:
                        mov              r11, 204
                        mov              qword ptr [rsp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx517_20
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx517_21
.Lx517_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx517_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx517_22
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx517_23
.Lx517_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx517_23:              lea              rax, [rip + .Lx517_7]
                        push             rax
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx517_1
                        lea              rcx, [rip + .Lx517_3]
                        lea              rdx, [rip + .Lx517_4];               jmp   rax
.Lx517_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx517_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx517_2
.Lx517_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx517_2
.Lx517_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx517_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx517_2
.Lx517_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx517_2
.Lx517_1:               call             rt_faildescr@PLT
.Lx517_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx517_29
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
.Lx517_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n494_call_builtin_prolog_α
                                                                              jmp   n493_suspend_α
n492_call_proc_staged_β:
                        mov              r11, 204
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n494_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 48
                        mov              r8d, 656
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
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n494_call_builtin_prolog_α
                        lea              r8, [rip + .Lx517_7]
                        push             r8
                        lea              rcx, [rip + .Lx517_3]
                        lea              rdx, [rip + .Lx517_4];               jmp   rax
.Lx517_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n494_call_builtin_prolog_α
                                                                              jmp   n493_suspend_α
.Lx517_0:               .quad            .Lx517_0_s
.Lx517_0_s:             .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n493_suspend_α:         mov              r11, 205
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx519_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 736];          jmp   rax
.Lx519_61:              mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n493_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n493_suspend_β]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   profession$2F1_γ
n493_suspend_β:         mov              r11, 205;                            jmp   n492_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n494_call_builtin_prolog_α:
                        mov              r11, 206
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
                        cmp              al, 104;                             je    profession$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   profession$2F1_ω
n494_call_builtin_prolog_β:
                        mov              r11, 206;                            jmp   profession$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
profession$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
profession$2F1_β:
                                                                              jmp   n493_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
profession$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx520_50
                        mov              qword ptr [rsp + 736], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 736];          jmp   rax
.Lx520_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 792]
                        add              rsp, 816;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
profession$2F1_ω:
                        mov              rcx, qword ptr [rsp + 800]
                        add              rsp, 816;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__member$2F2:
                        sub              rsp, 768
                        mov              qword ptr [rsp + 744], rcx
                        mov              qword ptr [rsp + 752], rdx
                        mov              qword ptr [rsp + 760], rsp
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 736
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
member$2F2_α_body:
                        lea              rax, [rip + n529_suspend_β]
                        mov              qword ptr [rsp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n521_call_builtin_prolog_α:
                        mov              r11, 207
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx543_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx543_101
.Lx543_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx543_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx543_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx543_101
.Lx543_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx543_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n522_var_ref_α
n521_call_builtin_prolog_β:
                        mov              r11, 207;                            jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n523_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n524_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n524_call_builtin_prolog_α:
                        mov              r11, 210
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        lea              r8, [rsp + 592]
.Lx548_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx548_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx548_41
                        cmp              esi, 1;                              jne   .Lx548_55
                        mov              r8, rax;                             jmp   .Lx548_40
.Lx548_55:              cmp              esi, 2;                              jne   .Lx548_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx548_41
                        mov              r8, rax;                             jmp   .Lx548_40
.Lx548_56:              cmp              al, 72;                              jne   .Lx548_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx548_41
                        cmp              rax, r8;                             je    .Lx548_41
                        mov              r8, rax;                             jmp   .Lx548_40
.Lx548_41:              lea              r9, [rsp + 608]
.Lx548_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx548_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx548_43
                        cmp              esi, 1;                              jne   .Lx548_57
                        mov              r9, rax;                             jmp   .Lx548_42
.Lx548_57:              cmp              esi, 2;                              jne   .Lx548_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx548_43
                        mov              r9, rax;                             jmp   .Lx548_42
.Lx548_58:              cmp              al, 72;                              jne   .Lx548_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx548_43
                        cmp              rax, r9;                             je    .Lx548_43
                        mov              r9, rax;                             jmp   .Lx548_42
.Lx548_43:              cmp              r8, r9;                              je    .Lx548_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx548_44
                        cmp              al, 104;                             je    .Lx548_44
                        cmp              al, 72;                              jne   .Lx548_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx548_44
                                                                              jmp   .Lx548_45
.Lx548_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx548_53
                        cmp              al, 104;                             je    .Lx548_53
                        cmp              al, 72;                              jne   .Lx548_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx548_53
                                                                              jmp   .Lx548_46
.Lx548_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx548_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx548_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx548_51
.Lx548_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx548_47
                        cmp              al, 104;                             je    .Lx548_47
                        cmp              al, 72;                              jne   .Lx548_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx548_47
                                                                              jmp   .Lx548_48
.Lx548_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx548_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx548_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx548_51
.Lx548_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx548_49
                        cmp              dl, 80;                              je    .Lx548_53
                                                                              jmp   .Lx548_52
.Lx548_49:              cmp              dl, 80;                              je    .Lx548_52
                        cmp              cl, 5;                               je    .Lx548_53
                        cmp              dl, 5;                               je    .Lx548_53
                        cmp              cl, 3;                               jne   .Lx548_50
                        cmp              dl, 3;                               jne   .Lx548_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx548_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx548_51
                                                                              jmp   .Lx548_52
.Lx548_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx548_53
.Lx548_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx548_54
.Lx548_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx548_54
.Lx548_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx548_54:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n530_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n525_var_ref_α
n524_call_builtin_prolog_β:
                        mov              r11, 210;                            jmp   n530_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n526_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n527_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n528_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n528_call_builtin_prolog_α:
                        mov              r11, 214
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        lea              r8, [rsp + 496]
.Lx555_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx555_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx555_61
                        cmp              esi, 1;                              jne   .Lx555_62
                        mov              r8, rax;                             jmp   .Lx555_60
.Lx555_62:              cmp              esi, 2;                              jne   .Lx555_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx555_61
                        mov              r8, rax;                             jmp   .Lx555_60
.Lx555_63:              cmp              al, 72;                              jne   .Lx555_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx555_61
                        cmp              rax, r8;                             je    .Lx555_61
                        mov              r8, rax;                             jmp   .Lx555_60
.Lx555_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx555_80
                        cmp              al, 104;                             je    .Lx555_80
                        cmp              al, 72;                              jne   .Lx555_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx555_80
                                                                              jmp   .Lx555_74
.Lx555_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx555_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx555_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx555_73
                        lea              r9, [rsp + 512]
.Lx555_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx555_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx555_65
                        cmp              esi, 1;                              jne   .Lx555_66
                        mov              r9, rax;                             jmp   .Lx555_64
.Lx555_66:              cmp              esi, 2;                              jne   .Lx555_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx555_65
                        mov              r9, rax;                             jmp   .Lx555_64
.Lx555_67:              cmp              al, 72;                              jne   .Lx555_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx555_65
                        cmp              rax, r9;                             je    .Lx555_65
                        mov              r9, rax;                             jmp   .Lx555_64
.Lx555_65:              lea              rcx, [rsp + 528]
.Lx555_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx555_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx555_69
                        cmp              esi, 1;                              jne   .Lx555_70
                        mov              rcx, rax;                            jmp   .Lx555_68
.Lx555_70:              cmp              esi, 2;                              jne   .Lx555_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx555_69
                        mov              rcx, rax;                            jmp   .Lx555_68
.Lx555_71:              cmp              al, 72;                              jne   .Lx555_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx555_69
                        cmp              rax, rcx;                            je    .Lx555_69
                        mov              rcx, rax;                            jmp   .Lx555_68
.Lx555_69:              cmp              r9, rcx;                             je    .Lx555_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx555_75
                        cmp              al, 104;                             je    .Lx555_75
                        cmp              al, 72;                              jne   .Lx555_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx555_75
                                                                              jmp   .Lx555_72
.Lx555_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx555_76
                        cmp              al, 104;                             je    .Lx555_76
                        cmp              al, 72;                              jne   .Lx555_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx555_76
                                                                              jmp   .Lx555_72
.Lx555_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx555_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx555_72
                        add              rdi, rsi
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
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx555_77
.Lx555_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx555_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx555_72
                        mov              rdi, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx555_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx555_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx555_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rsp + 512]
.Lx555_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx555_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx555_82
                        cmp              esi, 1;                              jne   .Lx555_83
                        mov              r9, rax;                             jmp   .Lx555_81
.Lx555_83:              cmp              esi, 2;                              jne   .Lx555_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx555_82
                        mov              r9, rax;                             jmp   .Lx555_81
.Lx555_84:              cmp              al, 72;                              jne   .Lx555_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx555_82
                        cmp              rax, r9;                             je    .Lx555_82
                        mov              r9, rax;                             jmp   .Lx555_81
.Lx555_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx555_85
                        cmp              al, 104;                             je    .Lx555_85
                        cmp              al, 72;                              jne   .Lx555_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx555_85
                                                                              jmp   .Lx555_86
.Lx555_85:              mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx555_87
.Lx555_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx555_87:              lea              rcx, [rsp + 528]
.Lx555_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx555_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx555_89
                        cmp              esi, 1;                              jne   .Lx555_90
                        mov              rcx, rax;                            jmp   .Lx555_88
.Lx555_90:              cmp              esi, 2;                              jne   .Lx555_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx555_89
                        mov              rcx, rax;                            jmp   .Lx555_88
.Lx555_91:              cmp              al, 72;                              jne   .Lx555_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx555_89
                        cmp              rax, rcx;                            je    .Lx555_89
                        mov              rcx, rax;                            jmp   .Lx555_88
.Lx555_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx555_92
                        cmp              al, 104;                             je    .Lx555_92
                        cmp              al, 72;                              jne   .Lx555_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx555_92
                                                                              jmp   .Lx555_93
.Lx555_92:              mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx555_94
.Lx555_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx555_94:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx555_77
.Lx555_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx555_77
.Lx555_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx555_77:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n530_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n529_suspend_α
n528_call_builtin_prolog_β:
                        mov              r11, 214;                            jmp   n530_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n529_suspend_α:         mov              r11, 215
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx557_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx557_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n529_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n529_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   member$2F2_γ
n529_suspend_β:         mov              r11, 215;                            jmp   n530_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n530_call_builtin_prolog_α:
                        mov              r11, 216
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n531_var_ref_α
n530_call_builtin_prolog_β:
                        mov              r11, 216;                            jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n531_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n532_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n533_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n533_call_builtin_prolog_α:
                        mov              r11, 219
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
.Lx563_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx563_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx563_41
                        cmp              esi, 1;                              jne   .Lx563_55
                        mov              r8, rax;                             jmp   .Lx563_40
.Lx563_55:              cmp              esi, 2;                              jne   .Lx563_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx563_41
                        mov              r8, rax;                             jmp   .Lx563_40
.Lx563_56:              cmp              al, 72;                              jne   .Lx563_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx563_41
                        cmp              rax, r8;                             je    .Lx563_41
                        mov              r8, rax;                             jmp   .Lx563_40
.Lx563_41:              lea              r9, [rsp + 368]
.Lx563_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx563_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx563_43
                        cmp              esi, 1;                              jne   .Lx563_57
                        mov              r9, rax;                             jmp   .Lx563_42
.Lx563_57:              cmp              esi, 2;                              jne   .Lx563_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx563_43
                        mov              r9, rax;                             jmp   .Lx563_42
.Lx563_58:              cmp              al, 72;                              jne   .Lx563_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx563_43
                        cmp              rax, r9;                             je    .Lx563_43
                        mov              r9, rax;                             jmp   .Lx563_42
.Lx563_43:              cmp              r8, r9;                              je    .Lx563_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx563_44
                        cmp              al, 104;                             je    .Lx563_44
                        cmp              al, 72;                              jne   .Lx563_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx563_44
                                                                              jmp   .Lx563_45
.Lx563_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx563_53
                        cmp              al, 104;                             je    .Lx563_53
                        cmp              al, 72;                              jne   .Lx563_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx563_53
                                                                              jmp   .Lx563_46
.Lx563_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx563_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx563_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx563_51
.Lx563_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx563_47
                        cmp              al, 104;                             je    .Lx563_47
                        cmp              al, 72;                              jne   .Lx563_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx563_47
                                                                              jmp   .Lx563_48
.Lx563_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx563_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx563_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx563_51
.Lx563_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx563_49
                        cmp              dl, 80;                              je    .Lx563_53
                                                                              jmp   .Lx563_52
.Lx563_49:              cmp              dl, 80;                              je    .Lx563_52
                        cmp              cl, 5;                               je    .Lx563_53
                        cmp              dl, 5;                               je    .Lx563_53
                        cmp              cl, 3;                               jne   .Lx563_50
                        cmp              dl, 3;                               jne   .Lx563_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx563_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx563_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx563_51
                                                                              jmp   .Lx563_52
.Lx563_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx563_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx563_53
.Lx563_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx563_54
.Lx563_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx563_54
.Lx563_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx563_54:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n542_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n534_var_ref_α
n533_call_builtin_prolog_β:
                        mov              r11, 219;                            jmp   n542_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n534_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n535_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n535_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n536_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n537_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n537_call_builtin_prolog_α:
                        mov              r11, 223
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        lea              r8, [rsp + 256]
.Lx570_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx570_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx570_61
                        cmp              esi, 1;                              jne   .Lx570_62
                        mov              r8, rax;                             jmp   .Lx570_60
.Lx570_62:              cmp              esi, 2;                              jne   .Lx570_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx570_61
                        mov              r8, rax;                             jmp   .Lx570_60
.Lx570_63:              cmp              al, 72;                              jne   .Lx570_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx570_61
                        cmp              rax, r8;                             je    .Lx570_61
                        mov              r8, rax;                             jmp   .Lx570_60
.Lx570_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx570_80
                        cmp              al, 104;                             je    .Lx570_80
                        cmp              al, 72;                              jne   .Lx570_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx570_80
                                                                              jmp   .Lx570_74
.Lx570_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx570_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx570_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx570_73
                        lea              r9, [rsp + 272]
.Lx570_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx570_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx570_65
                        cmp              esi, 1;                              jne   .Lx570_66
                        mov              r9, rax;                             jmp   .Lx570_64
.Lx570_66:              cmp              esi, 2;                              jne   .Lx570_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx570_65
                        mov              r9, rax;                             jmp   .Lx570_64
.Lx570_67:              cmp              al, 72;                              jne   .Lx570_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx570_65
                        cmp              rax, r9;                             je    .Lx570_65
                        mov              r9, rax;                             jmp   .Lx570_64
.Lx570_65:              lea              rcx, [rsp + 288]
.Lx570_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx570_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx570_69
                        cmp              esi, 1;                              jne   .Lx570_70
                        mov              rcx, rax;                            jmp   .Lx570_68
.Lx570_70:              cmp              esi, 2;                              jne   .Lx570_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx570_69
                        mov              rcx, rax;                            jmp   .Lx570_68
.Lx570_71:              cmp              al, 72;                              jne   .Lx570_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx570_69
                        cmp              rax, rcx;                            je    .Lx570_69
                        mov              rcx, rax;                            jmp   .Lx570_68
.Lx570_69:              cmp              r9, rcx;                             je    .Lx570_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx570_75
                        cmp              al, 104;                             je    .Lx570_75
                        cmp              al, 72;                              jne   .Lx570_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx570_75
                                                                              jmp   .Lx570_72
.Lx570_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx570_76
                        cmp              al, 104;                             je    .Lx570_76
                        cmp              al, 72;                              jne   .Lx570_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx570_76
                                                                              jmp   .Lx570_72
.Lx570_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx570_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx570_72
                        add              rdi, rsi
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
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx570_77
.Lx570_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx570_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx570_72
                        mov              rdi, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx570_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx570_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx570_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rsp + 272]
.Lx570_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx570_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx570_82
                        cmp              esi, 1;                              jne   .Lx570_83
                        mov              r9, rax;                             jmp   .Lx570_81
.Lx570_83:              cmp              esi, 2;                              jne   .Lx570_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx570_82
                        mov              r9, rax;                             jmp   .Lx570_81
.Lx570_84:              cmp              al, 72;                              jne   .Lx570_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx570_82
                        cmp              rax, r9;                             je    .Lx570_82
                        mov              r9, rax;                             jmp   .Lx570_81
.Lx570_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx570_85
                        cmp              al, 104;                             je    .Lx570_85
                        cmp              al, 72;                              jne   .Lx570_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx570_85
                                                                              jmp   .Lx570_86
.Lx570_85:              mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx570_87
.Lx570_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx570_87:              lea              rcx, [rsp + 288]
.Lx570_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx570_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx570_89
                        cmp              esi, 1;                              jne   .Lx570_90
                        mov              rcx, rax;                            jmp   .Lx570_88
.Lx570_90:              cmp              esi, 2;                              jne   .Lx570_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx570_89
                        mov              rcx, rax;                            jmp   .Lx570_88
.Lx570_91:              cmp              al, 72;                              jne   .Lx570_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx570_89
                        cmp              rax, rcx;                            je    .Lx570_89
                        mov              rcx, rax;                            jmp   .Lx570_88
.Lx570_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx570_92
                        cmp              al, 104;                             je    .Lx570_92
                        cmp              al, 72;                              jne   .Lx570_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx570_92
                                                                              jmp   .Lx570_93
.Lx570_92:              mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx570_94
.Lx570_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx570_94:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx570_77
.Lx570_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx570_77
.Lx570_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx570_77:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n542_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n538_var_ref_α
n537_call_builtin_prolog_β:
                        mov              r11, 223;                            jmp   n542_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n538_var_ref_α:         mov              r11, 224
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n539_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n540_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n540_call_proc_staged_α:
                        mov              r11, 226
                        mov              qword ptr [rsp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx576_20
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx576_21
.Lx576_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx576_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx576_22
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx576_23
.Lx576_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx576_23:              lea              rax, [rip + .Lx576_7]
                        push             rax
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx576_1
                        lea              rcx, [rip + .Lx576_3]
                        lea              rdx, [rip + .Lx576_4];               jmp   rax
.Lx576_3:               mov              qword ptr [rsp + 168], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx576_5
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx576_2
.Lx576_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx576_2
.Lx576_4:               mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx576_6
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx576_2
.Lx576_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx576_2
.Lx576_1:               call             rt_faildescr@PLT
.Lx576_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx576_29
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
.Lx576_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n542_call_builtin_prolog_α
                                                                              jmp   n541_suspend_α
n540_call_proc_staged_β:
                        mov              r11, 226
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 160], 0
                        lea              rdi, [rsp + 176]
                        lea              rsi, [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n542_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 6
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n542_call_builtin_prolog_α
                        lea              r8, [rip + .Lx576_7]
                        push             r8
                        lea              rcx, [rip + .Lx576_3]
                        lea              rdx, [rip + .Lx576_4];               jmp   rax
.Lx576_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n542_call_builtin_prolog_α
                                                                              jmp   n541_suspend_α
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n541_suspend_α:         mov              r11, 227
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx578_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx578_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n541_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n541_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   member$2F2_γ
n541_suspend_β:         mov              r11, 227;                            jmp   n540_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n542_call_builtin_prolog_α:
                        mov              r11, 228
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
                        cmp              al, 104;                             je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   member$2F2_ω
n542_call_builtin_prolog_β:
                        mov              r11, 228;                            jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_β:
                                                                              jmp   n529_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx579_50
                        mov              qword ptr [rsp + 656], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx579_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__moreConservative$2F2:
                        sub              rsp, 1392
                        mov              qword ptr [rsp + 1368], rcx
                        mov              qword ptr [rsp + 1376], rdx
                        mov              qword ptr [rsp + 1384], rsp
                        mov              rdi, rsp
                        mov              esi, 1328
                        mov              edx, 1360
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
moreConservative$2F2_α_body:
                        lea              rax, [rip + n587_suspend_β]
                        mov              qword ptr [rsp + 1328], rax
#-----------------------------------------------------------------------------------------------------------------------
n580_call_builtin_prolog_α:
                        mov              r11, 229
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx629_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx629_101
.Lx629_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx629_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx629_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx629_101
.Lx629_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx629_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    moreConservative$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n581_var_ref_α
n580_call_builtin_prolog_β:
                        mov              r11, 229;                            jmp   moreConservative$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n582_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_string_α:      mov              r11, 231
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 5
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n583_call_builtin_prolog_α
.Lx632_0:               .quad            .Lx632_0_s
.Lx632_0_s:             .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n583_call_builtin_prolog_α:
                        mov              r11, 232
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        lea              rdi, [rsp + 1264]
                        mov              rsi, qword ptr [rip + .Lx633_2];     jmp   .Lx633_3
.Lx633_2:               .quad            .Lx633_2_s
.Lx633_2_s:             .string          "brown"
.Lx633_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n588_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n584_var_ref_α
n583_call_builtin_prolog_β:
                        mov              r11, 232;                            jmp   n588_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n584_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n585_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n585_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 5
                        mov              rax, qword ptr [rip + .Lx636_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n586_call_builtin_prolog_α
.Lx636_0:               .quad            .Lx636_0_s
.Lx636_0_s:             .string          "jones"
#-----------------------------------------------------------------------------------------------------------------------
n586_call_builtin_prolog_α:
                        mov              r11, 235
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        lea              rdi, [rsp + 1184]
                        mov              rsi, qword ptr [rip + .Lx637_2];     jmp   .Lx637_3
.Lx637_2:               .quad            .Lx637_2_s
.Lx637_2_s:             .string          "jones"
.Lx637_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n588_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n587_suspend_α
n586_call_builtin_prolog_β:
                        mov              r11, 235;                            jmp   n588_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n587_suspend_α:         mov              r11, 236
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx639_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1328];         jmp   rax
.Lx639_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n587_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n587_suspend_β]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   moreConservative$2F2_γ
n587_suspend_β:         mov              r11, 236;                            jmp   n588_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n588_call_builtin_prolog_α:
                        mov              r11, 237
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1144], rax
                        lea              rdi, [rsp + 1136]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    moreConservative$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n589_var_ref_α
n588_call_builtin_prolog_β:
                        mov              r11, 237;                            jmp   moreConservative$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n590_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 5
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n591_call_builtin_prolog_α
.Lx643_0:               .quad            .Lx643_0_s
.Lx643_0_s:             .string          "smith"
#-----------------------------------------------------------------------------------------------------------------------
n591_call_builtin_prolog_α:
                        mov              r11, 240
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        mov              rsi, qword ptr [rip + .Lx644_2];     jmp   .Lx644_3
.Lx644_2:               .quad            .Lx644_2_s
.Lx644_2_s:             .string          "smith"
.Lx644_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n596_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n592_var_ref_α
n591_call_builtin_prolog_β:
                        mov              r11, 240;                            jmp   n596_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n592_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n593_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_string_α:      mov              r11, 242
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 5
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n594_call_builtin_prolog_α
.Lx647_0:               .quad            .Lx647_0_s
.Lx647_0_s:             .string          "jones"
#-----------------------------------------------------------------------------------------------------------------------
n594_call_builtin_prolog_α:
                        mov              r11, 243
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        lea              rdi, [rsp + 976]
                        mov              rsi, qword ptr [rip + .Lx648_2];     jmp   .Lx648_3
.Lx648_2:               .quad            .Lx648_2_s
.Lx648_2_s:             .string          "jones"
.Lx648_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n596_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n595_suspend_α
n594_call_builtin_prolog_β:
                        mov              r11, 243;                            jmp   n596_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n595_suspend_α:         mov              r11, 244
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx650_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1328];         jmp   rax
.Lx650_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n595_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n595_suspend_β]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   moreConservative$2F2_γ
n595_suspend_β:         mov              r11, 244;                            jmp   n596_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n596_call_builtin_prolog_α:
                        mov              r11, 245
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    moreConservative$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n597_var_ref_α
n596_call_builtin_prolog_β:
                        mov              r11, 245;                            jmp   moreConservative$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n598_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 5
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n599_call_builtin_prolog_α
.Lx654_0:               .quad            .Lx654_0_s
.Lx654_0_s:             .string          "smith"
#-----------------------------------------------------------------------------------------------------------------------
n599_call_builtin_prolog_α:
                        mov              r11, 248
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              rsi, qword ptr [rip + .Lx655_2];     jmp   .Lx655_3
.Lx655_2:               .quad            .Lx655_2_s
.Lx655_2_s:             .string          "smith"
.Lx655_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n604_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n600_var_ref_α
n599_call_builtin_prolog_β:
                        mov              r11, 248;                            jmp   n604_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:         mov              r11, 249
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n601_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n601_lit_string_α:      mov              r11, 250
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 5
                        mov              rax, qword ptr [rip + .Lx658_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n602_call_builtin_prolog_α
.Lx658_0:               .quad            .Lx658_0_s
.Lx658_0_s:             .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n602_call_builtin_prolog_α:
                        mov              r11, 251
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              rsi, qword ptr [rip + .Lx659_2];     jmp   .Lx659_3
.Lx659_2:               .quad            .Lx659_2_s
.Lx659_2_s:             .string          "brown"
.Lx659_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n604_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n603_suspend_α
n602_call_builtin_prolog_β:
                        mov              r11, 251;                            jmp   n604_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n603_suspend_α:         mov              r11, 252
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx661_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1328];         jmp   rax
.Lx661_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n603_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n603_suspend_β]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   moreConservative$2F2_γ
n603_suspend_β:         mov              r11, 252;                            jmp   n604_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n604_call_builtin_prolog_α:
                        mov              r11, 253
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    moreConservative$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n605_var_ref_α
n604_call_builtin_prolog_β:
                        mov              r11, 253;                            jmp   moreConservative$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:         mov              r11, 254
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n606_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_string_α:      mov              r11, 255
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 5
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n607_call_builtin_prolog_α
.Lx665_0:               .quad            .Lx665_0_s
.Lx665_0_s:             .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n607_call_builtin_prolog_α:
                        mov              r11, 256
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              rsi, qword ptr [rip + .Lx666_2];     jmp   .Lx666_3
.Lx666_2:               .quad            .Lx666_2_s
.Lx666_2_s:             .string          "clark"
.Lx666_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n612_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n608_var_ref_α
n607_call_builtin_prolog_β:
                        mov              r11, 256;                            jmp   n612_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n609_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_string_α:      mov              r11, 258
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 5
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n610_call_builtin_prolog_α
.Lx669_0:               .quad            .Lx669_0_s
.Lx669_0_s:             .string          "jones"
#-----------------------------------------------------------------------------------------------------------------------
n610_call_builtin_prolog_α:
                        mov              r11, 259
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              rsi, qword ptr [rip + .Lx670_2];     jmp   .Lx670_3
.Lx670_2:               .quad            .Lx670_2_s
.Lx670_2_s:             .string          "jones"
.Lx670_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n612_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n611_suspend_α
n610_call_builtin_prolog_β:
                        mov              r11, 259;                            jmp   n612_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n611_suspend_α:         mov              r11, 260
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx672_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1328];         jmp   rax
.Lx672_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n611_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n611_suspend_β]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   moreConservative$2F2_γ
n611_suspend_β:         mov              r11, 260;                            jmp   n612_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n612_call_builtin_prolog_α:
                        mov              r11, 261
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    moreConservative$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n613_var_ref_α
n612_call_builtin_prolog_β:
                        mov              r11, 261;                            jmp   moreConservative$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n613_var_ref_α:         mov              r11, 262
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n614_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n614_lit_string_α:      mov              r11, 263
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 5
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n615_call_builtin_prolog_α
.Lx676_0:               .quad            .Lx676_0_s
.Lx676_0_s:             .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n615_call_builtin_prolog_α:
                        mov              r11, 264
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              rsi, qword ptr [rip + .Lx677_2];     jmp   .Lx677_3
.Lx677_2:               .quad            .Lx677_2_s
.Lx677_2_s:             .string          "clark"
.Lx677_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n620_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n616_var_ref_α
n615_call_builtin_prolog_β:
                        mov              r11, 264;                            jmp   n620_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:         mov              r11, 265
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n617_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n617_lit_string_α:      mov              r11, 266
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 5
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n618_call_builtin_prolog_α
.Lx680_0:               .quad            .Lx680_0_s
.Lx680_0_s:             .string          "brown"
#-----------------------------------------------------------------------------------------------------------------------
n618_call_builtin_prolog_α:
                        mov              r11, 267
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              rsi, qword ptr [rip + .Lx681_2];     jmp   .Lx681_3
.Lx681_2:               .quad            .Lx681_2_s
.Lx681_2_s:             .string          "brown"
.Lx681_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n620_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n619_suspend_α
n618_call_builtin_prolog_β:
                        mov              r11, 267;                            jmp   n620_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n619_suspend_α:         mov              r11, 268
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx683_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1328];         jmp   rax
.Lx683_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n619_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n619_suspend_β]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   moreConservative$2F2_γ
n619_suspend_β:         mov              r11, 268;                            jmp   n620_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n620_call_builtin_prolog_α:
                        mov              r11, 269
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    moreConservative$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n621_var_ref_α
n620_call_builtin_prolog_β:
                        mov              r11, 269;                            jmp   moreConservative$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n621_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n622_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_string_α:      mov              r11, 271
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 5
                        mov              rax, qword ptr [rip + .Lx687_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n623_call_builtin_prolog_α
.Lx687_0:               .quad            .Lx687_0_s
.Lx687_0_s:             .string          "clark"
#-----------------------------------------------------------------------------------------------------------------------
n623_call_builtin_prolog_α:
                        mov              r11, 272
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              rsi, qword ptr [rip + .Lx688_2];     jmp   .Lx688_3
.Lx688_2:               .quad            .Lx688_2_s
.Lx688_2_s:             .string          "clark"
.Lx688_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n628_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n624_var_ref_α
n623_call_builtin_prolog_β:
                        mov              r11, 272;                            jmp   n628_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n625_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n625_lit_string_α:      mov              r11, 274
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 5
                        mov              rax, qword ptr [rip + .Lx691_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n626_call_builtin_prolog_α
.Lx691_0:               .quad            .Lx691_0_s
.Lx691_0_s:             .string          "smith"
#-----------------------------------------------------------------------------------------------------------------------
n626_call_builtin_prolog_α:
                        mov              r11, 275
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              rsi, qword ptr [rip + .Lx692_2];     jmp   .Lx692_3
.Lx692_2:               .quad            .Lx692_2_s
.Lx692_2_s:             .string          "smith"
.Lx692_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n628_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n627_suspend_α
n626_call_builtin_prolog_β:
                        mov              r11, 275;                            jmp   n628_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n627_suspend_α:         mov              r11, 276
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx694_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1328];         jmp   rax
.Lx694_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n627_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n627_suspend_β]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   moreConservative$2F2_γ
n627_suspend_β:         mov              r11, 276;                            jmp   n628_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n628_call_builtin_prolog_α:
                        mov              r11, 277
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
                        cmp              al, 104;                             je    moreConservative$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   moreConservative$2F2_ω
n628_call_builtin_prolog_β:
                        mov              r11, 277;                            jmp   moreConservative$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
moreConservative$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
moreConservative$2F2_β:
                                                                              jmp   n587_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
moreConservative$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx695_50
                        mov              qword ptr [rsp + 1328], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1328];         jmp   rax
.Lx695_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1368]
                        add              rsp, 1392;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
moreConservative$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1376]
                        add              rsp, 1392;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__bankerBeatsArch$2F2:
                        sub              rsp, 752
                        mov              qword ptr [rsp + 728], rcx
                        mov              qword ptr [rsp + 736], rdx
                        mov              qword ptr [rsp + 744], rsp
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 720
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
bankerBeatsArch$2F2_α_body:
                        lea              rax, [rip + n717_suspend_β]
                        mov              qword ptr [rsp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n696_call_builtin_prolog_α:
                        mov              r11, 278
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx719_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx719_101
.Lx719_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx719_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx719_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx719_101
.Lx719_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx719_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    bankerBeatsArch$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n697_var_ref_α
n696_call_builtin_prolog_β:
                        mov              r11, 278;                            jmp   bankerBeatsArch$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n697_var_ref_α:         mov              r11, 279
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n698_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n698_lit_string_α:      mov              r11, 280
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 6
                        mov              rax, qword ptr [rip + .Lx722_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n699_call_builtin_prolog_α
.Lx722_0:               .quad            .Lx722_0_s
.Lx722_0_s:             .string          "banker"
#-----------------------------------------------------------------------------------------------------------------------
n699_call_builtin_prolog_α:
                        mov              r11, 281
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        mov              rsi, qword ptr [rip + .Lx723_2];     jmp   .Lx723_3
.Lx723_2:               .quad            .Lx723_2_s
.Lx723_2_s:             .string          "banker"
.Lx723_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n704_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n700_var_ref_α
n699_call_builtin_prolog_β:
                        mov              r11, 281;                            jmp   n704_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n700_var_ref_α:         mov              r11, 282
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n701_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n701_lit_string_α:      mov              r11, 283
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 9
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n702_call_builtin_prolog_α
.Lx726_0:               .quad            .Lx726_0_s
.Lx726_0_s:             .string          "architect"
#-----------------------------------------------------------------------------------------------------------------------
n702_call_builtin_prolog_α:
                        mov              r11, 284
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              rsi, qword ptr [rip + .Lx727_2];     jmp   .Lx727_3
.Lx727_2:               .quad            .Lx727_2_s
.Lx727_2_s:             .string          "architect"
.Lx727_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n704_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n703_cut_α
n702_call_builtin_prolog_β:
                        mov              r11, 284;                            jmp   n704_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n703_cut_α:             mov              r11, 285;                            jmp   n718_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n704_call_builtin_prolog_α:
                        mov              r11, 286
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    bankerBeatsArch$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n705_var_ref_α
n704_call_builtin_prolog_β:
                        mov              r11, 286;                            jmp   bankerBeatsArch$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n705_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n706_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n706_var_ref_α:         mov              r11, 288
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n707_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n707_call_builtin_prolog_α:
                        mov              r11, 289
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
.Lx734_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx734_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx734_41
                        cmp              esi, 1;                              jne   .Lx734_55
                        mov              r8, rax;                             jmp   .Lx734_40
.Lx734_55:              cmp              esi, 2;                              jne   .Lx734_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx734_41
                        mov              r8, rax;                             jmp   .Lx734_40
.Lx734_56:              cmp              al, 72;                              jne   .Lx734_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx734_41
                        cmp              rax, r8;                             je    .Lx734_41
                        mov              r8, rax;                             jmp   .Lx734_40
.Lx734_41:              lea              r9, [rsp + 400]
.Lx734_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx734_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx734_43
                        cmp              esi, 1;                              jne   .Lx734_57
                        mov              r9, rax;                             jmp   .Lx734_42
.Lx734_57:              cmp              esi, 2;                              jne   .Lx734_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx734_43
                        mov              r9, rax;                             jmp   .Lx734_42
.Lx734_58:              cmp              al, 72;                              jne   .Lx734_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx734_43
                        cmp              rax, r9;                             je    .Lx734_43
                        mov              r9, rax;                             jmp   .Lx734_42
.Lx734_43:              cmp              r8, r9;                              je    .Lx734_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx734_44
                        cmp              al, 104;                             je    .Lx734_44
                        cmp              al, 72;                              jne   .Lx734_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx734_44
                                                                              jmp   .Lx734_45
.Lx734_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx734_53
                        cmp              al, 104;                             je    .Lx734_53
                        cmp              al, 72;                              jne   .Lx734_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx734_53
                                                                              jmp   .Lx734_46
.Lx734_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx734_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx734_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx734_51
.Lx734_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx734_47
                        cmp              al, 104;                             je    .Lx734_47
                        cmp              al, 72;                              jne   .Lx734_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx734_47
                                                                              jmp   .Lx734_48
.Lx734_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx734_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx734_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx734_51
.Lx734_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx734_49
                        cmp              dl, 80;                              je    .Lx734_53
                                                                              jmp   .Lx734_52
.Lx734_49:              cmp              dl, 80;                              je    .Lx734_52
                        cmp              cl, 5;                               je    .Lx734_53
                        cmp              dl, 5;                               je    .Lx734_53
                        cmp              cl, 3;                               jne   .Lx734_50
                        cmp              dl, 3;                               jne   .Lx734_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx734_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx734_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx734_51
                                                                              jmp   .Lx734_52
.Lx734_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx734_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx734_53
.Lx734_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx734_54
.Lx734_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx734_54
.Lx734_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx734_54:              mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n718_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n708_var_ref_α
n707_call_builtin_prolog_β:
                        mov              r11, 289;                            jmp   n718_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n708_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n709_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n709_var_ref_α:         mov              r11, 291
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n710_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n710_call_builtin_prolog_α:
                        mov              r11, 292
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
.Lx739_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx739_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx739_41
                        cmp              esi, 1;                              jne   .Lx739_55
                        mov              r8, rax;                             jmp   .Lx739_40
.Lx739_55:              cmp              esi, 2;                              jne   .Lx739_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx739_41
                        mov              r8, rax;                             jmp   .Lx739_40
.Lx739_56:              cmp              al, 72;                              jne   .Lx739_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx739_41
                        cmp              rax, r8;                             je    .Lx739_41
                        mov              r8, rax;                             jmp   .Lx739_40
.Lx739_41:              lea              r9, [rsp + 320]
.Lx739_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx739_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx739_43
                        cmp              esi, 1;                              jne   .Lx739_57
                        mov              r9, rax;                             jmp   .Lx739_42
.Lx739_57:              cmp              esi, 2;                              jne   .Lx739_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx739_43
                        mov              r9, rax;                             jmp   .Lx739_42
.Lx739_58:              cmp              al, 72;                              jne   .Lx739_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx739_43
                        cmp              rax, r9;                             je    .Lx739_43
                        mov              r9, rax;                             jmp   .Lx739_42
.Lx739_43:              cmp              r8, r9;                              je    .Lx739_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx739_44
                        cmp              al, 104;                             je    .Lx739_44
                        cmp              al, 72;                              jne   .Lx739_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx739_44
                                                                              jmp   .Lx739_45
.Lx739_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx739_53
                        cmp              al, 104;                             je    .Lx739_53
                        cmp              al, 72;                              jne   .Lx739_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx739_53
                                                                              jmp   .Lx739_46
.Lx739_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx739_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx739_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx739_51
.Lx739_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx739_47
                        cmp              al, 104;                             je    .Lx739_47
                        cmp              al, 72;                              jne   .Lx739_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx739_47
                                                                              jmp   .Lx739_48
.Lx739_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx739_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx739_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx739_51
.Lx739_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx739_49
                        cmp              dl, 80;                              je    .Lx739_53
                                                                              jmp   .Lx739_52
.Lx739_49:              cmp              dl, 80;                              je    .Lx739_52
                        cmp              cl, 5;                               je    .Lx739_53
                        cmp              dl, 5;                               je    .Lx739_53
                        cmp              cl, 3;                               jne   .Lx739_50
                        cmp              dl, 3;                               jne   .Lx739_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx739_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx739_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx739_51
                                                                              jmp   .Lx739_52
.Lx739_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx739_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx739_53
.Lx739_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx739_54
.Lx739_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx739_54
.Lx739_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx739_54:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n718_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n711_var_ref_α
n710_call_builtin_prolog_β:
                        mov              r11, 292;                            jmp   n718_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n711_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n712_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n712_lit_string_α:      mov              r11, 294
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 6
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n713_call_builtin_prolog_α
.Lx742_0:               .quad            .Lx742_0_s
.Lx742_0_s:             .string          "banker"
#-----------------------------------------------------------------------------------------------------------------------
n713_call_builtin_prolog_α:
                        mov              r11, 295
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              rsi, qword ptr [rip + .Lx743_2];     jmp   .Lx743_3
.Lx743_2:               .quad            .Lx743_2_s
.Lx743_2_s:             .string          "banker"
.Lx743_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n718_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n714_var_ref_α
n713_call_builtin_prolog_β:
                        mov              r11, 295;                            jmp   n718_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n714_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n715_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_string_α:      mov              r11, 297
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 6
                        mov              rax, qword ptr [rip + .Lx746_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n716_call_builtin_prolog_α
.Lx746_0:               .quad            .Lx746_0_s
.Lx746_0_s:             .string          "banker"
#-----------------------------------------------------------------------------------------------------------------------
n716_call_builtin_prolog_α:
                        mov              r11, 298
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              rsi, qword ptr [rip + .Lx747_2];     jmp   .Lx747_3
.Lx747_2:               .quad            .Lx747_2_s
.Lx747_2_s:             .string          "banker"
.Lx747_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n717_suspend_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n718_call_builtin_prolog_α
n716_call_builtin_prolog_β:
                        mov              r11, 298;                            jmp   n717_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n717_suspend_α:         mov              r11, 299
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx749_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx749_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n717_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n717_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   bankerBeatsArch$2F2_γ
n717_suspend_β:         mov              r11, 299;                            jmp   n718_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n718_call_builtin_prolog_α:
                        mov              r11, 300
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
                        cmp              al, 104;                             je    bankerBeatsArch$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   bankerBeatsArch$2F2_ω
n718_call_builtin_prolog_β:
                        mov              r11, 300;                            jmp   bankerBeatsArch$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
bankerBeatsArch$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
bankerBeatsArch$2F2_β:
                                                                              jmp   n717_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
bankerBeatsArch$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx750_50
                        mov              qword ptr [rsp + 656], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx750_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 728]
                        add              rsp, 752;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
bankerBeatsArch$2F2_ω:
                        mov              rcx, qword ptr [rsp + 736]
                        add              rsp, 752;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__display$2F4:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1016], rcx
                        mov              qword ptr [rsp + 1024], rdx
                        mov              qword ptr [rsp + 1032], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1008
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
display$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n751_call_builtin_prolog_α:
                        mov              r11, 301
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx785_102
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120];          jmp   .Lx785_101
.Lx785_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx785_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx785_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx785_101
.Lx785_100:             lea              rdi, [rsp + 128]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx785_101:             mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    display$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n752_var_ref_α
n751_call_builtin_prolog_β:
                        mov              r11, 301;                            jmp   display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n752_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n753_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n753_var_ref_α:         mov              r11, 303
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 976]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n754_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n754_call_builtin_prolog_α:
                        mov              r11, 304
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        lea              rdi, [rsp + 864]
                        lea              r8, [rsp + 864]
.Lx790_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx790_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx790_41
                        cmp              esi, 1;                              jne   .Lx790_55
                        mov              r8, rax;                             jmp   .Lx790_40
.Lx790_55:              cmp              esi, 2;                              jne   .Lx790_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx790_41
                        mov              r8, rax;                             jmp   .Lx790_40
.Lx790_56:              cmp              al, 72;                              jne   .Lx790_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx790_41
                        cmp              rax, r8;                             je    .Lx790_41
                        mov              r8, rax;                             jmp   .Lx790_40
.Lx790_41:              lea              r9, [rsp + 880]
.Lx790_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx790_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx790_43
                        cmp              esi, 1;                              jne   .Lx790_57
                        mov              r9, rax;                             jmp   .Lx790_42
.Lx790_57:              cmp              esi, 2;                              jne   .Lx790_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx790_43
                        mov              r9, rax;                             jmp   .Lx790_42
.Lx790_58:              cmp              al, 72;                              jne   .Lx790_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx790_43
                        cmp              rax, r9;                             je    .Lx790_43
                        mov              r9, rax;                             jmp   .Lx790_42
.Lx790_43:              cmp              r8, r9;                              je    .Lx790_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx790_44
                        cmp              al, 104;                             je    .Lx790_44
                        cmp              al, 72;                              jne   .Lx790_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx790_44
                                                                              jmp   .Lx790_45
.Lx790_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx790_53
                        cmp              al, 104;                             je    .Lx790_53
                        cmp              al, 72;                              jne   .Lx790_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx790_53
                                                                              jmp   .Lx790_46
.Lx790_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx790_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx790_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx790_51
.Lx790_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx790_47
                        cmp              al, 104;                             je    .Lx790_47
                        cmp              al, 72;                              jne   .Lx790_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx790_47
                                                                              jmp   .Lx790_48
.Lx790_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx790_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx790_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx790_51
.Lx790_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx790_49
                        cmp              dl, 80;                              je    .Lx790_53
                                                                              jmp   .Lx790_52
.Lx790_49:              cmp              dl, 80;                              je    .Lx790_52
                        cmp              cl, 5;                               je    .Lx790_53
                        cmp              dl, 5;                               je    .Lx790_53
                        cmp              cl, 3;                               jne   .Lx790_50
                        cmp              dl, 3;                               jne   .Lx790_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx790_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx790_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx790_51
                                                                              jmp   .Lx790_52
.Lx790_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx790_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx790_53
.Lx790_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx790_54
.Lx790_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx790_54
.Lx790_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx790_54:              mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n755_var_ref_α
n754_call_builtin_prolog_β:
                        mov              r11, 304;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n755_var_ref_α:         mov              r11, 305
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n756_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n756_var_ref_α:         mov              r11, 306
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 960]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n757_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n757_call_builtin_prolog_α:
                        mov              r11, 307
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        lea              r8, [rsp + 784]
.Lx795_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx795_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx795_41
                        cmp              esi, 1;                              jne   .Lx795_55
                        mov              r8, rax;                             jmp   .Lx795_40
.Lx795_55:              cmp              esi, 2;                              jne   .Lx795_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx795_41
                        mov              r8, rax;                             jmp   .Lx795_40
.Lx795_56:              cmp              al, 72;                              jne   .Lx795_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx795_41
                        cmp              rax, r8;                             je    .Lx795_41
                        mov              r8, rax;                             jmp   .Lx795_40
.Lx795_41:              lea              r9, [rsp + 800]
.Lx795_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx795_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx795_43
                        cmp              esi, 1;                              jne   .Lx795_57
                        mov              r9, rax;                             jmp   .Lx795_42
.Lx795_57:              cmp              esi, 2;                              jne   .Lx795_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx795_43
                        mov              r9, rax;                             jmp   .Lx795_42
.Lx795_58:              cmp              al, 72;                              jne   .Lx795_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx795_43
                        cmp              rax, r9;                             je    .Lx795_43
                        mov              r9, rax;                             jmp   .Lx795_42
.Lx795_43:              cmp              r8, r9;                              je    .Lx795_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx795_44
                        cmp              al, 104;                             je    .Lx795_44
                        cmp              al, 72;                              jne   .Lx795_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx795_44
                                                                              jmp   .Lx795_45
.Lx795_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx795_53
                        cmp              al, 104;                             je    .Lx795_53
                        cmp              al, 72;                              jne   .Lx795_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx795_53
                                                                              jmp   .Lx795_46
.Lx795_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx795_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx795_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx795_51
.Lx795_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx795_47
                        cmp              al, 104;                             je    .Lx795_47
                        cmp              al, 72;                              jne   .Lx795_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx795_47
                                                                              jmp   .Lx795_48
.Lx795_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx795_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx795_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx795_51
.Lx795_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx795_49
                        cmp              dl, 80;                              je    .Lx795_53
                                                                              jmp   .Lx795_52
.Lx795_49:              cmp              dl, 80;                              je    .Lx795_52
                        cmp              cl, 5;                               je    .Lx795_53
                        cmp              dl, 5;                               je    .Lx795_53
                        cmp              cl, 3;                               jne   .Lx795_50
                        cmp              dl, 3;                               jne   .Lx795_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx795_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx795_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx795_51
                                                                              jmp   .Lx795_52
.Lx795_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx795_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx795_53
.Lx795_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx795_54
.Lx795_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx795_54
.Lx795_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx795_54:              mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n758_var_ref_α
n757_call_builtin_prolog_β:
                        mov              r11, 307;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n758_var_ref_α:         mov              r11, 308
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n759_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n759_var_ref_α:         mov              r11, 309
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 944]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n760_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n760_call_builtin_prolog_α:
                        mov              r11, 310
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
.Lx800_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx800_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx800_41
                        cmp              esi, 1;                              jne   .Lx800_55
                        mov              r8, rax;                             jmp   .Lx800_40
.Lx800_55:              cmp              esi, 2;                              jne   .Lx800_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx800_41
                        mov              r8, rax;                             jmp   .Lx800_40
.Lx800_56:              cmp              al, 72;                              jne   .Lx800_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx800_41
                        cmp              rax, r8;                             je    .Lx800_41
                        mov              r8, rax;                             jmp   .Lx800_40
.Lx800_41:              lea              r9, [rsp + 720]
.Lx800_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx800_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx800_43
                        cmp              esi, 1;                              jne   .Lx800_57
                        mov              r9, rax;                             jmp   .Lx800_42
.Lx800_57:              cmp              esi, 2;                              jne   .Lx800_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx800_43
                        mov              r9, rax;                             jmp   .Lx800_42
.Lx800_58:              cmp              al, 72;                              jne   .Lx800_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx800_43
                        cmp              rax, r9;                             je    .Lx800_43
                        mov              r9, rax;                             jmp   .Lx800_42
.Lx800_43:              cmp              r8, r9;                              je    .Lx800_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx800_44
                        cmp              al, 104;                             je    .Lx800_44
                        cmp              al, 72;                              jne   .Lx800_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx800_44
                                                                              jmp   .Lx800_45
.Lx800_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx800_53
                        cmp              al, 104;                             je    .Lx800_53
                        cmp              al, 72;                              jne   .Lx800_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx800_53
                                                                              jmp   .Lx800_46
.Lx800_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx800_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx800_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx800_51
.Lx800_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx800_47
                        cmp              al, 104;                             je    .Lx800_47
                        cmp              al, 72;                              jne   .Lx800_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx800_47
                                                                              jmp   .Lx800_48
.Lx800_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx800_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx800_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx800_51
.Lx800_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx800_49
                        cmp              dl, 80;                              je    .Lx800_53
                                                                              jmp   .Lx800_52
.Lx800_49:              cmp              dl, 80;                              je    .Lx800_52
                        cmp              cl, 5;                               je    .Lx800_53
                        cmp              dl, 5;                               je    .Lx800_53
                        cmp              cl, 3;                               jne   .Lx800_50
                        cmp              dl, 3;                               jne   .Lx800_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx800_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx800_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx800_51
                                                                              jmp   .Lx800_52
.Lx800_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx800_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx800_53
.Lx800_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx800_54
.Lx800_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx800_54
.Lx800_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx800_54:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n761_var_ref_α
n760_call_builtin_prolog_β:
                        mov              r11, 310;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n761_var_ref_α:         mov              r11, 311
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n762_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n762_var_ref_α:         mov              r11, 312
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 928]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n763_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n763_call_builtin_prolog_α:
                        mov              r11, 313
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        lea              r8, [rsp + 624]
.Lx805_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx805_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx805_41
                        cmp              esi, 1;                              jne   .Lx805_55
                        mov              r8, rax;                             jmp   .Lx805_40
.Lx805_55:              cmp              esi, 2;                              jne   .Lx805_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx805_41
                        mov              r8, rax;                             jmp   .Lx805_40
.Lx805_56:              cmp              al, 72;                              jne   .Lx805_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx805_41
                        cmp              rax, r8;                             je    .Lx805_41
                        mov              r8, rax;                             jmp   .Lx805_40
.Lx805_41:              lea              r9, [rsp + 640]
.Lx805_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx805_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx805_43
                        cmp              esi, 1;                              jne   .Lx805_57
                        mov              r9, rax;                             jmp   .Lx805_42
.Lx805_57:              cmp              esi, 2;                              jne   .Lx805_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx805_43
                        mov              r9, rax;                             jmp   .Lx805_42
.Lx805_58:              cmp              al, 72;                              jne   .Lx805_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx805_43
                        cmp              rax, r9;                             je    .Lx805_43
                        mov              r9, rax;                             jmp   .Lx805_42
.Lx805_43:              cmp              r8, r9;                              je    .Lx805_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx805_44
                        cmp              al, 104;                             je    .Lx805_44
                        cmp              al, 72;                              jne   .Lx805_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx805_44
                                                                              jmp   .Lx805_45
.Lx805_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx805_53
                        cmp              al, 104;                             je    .Lx805_53
                        cmp              al, 72;                              jne   .Lx805_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx805_53
                                                                              jmp   .Lx805_46
.Lx805_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx805_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx805_53
                        add              rdi, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx805_51
.Lx805_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx805_47
                        cmp              al, 104;                             je    .Lx805_47
                        cmp              al, 72;                              jne   .Lx805_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx805_47
                                                                              jmp   .Lx805_48
.Lx805_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx805_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx805_53
                        add              rdi, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx805_51
.Lx805_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx805_49
                        cmp              dl, 80;                              je    .Lx805_53
                                                                              jmp   .Lx805_52
.Lx805_49:              cmp              dl, 80;                              je    .Lx805_52
                        cmp              cl, 5;                               je    .Lx805_53
                        cmp              dl, 5;                               je    .Lx805_53
                        cmp              cl, 3;                               jne   .Lx805_50
                        cmp              dl, 3;                               jne   .Lx805_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx805_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx805_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx805_51
                                                                              jmp   .Lx805_52
.Lx805_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx805_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx805_53
.Lx805_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx805_54
.Lx805_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx805_54
.Lx805_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx805_54:              mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n764_lit_string_α
n763_call_builtin_prolog_β:
                        mov              r11, 313;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_string_α:      mov              r11, 314
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 6
                        mov              rax, qword ptr [rip + .Lx806_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n765_call_builtin_prolog_α
.Lx806_0:               .quad            .Lx806_0_s
.Lx806_0_s:             .string          "Brown="
#-----------------------------------------------------------------------------------------------------------------------
n765_call_builtin_prolog_α:
                        mov              r11, 315
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn808:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn808]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n766_var_α
n765_call_builtin_prolog_β:
                        mov              r11, 315;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n766_var_α:             mov              r11, 316
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 552], rax;          jmp   n767_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n767_call_builtin_prolog_α:
                        mov              r11, 317
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn812:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn812]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n768_lit_string_α
n767_call_builtin_prolog_β:
                        mov              r11, 317;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n768_lit_string_α:      mov              r11, 318
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 7
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n769_call_builtin_prolog_α
.Lx813_0:               .quad            .Lx813_0_s
.Lx813_0_s:             .string          " Clark="
#-----------------------------------------------------------------------------------------------------------------------
n769_call_builtin_prolog_α:
                        mov              r11, 319
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn815:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn815]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n770_var_α
n769_call_builtin_prolog_β:
                        mov              r11, 319;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n770_var_α:             mov              r11, 320
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 456], rax;          jmp   n771_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n771_call_builtin_prolog_α:
                        mov              r11, 321
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn819:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn819]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n772_lit_string_α
n771_call_builtin_prolog_β:
                        mov              r11, 321;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n772_lit_string_α:      mov              r11, 322
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 7
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n773_call_builtin_prolog_α
.Lx820_0:               .quad            .Lx820_0_s
.Lx820_0_s:             .string          " Jones="
#-----------------------------------------------------------------------------------------------------------------------
n773_call_builtin_prolog_α:
                        mov              r11, 323
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn822:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn822]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n774_var_α
n773_call_builtin_prolog_β:
                        mov              r11, 323;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n774_var_α:             mov              r11, 324
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 360], rax;          jmp   n775_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n775_call_builtin_prolog_α:
                        mov              r11, 325
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn826:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn826]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n776_lit_string_α
n775_call_builtin_prolog_β:
                        mov              r11, 325;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n776_lit_string_α:      mov              r11, 326
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 7
                        mov              rax, qword ptr [rip + .Lx827_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n777_call_builtin_prolog_α
.Lx827_0:               .quad            .Lx827_0_s
.Lx827_0_s:             .string          " Smith="
#-----------------------------------------------------------------------------------------------------------------------
n777_call_builtin_prolog_α:
                        mov              r11, 327
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn829:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn829]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n778_var_α
n777_call_builtin_prolog_β:
                        mov              r11, 327;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n778_var_α:             mov              r11, 328
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 264], rax;          jmp   n779_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n779_call_builtin_prolog_α:
                        mov              r11, 329
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn833:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn833]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n780_lit_string_α
n779_call_builtin_prolog_β:
                        mov              r11, 329;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n780_lit_string_α:      mov              r11, 330
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n781_call_builtin_prolog_α
.Lx834_0:               .quad            .Lx834_0_s
.Lx834_0_s:             .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n781_call_builtin_prolog_α:
                        mov              r11, 331
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn836:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn836]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n784_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n782_move_label_α
n781_call_builtin_prolog_β:
                        mov              r11, 331;                            jmp   n784_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n782_move_label_α:      mov              r11, 332
                        lea              rax, [rip + n784_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 96], rax;           jmp   display$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n783_disjunction_α:     mov              r11, 333
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    display$2F4_ω
                                                                              jmp   rax
n783_disjunction_β:     mov              r11, 333;                            jmp   display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n784_call_builtin_prolog_α:
                        mov              r11, 334
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    display$2F4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   display$2F4_ω
n784_call_builtin_prolog_β:
                        mov              r11, 334;                            jmp   display$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_β:
                                                                              jmp   n783_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1016]
                        add              rsp, 1040;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_ω:
                        mov              rcx, qword ptr [rsp + 1024]
                        add              rsp, 1040;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
display$2F4_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r8
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 24]
                        mov              edi, 3
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx842_2]
                        lea              rdx, [rip + .Lx842_3];               jmp   FN__display$2F4
.Lx842_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx842_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
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
n843_call_builtin_prolog_α:
                        mov              r11, 335
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx848_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx848_101
.Lx848_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx848_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx848_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx848_101
.Lx848_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx848_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n844_call_proc_staged_α
n843_call_builtin_prolog_β:
                        mov              r11, 335;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n844_call_proc_staged_α:
                        mov              r11, 336
                        mov              qword ptr [rsp + 112], 0
                        lea              rax, [rip + .Lx850_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx850_1
                        lea              rcx, [rip + .Lx850_3]
                        lea              rdx, [rip + .Lx850_4];               jmp   rax
.Lx850_3:               mov              qword ptr [rsp + 120], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx850_5
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx850_2
.Lx850_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx850_2
.Lx850_4:               mov              rax, qword ptr [rsp + 112]
                        test             rax, rax;                            jne   .Lx850_6
                        mov              qword ptr [rsp + 112], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx850_2
.Lx850_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx850_2
.Lx850_1:               call             rt_faildescr@PLT
.Lx850_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx850_29
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
.Lx850_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n847_call_builtin_prolog_α
                                                                              jmp   n845_move_label_α
n844_call_proc_staged_β:
                        mov              r11, 336
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 112], 0
                        lea              rdi, [rsp + 128]
                        lea              rsi, [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n847_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
                        mov              ecx, 16
                        mov              r8d, 176
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 3
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n847_call_builtin_prolog_α
                        lea              r8, [rip + .Lx850_7]
                        push             r8
                        lea              rcx, [rip + .Lx850_3]
                        lea              rdx, [rip + .Lx850_4];               jmp   rax
.Lx850_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n847_call_builtin_prolog_α
                                                                              jmp   n845_move_label_α
.Lx850_0:               .quad            .Lx850_0_s
.Lx850_0_s:             .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n845_move_label_α:      mov              r11, 337
                        lea              rax, [rip + n844_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n846_disjunction_α:     mov              r11, 338
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n846_disjunction_β:     mov              r11, 338;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n847_call_builtin_prolog_α:
                        mov              r11, 339
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
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_ω
n847_call_builtin_prolog_β:
                        mov              r11, 339;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n846_disjunction_α
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
                        .section         .rodata
.Lstartup_pname1:       .string          "differ/4"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__differ$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            2816
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "puzzle/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__puzzle$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1360
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$disj0/0"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__$disj0$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            192
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "betterGolfer/2"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__betterGolfer$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            720
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "profession/1"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__profession$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            768
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "member/2"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__member$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            720
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "moreConservative/2"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__moreConservative$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1344
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "bankerBeatsArch/2"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__bankerBeatsArch$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            704
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "display/4"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__display$2F4
                        .quad            display$2F4_dcα
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            992
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
