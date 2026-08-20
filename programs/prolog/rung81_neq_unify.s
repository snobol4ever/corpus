                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__$disj0$2F1:
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rcx
                        mov              qword ptr [rsp + 464], rdx
                        mov              qword ptr [rsp + 472], rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 448
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
$disj0$2F1_α_body:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rsp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx14_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx14_101
.Lx14_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx14_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx14_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx14_101
.Lx14_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx14_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    $disj0$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                              jmp   $disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
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
.Lx19_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx19_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx19_41
                        cmp              esi, 1;                              jne   .Lx19_55
                        mov              r8, rax;                             jmp   .Lx19_40
.Lx19_55:               cmp              esi, 2;                              jne   .Lx19_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx19_41
                        mov              r8, rax;                             jmp   .Lx19_40
.Lx19_56:               cmp              eax, 72;                             jne   .Lx19_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx19_41
                        cmp              rax, r8;                             je    .Lx19_41
                        mov              r8, rax;                             jmp   .Lx19_40
.Lx19_41:               lea              r9, [rsp + 352]
.Lx19_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx19_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx19_43
                        cmp              esi, 1;                              jne   .Lx19_57
                        mov              r9, rax;                             jmp   .Lx19_42
.Lx19_57:               cmp              esi, 2;                              jne   .Lx19_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx19_43
                        mov              r9, rax;                             jmp   .Lx19_42
.Lx19_58:               cmp              eax, 72;                             jne   .Lx19_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx19_43
                        cmp              rax, r9;                             je    .Lx19_43
                        mov              r9, rax;                             jmp   .Lx19_42
.Lx19_43:               cmp              r8, r9;                              je    .Lx19_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx19_44
                        cmp              eax, 104;                            je    .Lx19_44
                        cmp              eax, 72;                             jne   .Lx19_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx19_44
                                                                              jmp   .Lx19_45
.Lx19_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx19_53
                        cmp              eax, 104;                            je    .Lx19_53
                        cmp              eax, 72;                             jne   .Lx19_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx19_53
                                                                              jmp   .Lx19_46
.Lx19_46:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx19_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx19_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx19_51
.Lx19_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx19_47
                        cmp              eax, 104;                            je    .Lx19_47
                        cmp              eax, 72;                             jne   .Lx19_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx19_47
                                                                              jmp   .Lx19_48
.Lx19_47:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx19_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx19_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx19_51
.Lx19_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx19_49
                        cmp              edx, 80;                             je    .Lx19_53
                                                                              jmp   .Lx19_52
.Lx19_49:               cmp              edx, 80;                             je    .Lx19_52
                        cmp              ecx, 5;                              je    .Lx19_53
                        cmp              edx, 5;                              je    .Lx19_53
                        cmp              ecx, 3;                              jne   .Lx19_50
                        cmp              edx, 3;                              jne   .Lx19_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx19_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx19_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx19_51
                                                                              jmp   .Lx19_52
.Lx19_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx19_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx19_53
.Lx19_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx19_54
.Lx19_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx19_54
.Lx19_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx19_54:               mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n8_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                                                                              jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 416]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n6_call_builtin_prolog_α
.Lx22_0:                .quad            .Lx22_0_s
.Lx22_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              rsi, qword ptr [rip + .Lx23_2];      jmp   .Lx23_3
.Lx23_2:                .quad            .Lx23_2_s
.Lx23_2_s:              .string          "a"
.Lx23_3:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              eax, 104;                            je    n7_suspend_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_call_builtin_prolog_α
n6_call_builtin_prolog_β:
                                                                              jmp   n7_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n7_suspend_α:           mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx25_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx25_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n7_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F1_γ
n7_suspend_β:                                                                 jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    $disj0$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                                                                              jmp   $disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 416]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
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
.Lx31_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40;                             jne   .Lx31_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx31_41
                        cmp              esi, 1;                              jne   .Lx31_55
                        mov              r8, rax;                             jmp   .Lx31_40
.Lx31_55:               cmp              esi, 2;                              jne   .Lx31_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx31_41
                        mov              r8, rax;                             jmp   .Lx31_40
.Lx31_56:               cmp              eax, 72;                             jne   .Lx31_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx31_41
                        cmp              rax, r8;                             je    .Lx31_41
                        mov              r8, rax;                             jmp   .Lx31_40
.Lx31_41:               lea              r9, [rsp + 144]
.Lx31_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40;                             jne   .Lx31_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx31_43
                        cmp              esi, 1;                              jne   .Lx31_57
                        mov              r9, rax;                             jmp   .Lx31_42
.Lx31_57:               cmp              esi, 2;                              jne   .Lx31_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx31_43
                        mov              r9, rax;                             jmp   .Lx31_42
.Lx31_58:               cmp              eax, 72;                             jne   .Lx31_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx31_43
                        cmp              rax, r9;                             je    .Lx31_43
                        mov              r9, rax;                             jmp   .Lx31_42
.Lx31_43:               cmp              r8, r9;                              je    .Lx31_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0;                              je    .Lx31_44
                        cmp              eax, 104;                            je    .Lx31_44
                        cmp              eax, 72;                             jne   .Lx31_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx31_44
                                                                              jmp   .Lx31_45
.Lx31_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx31_53
                        cmp              eax, 104;                            je    .Lx31_53
                        cmp              eax, 72;                             jne   .Lx31_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx31_53
                                                                              jmp   .Lx31_46
.Lx31_46:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx31_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx31_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx31_51
.Lx31_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0;                              je    .Lx31_47
                        cmp              eax, 104;                            je    .Lx31_47
                        cmp              eax, 72;                             jne   .Lx31_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx31_47
                                                                              jmp   .Lx31_48
.Lx31_47:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx31_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx31_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx31_51
.Lx31_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80;                             jne   .Lx31_49
                        cmp              edx, 80;                             je    .Lx31_53
                                                                              jmp   .Lx31_52
.Lx31_49:               cmp              edx, 80;                             je    .Lx31_52
                        cmp              ecx, 5;                              je    .Lx31_53
                        cmp              edx, 5;                              je    .Lx31_53
                        cmp              ecx, 3;                              jne   .Lx31_50
                        cmp              edx, 3;                              jne   .Lx31_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx31_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx31_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx31_51
                                                                              jmp   .Lx31_52
.Lx31_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx31_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx31_53
.Lx31_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx31_54
.Lx31_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx31_54
.Lx31_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx31_54:               mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n13_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_suspend_α
n11_call_builtin_prolog_β:
                                                                              jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx33_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx33_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n12_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F1_γ
n12_suspend_β:                                                                jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    $disj0$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   $disj0$2F1_ω
n13_call_builtin_prolog_β:
                                                                              jmp   $disj0$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F1_β:
                                                                              jmp   n7_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx34_50
                        mov              qword ptr [rsp + 400], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400];          jmp   rax
.Lx34_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 456]
                        add              rsp, 480;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F1_ω:
                        mov              rcx, qword ptr [rsp + 464]
                        add              rsp, 480;                            jmp   rcx
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
                        sub              rsp, 2208
                        mov              qword ptr [rsp + 2184], rcx
                        mov              qword ptr [rsp + 2192], rdx
                        mov              qword ptr [rsp + 2200], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 2176
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx119_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx119_101
.Lx119_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx119_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx119_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx119_101
.Lx119_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx119_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n36_lit_string_α
n35_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n37_lit_string_α
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n38_call_builtin_prolog_α
.Lx121_0:               .quad            .Lx121_0_s
.Lx121_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2040], rax
                        lea              rdi, [rsp + 2032]
                        mov              rsi, qword ptr [rip + .Lx122_0];     jmp   .Lx122_1
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "a"
.Lx122_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              eax, 104;                            je    n41_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_lit_string_α
n38_call_builtin_prolog_β:
                                                                              jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], 5
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n40_call_builtin_prolog_α
.Lx123_0:               .quad            .Lx123_0_s
.Lx123_0_s:             .string          "t1_eq"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1992], rax
                        .section         .rodata
.Lrkfn125:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]
                        lea              rsi, [rsp + 1984]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_lit_string_α
n40_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 9
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n42_call_builtin_prolog_α
.Lx126_0:               .quad            .Lx126_0_s
.Lx126_0_s:             .string          "t1_differ"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1944], rax
                        .section         .rodata
.Lrkfn128:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rsp + 1936]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_lit_string_α
n42_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              qword ptr [rsp + 1904], 2            # result
                        mov              dword ptr [rsp + 1908], 0
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n44_call_builtin_prolog_α
.Lx129_0:               .quad            .Lx129_0_s
.Lx129_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1896], rax
                        .section         .rodata
.Lrkfn131:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rsp + 1888]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_lit_string_α
n44_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n46_lit_string_α
.Lx132_0:               .quad            .Lx132_0_s
.Lx132_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n47_call_builtin_prolog_α
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1816], rax
                        lea              rdi, [rsp + 1808]
                        mov              rsi, qword ptr [rip + .Lx134_0];     jmp   .Lx134_1
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "a"
.Lx134_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              eax, 104;                            je    n50_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_lit_string_α
n47_call_builtin_prolog_β:
                                                                              jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              qword ptr [rsp + 1776], 2            # result
                        mov              dword ptr [rsp + 1780], 5
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n49_call_builtin_prolog_α
.Lx135_0:               .quad            .Lx135_0_s
.Lx135_0_s:             .string          "t2_eq"
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lrkfn137:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn137]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_lit_string_α
n49_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 9
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n51_call_builtin_prolog_α
.Lx138_0:               .quad            .Lx138_0_s
.Lx138_0_s:             .string          "t2_differ"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1720], rax
                        .section         .rodata
.Lrkfn140:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]
                        lea              rsi, [rsp + 1712]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_lit_string_α
n51_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 0
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n53_call_builtin_prolog_α
.Lx141_0:               .quad            .Lx141_0_s
.Lx141_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1672], rax
                        .section         .rodata
.Lrkfn143:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]
                        lea              rsi, [rsp + 1664]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_var_ref_α
n53_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2144]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n55_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 1
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n56_call_builtin_prolog_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1592], rax
                        lea              rdi, [rsp + 1584]
                        mov              rsi, qword ptr [rip + .Lx147_2];     jmp   .Lx147_3
.Lx147_2:               .quad            .Lx147_2_s
.Lx147_2_s:             .string          "a"
.Lx147_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 104;                            je    n59_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_lit_string_α
n56_call_builtin_prolog_β:
                                                                              jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 8
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n58_call_builtin_prolog_α
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "t3_unify"
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn150:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_lit_string_α
n58_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 9
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n60_call_builtin_prolog_α
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "t3_differ"
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1496], rax
                        .section         .rodata
.Lrkfn153:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn153]
                        lea              rsi, [rsp + 1488]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_lit_string_α
n60_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              qword ptr [rsp + 1456], 2            # result
                        mov              dword ptr [rsp + 1460], 0
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n62_call_builtin_prolog_α
.Lx154_0:               .quad            .Lx154_0_s
.Lx154_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1448], rax
                        .section         .rodata
.Lrkfn156:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]
                        lea              rsi, [rsp + 1440]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_lit_integer_α
n62_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              qword ptr [rsp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n64_lit_integer_α
.Lx157_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              qword ptr [rsp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n65_call_builtin_prolog_α
.Lx158_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        lea              rdi, [rsp + 1360]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              eax, 104;                            je    n68_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n66_lit_string_α
n65_call_builtin_prolog_β:
                                                                              jmp   n68_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 5
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n67_call_builtin_prolog_α
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          "t4_eq"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn162:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n70_lit_string_α
n67_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 9
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n69_call_builtin_prolog_α
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          "t4_differ"
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1272], rax
                        .section         .rodata
.Lrkfn165:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rsp + 1264]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n70_lit_string_α
n69_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 0
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n71_call_builtin_prolog_α
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn168:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn168]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_var_ref_α
n71_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2128]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n74_call_builtin_prolog_α
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax
                        lea              rdi, [rsp + 1136]
                        mov              rsi, qword ptr [rip + .Lx172_2];     jmp   .Lx172_3
.Lx172_2:               .quad            .Lx172_2_s
.Lx172_2_s:             .string          "a"
.Lx172_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              eax, 104;                            je    n80_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_var_ref_α
n74_call_builtin_prolog_β:
                                                                              jmp   n80_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2128]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n77_call_builtin_prolog_α
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        lea              rdi, [rsp + 1056]
                        mov              rsi, qword ptr [rip + .Lx176_2];     jmp   .Lx176_3
.Lx176_2:               .quad            .Lx176_2_s
.Lx176_2_s:             .string          "b"
.Lx176_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104;                            je    n78_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_lit_string_α
n77_call_builtin_prolog_β:
                                                                              jmp   n78_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 9
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n79_call_builtin_prolog_α
.Lx177_0:               .quad            .Lx177_0_s
.Lx177_0_s:             .string          "t5_differ"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn179:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rsp + 960]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n82_lit_string_α
n79_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 5
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n81_call_builtin_prolog_α
.Lx180_0:               .quad            .Lx180_0_s
.Lx180_0_s:             .string          "t5_eq"
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn182:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn182]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n82_lit_string_α
n81_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 0
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n83_call_builtin_prolog_α
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn185:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]
                        lea              rsi, [rsp + 912]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n84_var_ref_α
n83_call_builtin_prolog_β:
                                                                              jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2112]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n85_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α: mov              qword ptr [rsp + 848], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx189_20
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx189_21
.Lx189_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx189_21:              lea              rax, [rip + .Lx189_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx189_1
                        lea              rcx, [rip + .Lx189_3]
                        lea              rdx, [rip + .Lx189_4];               jmp   rax
.Lx189_3:               mov              qword ptr [rsp + 856], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 848]
                        test             rax, rax;                            jne   .Lx189_5
                        mov              qword ptr [rsp + 848], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx189_2
.Lx189_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx189_2
.Lx189_4:               mov              rax, qword ptr [rsp + 848]
                        test             rax, rax;                            jne   .Lx189_6
                        mov              qword ptr [rsp + 848], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx189_2
.Lx189_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx189_2
.Lx189_1:               call             rt_faildescr@PLT
.Lx189_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx189_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
.Lx189_29:              mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                                                                              jmp   n86_var_ref_α
n85_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 848], 0
                        lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n111_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              ecx, 32
                        mov              r8d, 400
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n111_call_builtin_prolog_α
                        lea              r11, [rip + .Lx189_7]
                        push             r11
                        lea              rcx, [rip + .Lx189_3]
                        lea              rdx, [rip + .Lx189_4];               jmp   rax
.Lx189_7:               add              rsp, 8
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              eax, 104;                            je    n111_call_builtin_prolog_α
                                                                              jmp   n86_var_ref_α
.Lx189_0:               .quad            .Lx189_0_s
.Lx189_0_s:             .string          "$disj0/1"
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2112]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn193:              .string          "$tt_var"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104;                            je    n90_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n88_lit_string_α
n87_call_builtin_prolog_β:
                                                                              jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 10
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n89_call_builtin_prolog_α
.Lx194_0:               .quad            .Lx194_0_s
.Lx194_0_s:             .string          "t6_unbound"
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn196:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rsp + 688]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              eax, 104;                            je    n85_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n92_lit_string_α
n89_call_builtin_prolog_β:
                                                                              jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 8
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n91_call_builtin_prolog_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "t6_bound"
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn199:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rsp + 736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 104;                            je    n85_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n92_lit_string_α
n91_call_builtin_prolog_β:
                                                                              jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 0
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n93_call_builtin_prolog_α
.Lx200_0:               .quad            .Lx200_0_s
.Lx200_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn202:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn202]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104;                            je    n85_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_lit_string_α
n93_call_builtin_prolog_β:
                                                                              jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n95_lit_string_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n96_call_builtin_prolog_α
.Lx204_0:               .quad            .Lx204_0_s
.Lx204_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              rsi, qword ptr [rip + .Lx205_0];     jmp   .Lx205_1
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "a"
.Lx205_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    n102_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n97_var_ref_α
n96_call_builtin_prolog_β:
                                                                              jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2096]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n99_call_builtin_prolog_α
.Lx208_0:               .quad            .Lx208_0_s
.Lx208_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        lea              rdi, [rsp + 480]
                        mov              rsi, qword ptr [rip + .Lx209_2];     jmp   .Lx209_3
.Lx209_2:               .quad            .Lx209_2_s
.Lx209_2_s:             .string          "c"
.Lx209_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n102_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n100_lit_string_α
n99_call_builtin_prolog_β:
                                                                              jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 8
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n101_call_builtin_prolog_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "t7_unify"
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn212:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    n85_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n104_lit_string_α
n101_call_builtin_prolog_β:
                                                                              jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 9
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n103_call_builtin_prolog_α
.Lx213_0:               .quad            .Lx213_0_s
.Lx213_0_s:             .string          "t7_differ"
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn215:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n85_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n104_lit_string_α
n103_call_builtin_prolog_β:
                                                                              jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 0
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n105_call_builtin_prolog_α
.Lx216_0:               .quad            .Lx216_0_s
.Lx216_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn218:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n85_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n106_lit_string_α
n105_call_builtin_prolog_β:
                                                                              jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 4
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n107_call_builtin_prolog_α
.Lx219_0:               .quad            .Lx219_0_s
.Lx219_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn221:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 104;                            je    n85_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n108_lit_string_α
n107_call_builtin_prolog_β:
                                                                              jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 0
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n109_call_builtin_prolog_α
.Lx222_0:               .quad            .Lx222_0_s
.Lx222_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn224:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn224]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n85_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n110_move_label_α
n109_call_builtin_prolog_β:
                                                                              jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n110_move_label_α:      lea              rax, [rip + n85_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n112_lit_string_α
n111_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 11
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n113_call_builtin_prolog_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          "main_failed"
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn230:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n118_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n114_lit_string_α
n113_call_builtin_prolog_β:
                                                                              jmp   n118_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n115_call_builtin_prolog_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn233:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n118_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n116_move_label_α
n115_call_builtin_prolog_β:
                                                                              jmp   n118_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_move_label_α:      lea              rax, [rip + n118_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n117_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n117_disjunction_β:                                                           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
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
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_ω
n118_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n117_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2184]
                        add              rsp, 2208;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 2192]
                        add              rsp, 2208;                           jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$disj0/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__$disj0$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            432
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
