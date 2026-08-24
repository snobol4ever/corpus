                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__unify_test$2F2:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rcx
                        mov              qword ptr [rsp + 352], rdx
                        mov              qword ptr [rsp + 360], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 336
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
unify_test$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx10_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx10_101
.Lx10_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx10_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx10_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx10_101
.Lx10_100:              lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx10_101:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    unify_test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   unify_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        lea              r8, [rsp + 240]
.Lx15_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx15_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx15_41
                        cmp              esi, 1;                              jne   .Lx15_55
                        mov              r8, rax;                             jmp   .Lx15_40
.Lx15_55:               cmp              esi, 2;                              jne   .Lx15_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx15_41
                        mov              r8, rax;                             jmp   .Lx15_40
.Lx15_56:               cmp              al, 72;                              jne   .Lx15_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx15_41
                        cmp              rax, r8;                             je    .Lx15_41
                        mov              r8, rax;                             jmp   .Lx15_40
.Lx15_41:               lea              r9, [rsp + 256]
.Lx15_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx15_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx15_43
                        cmp              esi, 1;                              jne   .Lx15_57
                        mov              r9, rax;                             jmp   .Lx15_42
.Lx15_57:               cmp              esi, 2;                              jne   .Lx15_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx15_43
                        mov              r9, rax;                             jmp   .Lx15_42
.Lx15_58:               cmp              al, 72;                              jne   .Lx15_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx15_43
                        cmp              rax, r9;                             je    .Lx15_43
                        mov              r9, rax;                             jmp   .Lx15_42
.Lx15_43:               cmp              r8, r9;                              je    .Lx15_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx15_44
                        cmp              al, 104;                             je    .Lx15_44
                        cmp              al, 72;                              jne   .Lx15_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx15_44
                                                                              jmp   .Lx15_45
.Lx15_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx15_53
                        cmp              al, 104;                             je    .Lx15_53
                        cmp              al, 72;                              jne   .Lx15_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx15_53
                                                                              jmp   .Lx15_46
.Lx15_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx15_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx15_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx15_51
.Lx15_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx15_47
                        cmp              al, 104;                             je    .Lx15_47
                        cmp              al, 72;                              jne   .Lx15_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx15_47
                                                                              jmp   .Lx15_48
.Lx15_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx15_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx15_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx15_51
.Lx15_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx15_49
                        cmp              dl, 80;                              je    .Lx15_53
                                                                              jmp   .Lx15_52
.Lx15_49:               cmp              dl, 80;                              je    .Lx15_52
                        cmp              cl, 5;                               je    .Lx15_53
                        cmp              dl, 5;                               je    .Lx15_53
                        cmp              cl, 3;                               jne   .Lx15_50
                        cmp              dl, 3;                               jne   .Lx15_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx15_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx15_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx15_51
                                                                              jmp   .Lx15_52
.Lx15_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx15_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx15_53
.Lx15_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx15_54
.Lx15_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx15_54
.Lx15_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx15_54:               mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n9_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 304]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        lea              r8, [rsp + 160]
.Lx20_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx20_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx20_41
                        cmp              esi, 1;                              jne   .Lx20_55
                        mov              r8, rax;                             jmp   .Lx20_40
.Lx20_55:               cmp              esi, 2;                              jne   .Lx20_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx20_41
                        mov              r8, rax;                             jmp   .Lx20_40
.Lx20_56:               cmp              al, 72;                              jne   .Lx20_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx20_41
                        cmp              rax, r8;                             je    .Lx20_41
                        mov              r8, rax;                             jmp   .Lx20_40
.Lx20_41:               lea              r9, [rsp + 176]
.Lx20_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx20_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx20_43
                        cmp              esi, 1;                              jne   .Lx20_57
                        mov              r9, rax;                             jmp   .Lx20_42
.Lx20_57:               cmp              esi, 2;                              jne   .Lx20_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx20_43
                        mov              r9, rax;                             jmp   .Lx20_42
.Lx20_58:               cmp              al, 72;                              jne   .Lx20_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx20_43
                        cmp              rax, r9;                             je    .Lx20_43
                        mov              r9, rax;                             jmp   .Lx20_42
.Lx20_43:               cmp              r8, r9;                              je    .Lx20_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx20_44
                        cmp              al, 104;                             je    .Lx20_44
                        cmp              al, 72;                              jne   .Lx20_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx20_44
                                                                              jmp   .Lx20_45
.Lx20_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx20_53
                        cmp              al, 104;                             je    .Lx20_53
                        cmp              al, 72;                              jne   .Lx20_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx20_53
                                                                              jmp   .Lx20_46
.Lx20_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx20_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx20_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx20_51
.Lx20_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx20_47
                        cmp              al, 104;                             je    .Lx20_47
                        cmp              al, 72;                              jne   .Lx20_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx20_47
                                                                              jmp   .Lx20_48
.Lx20_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx20_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx20_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx20_51
.Lx20_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx20_49
                        cmp              dl, 80;                              je    .Lx20_53
                                                                              jmp   .Lx20_52
.Lx20_49:               cmp              dl, 80;                              je    .Lx20_52
                        cmp              cl, 5;                               je    .Lx20_53
                        cmp              dl, 5;                               je    .Lx20_53
                        cmp              cl, 3;                               jne   .Lx20_50
                        cmp              dl, 3;                               jne   .Lx20_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx20_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx20_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx20_51
                                                                              jmp   .Lx20_52
.Lx20_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx20_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx20_53
.Lx20_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx20_54
.Lx20_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx20_54
.Lx20_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx20_54:               mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n9_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_move_label_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_move_label_α:        mov              r11, 8
                        lea              rax, [rip + n9_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 64], rax;           jmp   unify_test$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n8_disjunction_α:       mov              r11, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    unify_test$2F2_ω
                                                                              jmp   rax
n8_disjunction_β:       mov              r11, 9;                              jmp   unify_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    unify_test$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   unify_test$2F2_ω
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   unify_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
unify_test$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
unify_test$2F2_β:
                                                                              jmp   n8_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
unify_test$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 344]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
unify_test$2F2_ω:
                        mov              rcx, qword ptr [rsp + 352]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
unify_test$2F2_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx26_2]
                        lea              rdx, [rip + .Lx26_3];                jmp   FN__unify_test$2F2
.Lx26_2:                pop              r12
                        pop              r12;                                 jmp   r12
.Lx26_3:                pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__$disj0$2F8:
                        sub              rsp, 3456
                        mov              qword ptr [rsp + 3432], rcx
                        mov              qword ptr [rsp + 3440], rdx
                        mov              qword ptr [rsp + 3448], rsp
                        mov              rdi, rsp
                        mov              esi, 3264
                        mov              edx, 3424
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
$disj0$2F8_α_body:
                        lea              rax, [rip + n137_suspend_β]
                        mov              qword ptr [rsp + 3264], rax
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              r11, 11
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx139_102
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152];          jmp   .Lx139_101
.Lx139_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx139_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx139_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx139_101
.Lx139_100:             lea              rdi, [rsp + 160]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx139_101:             mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    $disj0$2F8_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_var_ref_α
n27_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   $disj0$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx;         jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3392]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3224], rax
                        mov              rax, qword ptr [rsp + 3232]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 3208], rax
                        lea              rdi, [rsp + 3200]
                        lea              r8, [rsp + 3200]
.Lx144_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx144_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx144_41
                        cmp              esi, 1;                              jne   .Lx144_55
                        mov              r8, rax;                             jmp   .Lx144_40
.Lx144_55:              cmp              esi, 2;                              jne   .Lx144_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx144_41
                        mov              r8, rax;                             jmp   .Lx144_40
.Lx144_56:              cmp              al, 72;                              jne   .Lx144_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx144_41
                        cmp              rax, r8;                             je    .Lx144_41
                        mov              r8, rax;                             jmp   .Lx144_40
.Lx144_41:              lea              r9, [rsp + 3216]
.Lx144_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx144_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx144_43
                        cmp              esi, 1;                              jne   .Lx144_57
                        mov              r9, rax;                             jmp   .Lx144_42
.Lx144_57:              cmp              esi, 2;                              jne   .Lx144_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx144_43
                        mov              r9, rax;                             jmp   .Lx144_42
.Lx144_58:              cmp              al, 72;                              jne   .Lx144_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx144_43
                        cmp              rax, r9;                             je    .Lx144_43
                        mov              r9, rax;                             jmp   .Lx144_42
.Lx144_43:              cmp              r8, r9;                              je    .Lx144_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx144_44
                        cmp              al, 104;                             je    .Lx144_44
                        cmp              al, 72;                              jne   .Lx144_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx144_44
                                                                              jmp   .Lx144_45
.Lx144_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx144_53
                        cmp              al, 104;                             je    .Lx144_53
                        cmp              al, 72;                              jne   .Lx144_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx144_53
                                                                              jmp   .Lx144_46
.Lx144_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx144_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx144_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx144_51
.Lx144_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx144_47
                        cmp              al, 104;                             je    .Lx144_47
                        cmp              al, 72;                              jne   .Lx144_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx144_47
                                                                              jmp   .Lx144_48
.Lx144_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx144_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx144_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx144_51
.Lx144_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx144_49
                        cmp              dl, 80;                              je    .Lx144_53
                                                                              jmp   .Lx144_52
.Lx144_49:              cmp              dl, 80;                              je    .Lx144_52
                        cmp              cl, 5;                               je    .Lx144_53
                        cmp              dl, 5;                               je    .Lx144_53
                        cmp              cl, 3;                               jne   .Lx144_50
                        cmp              dl, 3;                               jne   .Lx144_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx144_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx144_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx144_51
                                                                              jmp   .Lx144_52
.Lx144_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx144_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx144_53
.Lx144_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx144_54
.Lx144_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx144_54
.Lx144_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx144_54:              mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx
                        cmp              al, 104;                             je    n112_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n31_var_ref_α
n30_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx;         jmp   n32_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3376]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx;         jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3144], rax
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3128], rax
                        lea              rdi, [rsp + 3120]
                        lea              r8, [rsp + 3120]
.Lx149_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx149_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx149_41
                        cmp              esi, 1;                              jne   .Lx149_55
                        mov              r8, rax;                             jmp   .Lx149_40
.Lx149_55:              cmp              esi, 2;                              jne   .Lx149_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx149_41
                        mov              r8, rax;                             jmp   .Lx149_40
.Lx149_56:              cmp              al, 72;                              jne   .Lx149_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx149_41
                        cmp              rax, r8;                             je    .Lx149_41
                        mov              r8, rax;                             jmp   .Lx149_40
.Lx149_41:              lea              r9, [rsp + 3136]
.Lx149_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx149_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx149_43
                        cmp              esi, 1;                              jne   .Lx149_57
                        mov              r9, rax;                             jmp   .Lx149_42
.Lx149_57:              cmp              esi, 2;                              jne   .Lx149_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx149_43
                        mov              r9, rax;                             jmp   .Lx149_42
.Lx149_58:              cmp              al, 72;                              jne   .Lx149_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx149_43
                        cmp              rax, r9;                             je    .Lx149_43
                        mov              r9, rax;                             jmp   .Lx149_42
.Lx149_43:              cmp              r8, r9;                              je    .Lx149_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx149_44
                        cmp              al, 104;                             je    .Lx149_44
                        cmp              al, 72;                              jne   .Lx149_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx149_44
                                                                              jmp   .Lx149_45
.Lx149_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx149_53
                        cmp              al, 104;                             je    .Lx149_53
                        cmp              al, 72;                              jne   .Lx149_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx149_53
                                                                              jmp   .Lx149_46
.Lx149_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx149_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx149_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx149_51
.Lx149_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx149_47
                        cmp              al, 104;                             je    .Lx149_47
                        cmp              al, 72;                              jne   .Lx149_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx149_47
                                                                              jmp   .Lx149_48
.Lx149_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx149_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx149_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx149_51
.Lx149_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx149_49
                        cmp              dl, 80;                              je    .Lx149_53
                                                                              jmp   .Lx149_52
.Lx149_49:              cmp              dl, 80;                              je    .Lx149_52
                        cmp              cl, 5;                               je    .Lx149_53
                        cmp              dl, 5;                               je    .Lx149_53
                        cmp              cl, 3;                               jne   .Lx149_50
                        cmp              dl, 3;                               jne   .Lx149_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx149_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx149_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx149_51
                                                                              jmp   .Lx149_52
.Lx149_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx149_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx149_53
.Lx149_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx149_54
.Lx149_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx149_54
.Lx149_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx149_54:              mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              al, 104;                             je    n112_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_var_ref_α
n33_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n35_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3360]
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx;         jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3064], rax
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3048], rax
                        lea              rdi, [rsp + 3040]
                        lea              r8, [rsp + 3040]
.Lx154_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx154_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx154_41
                        cmp              esi, 1;                              jne   .Lx154_55
                        mov              r8, rax;                             jmp   .Lx154_40
.Lx154_55:              cmp              esi, 2;                              jne   .Lx154_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx154_41
                        mov              r8, rax;                             jmp   .Lx154_40
.Lx154_56:              cmp              al, 72;                              jne   .Lx154_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx154_41
                        cmp              rax, r8;                             je    .Lx154_41
                        mov              r8, rax;                             jmp   .Lx154_40
.Lx154_41:              lea              r9, [rsp + 3056]
.Lx154_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx154_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx154_43
                        cmp              esi, 1;                              jne   .Lx154_57
                        mov              r9, rax;                             jmp   .Lx154_42
.Lx154_57:              cmp              esi, 2;                              jne   .Lx154_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx154_43
                        mov              r9, rax;                             jmp   .Lx154_42
.Lx154_58:              cmp              al, 72;                              jne   .Lx154_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx154_43
                        cmp              rax, r9;                             je    .Lx154_43
                        mov              r9, rax;                             jmp   .Lx154_42
.Lx154_43:              cmp              r8, r9;                              je    .Lx154_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx154_44
                        cmp              al, 104;                             je    .Lx154_44
                        cmp              al, 72;                              jne   .Lx154_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx154_44
                                                                              jmp   .Lx154_45
.Lx154_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx154_53
                        cmp              al, 104;                             je    .Lx154_53
                        cmp              al, 72;                              jne   .Lx154_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx154_53
                                                                              jmp   .Lx154_46
.Lx154_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx154_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx154_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx154_51
.Lx154_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx154_47
                        cmp              al, 104;                             je    .Lx154_47
                        cmp              al, 72;                              jne   .Lx154_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx154_47
                                                                              jmp   .Lx154_48
.Lx154_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx154_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx154_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx154_51
.Lx154_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx154_49
                        cmp              dl, 80;                              je    .Lx154_53
                                                                              jmp   .Lx154_52
.Lx154_49:              cmp              dl, 80;                              je    .Lx154_52
                        cmp              cl, 5;                               je    .Lx154_53
                        cmp              dl, 5;                               je    .Lx154_53
                        cmp              cl, 3;                               jne   .Lx154_50
                        cmp              dl, 3;                               jne   .Lx154_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx154_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx154_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx154_51
                                                                              jmp   .Lx154_52
.Lx154_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx154_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx154_53
.Lx154_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx154_54
.Lx154_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx154_54
.Lx154_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx154_54:              mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              al, 104;                             je    n112_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_var_ref_α
n36_call_builtin_prolog_β:
                        mov              r11, 20;                             jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx;         jmp   n38_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3344]
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n39_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2984], rax
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2968], rax
                        lea              rdi, [rsp + 2960]
                        lea              r8, [rsp + 2960]
.Lx159_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx159_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx159_41
                        cmp              esi, 1;                              jne   .Lx159_55
                        mov              r8, rax;                             jmp   .Lx159_40
.Lx159_55:              cmp              esi, 2;                              jne   .Lx159_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx159_41
                        mov              r8, rax;                             jmp   .Lx159_40
.Lx159_56:              cmp              al, 72;                              jne   .Lx159_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx159_41
                        cmp              rax, r8;                             je    .Lx159_41
                        mov              r8, rax;                             jmp   .Lx159_40
.Lx159_41:              lea              r9, [rsp + 2976]
.Lx159_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx159_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx159_43
                        cmp              esi, 1;                              jne   .Lx159_57
                        mov              r9, rax;                             jmp   .Lx159_42
.Lx159_57:              cmp              esi, 2;                              jne   .Lx159_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx159_43
                        mov              r9, rax;                             jmp   .Lx159_42
.Lx159_58:              cmp              al, 72;                              jne   .Lx159_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx159_43
                        cmp              rax, r9;                             je    .Lx159_43
                        mov              r9, rax;                             jmp   .Lx159_42
.Lx159_43:              cmp              r8, r9;                              je    .Lx159_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx159_44
                        cmp              al, 104;                             je    .Lx159_44
                        cmp              al, 72;                              jne   .Lx159_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx159_44
                                                                              jmp   .Lx159_45
.Lx159_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx159_53
                        cmp              al, 104;                             je    .Lx159_53
                        cmp              al, 72;                              jne   .Lx159_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx159_53
                                                                              jmp   .Lx159_46
.Lx159_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx159_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx159_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx159_51
.Lx159_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx159_47
                        cmp              al, 104;                             je    .Lx159_47
                        cmp              al, 72;                              jne   .Lx159_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx159_47
                                                                              jmp   .Lx159_48
.Lx159_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx159_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx159_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx159_51
.Lx159_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx159_49
                        cmp              dl, 80;                              je    .Lx159_53
                                                                              jmp   .Lx159_52
.Lx159_49:              cmp              dl, 80;                              je    .Lx159_52
                        cmp              cl, 5;                               je    .Lx159_53
                        cmp              dl, 5;                               je    .Lx159_53
                        cmp              cl, 3;                               jne   .Lx159_50
                        cmp              dl, 3;                               jne   .Lx159_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx159_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx159_51
                                                                              jmp   .Lx159_52
.Lx159_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx159_53
.Lx159_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx159_54
.Lx159_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx159_54
.Lx159_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx159_54:              mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx
                        cmp              al, 104;                             je    n112_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_var_ref_α
n39_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx;         jmp   n41_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3328]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n42_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              r11, 26
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2904], rax
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2888], rax
                        lea              rdi, [rsp + 2880]
                        lea              r8, [rsp + 2880]
.Lx164_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx164_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx164_41
                        cmp              esi, 1;                              jne   .Lx164_55
                        mov              r8, rax;                             jmp   .Lx164_40
.Lx164_55:              cmp              esi, 2;                              jne   .Lx164_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx164_41
                        mov              r8, rax;                             jmp   .Lx164_40
.Lx164_56:              cmp              al, 72;                              jne   .Lx164_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx164_41
                        cmp              rax, r8;                             je    .Lx164_41
                        mov              r8, rax;                             jmp   .Lx164_40
.Lx164_41:              lea              r9, [rsp + 2896]
.Lx164_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx164_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx164_43
                        cmp              esi, 1;                              jne   .Lx164_57
                        mov              r9, rax;                             jmp   .Lx164_42
.Lx164_57:              cmp              esi, 2;                              jne   .Lx164_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx164_43
                        mov              r9, rax;                             jmp   .Lx164_42
.Lx164_58:              cmp              al, 72;                              jne   .Lx164_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx164_43
                        cmp              rax, r9;                             je    .Lx164_43
                        mov              r9, rax;                             jmp   .Lx164_42
.Lx164_43:              cmp              r8, r9;                              je    .Lx164_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx164_44
                        cmp              al, 104;                             je    .Lx164_44
                        cmp              al, 72;                              jne   .Lx164_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx164_44
                                                                              jmp   .Lx164_45
.Lx164_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx164_53
                        cmp              al, 104;                             je    .Lx164_53
                        cmp              al, 72;                              jne   .Lx164_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx164_53
                                                                              jmp   .Lx164_46
.Lx164_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx164_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx164_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx164_51
.Lx164_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx164_47
                        cmp              al, 104;                             je    .Lx164_47
                        cmp              al, 72;                              jne   .Lx164_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx164_47
                                                                              jmp   .Lx164_48
.Lx164_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx164_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx164_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx164_51
.Lx164_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx164_49
                        cmp              dl, 80;                              je    .Lx164_53
                                                                              jmp   .Lx164_52
.Lx164_49:              cmp              dl, 80;                              je    .Lx164_52
                        cmp              cl, 5;                               je    .Lx164_53
                        cmp              dl, 5;                               je    .Lx164_53
                        cmp              cl, 3;                               jne   .Lx164_50
                        cmp              dl, 3;                               jne   .Lx164_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx164_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx164_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx164_51
                                                                              jmp   .Lx164_52
.Lx164_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx164_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx164_53
.Lx164_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx164_54
.Lx164_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx164_54
.Lx164_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx164_54:              mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx
                        cmp              al, 104;                             je    n112_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_var_ref_α
n42_call_builtin_prolog_β:
                        mov              r11, 26;                             jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 96]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx;         jmp   n44_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3312]
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx;         jmp   n45_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2808], rax
                        lea              rdi, [rsp + 2800]
                        lea              r8, [rsp + 2800]
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
.Lx169_41:              lea              r9, [rsp + 2816]
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
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx169_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx169_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx169_51
.Lx169_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx169_47
                        cmp              al, 104;                             je    .Lx169_47
                        cmp              al, 72;                              jne   .Lx169_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx169_47
                                                                              jmp   .Lx169_48
.Lx169_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx169_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx169_53
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx169_54:              mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    n112_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_var_ref_α
n45_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 112]
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n47_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3296]
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx;         jmp   n48_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2744], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2728], rax
                        lea              rdi, [rsp + 2720]
                        lea              r8, [rsp + 2720]
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
.Lx174_41:              lea              r9, [rsp + 2736]
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
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx174_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx174_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx174_51
.Lx174_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx174_47
                        cmp              al, 104;                             je    .Lx174_47
                        cmp              al, 72;                              jne   .Lx174_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx174_47
                                                                              jmp   .Lx174_48
.Lx174_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx174_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx174_53
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx174_54:              mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                        cmp              al, 104;                             je    n112_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_var_ref_α
n48_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 128]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n50_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3280]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2656], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2664], rax
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2648], rax
                        lea              rdi, [rsp + 2640]
                        lea              r8, [rsp + 2640]
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
.Lx179_41:              lea              r9, [rsp + 2656]
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
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx179_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx179_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx179_51
.Lx179_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx179_47
                        cmp              al, 104;                             je    .Lx179_47
                        cmp              al, 72;                              jne   .Lx179_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx179_47
                                                                              jmp   .Lx179_48
.Lx179_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx179_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx179_53
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx179_54:              mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              al, 104;                             je    n112_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_lit_integer_α
n51_call_builtin_prolog_β:
                        mov              r11, 35;                             jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      mov              r11, 36
                        mov              qword ptr [rsp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n53_lit_integer_α
.Lx180_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      mov              r11, 37
                        mov              qword ptr [rsp + 2544], 3            # result
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n54_var_ref_α
.Lx181_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3392]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3376]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n56_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3360]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n57_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3344]
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx;         jmp   n58_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_proc_staged_α: mov              r11, 42
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx191_200
                        mov              rax, qword ptr [rsp + 2528]
                        mov              rdx, qword ptr [rsp + 2536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx191_201
.Lx191_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2528]
                        mov              rdx, qword ptr [rsp + 2536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx191_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx191_202
                        mov              rax, qword ptr [rsp + 2544]
                        mov              rdx, qword ptr [rsp + 2552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx191_203
.Lx191_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2544]
                        mov              rdx, qword ptr [rsp + 2552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx191_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx191_204
                        mov              rax, qword ptr [rsp + 2560]
                        mov              rdx, qword ptr [rsp + 2568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx191_205
.Lx191_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 2560]
                        mov              rdx, qword ptr [rsp + 2568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx191_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx191_206
                        mov              rax, qword ptr [rsp + 2576]
                        mov              rdx, qword ptr [rsp + 2584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx191_207
.Lx191_206:             mov              edi, 3
                        mov              rsi, qword ptr [rsp + 2576]
                        mov              rdx, qword ptr [rsp + 2584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx191_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx191_208
                        mov              rax, qword ptr [rsp + 2592]
                        mov              rdx, qword ptr [rsp + 2600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx191_209
.Lx191_208:             mov              edi, 4
                        mov              rsi, qword ptr [rsp + 2592]
                        mov              rdx, qword ptr [rsp + 2600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx191_209:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx191_210
                        mov              rax, qword ptr [rsp + 2608]
                        mov              rdx, qword ptr [rsp + 2616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lx191_211
.Lx191_210:             mov              edi, 5
                        mov              rsi, qword ptr [rsp + 2608]
                        mov              rdx, qword ptr [rsp + 2616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx191_211:             mov              edi, 5
                        mov              esi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx191_1
                        lea              rcx, [rip + .Lx191_4]
                        push             rcx
                        lea              rcx, [rip + .Lx191_3]
                        push             rcx;                                 jmp   rax
.Lx191_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx191_2
.Lx191_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx191_2
.Lx191_1:               call             rt_faildescr@PLT
.Lx191_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx191_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2400]
                        mov              rdx, qword ptr [rsp + 2408]
.Lx191_29:              mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              al, 104;                             je    n112_call_builtin_prolog_α
                                                                              jmp   n59_var_α
n58_call_proc_staged_β: mov              r11, 42;                             jmp   n112_call_builtin_prolog_α
.Lx191_0:               .quad            .Lx191_0_s
.Lx191_0_s:             .string          "arith/6"
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n60_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_prolog_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2376], rax
                        .section         .rodata
.Lrkfn195:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rsp + 2368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx
                        cmp              al, 104;                             je    n58_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n61_lit_string_α
n60_call_builtin_prolog_β:
                        mov              r11, 44;                             jmp   n58_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 0
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n62_call_builtin_prolog_α
.Lx196_0:               .quad            .Lx196_0_s
.Lx196_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2328], rax
                        .section         .rodata
.Lrkfn198:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn198]
                        lea              rsi, [rsp + 2320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              al, 104;                             je    n58_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n63_var_α
n62_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   n58_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              mov              r11, 47
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
                        mov              r11, 48
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2280], rax
                        .section         .rodata
.Lrkfn202:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn202]
                        lea              rsi, [rsp + 2272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              al, 104;                             je    n58_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_lit_string_α
n64_call_builtin_prolog_β:
                        mov              r11, 48;                             jmp   n58_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rsp + 2240], 2            # result
                        mov              dword ptr [rsp + 2244], 0
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n66_call_builtin_prolog_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              r11, 50
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2232], rax
                        .section         .rodata
.Lrkfn205:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn205]
                        lea              rsi, [rsp + 2224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    n58_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n67_var_α
n66_call_builtin_prolog_β:
                        mov              r11, 50;                             jmp   n58_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              r11, 51
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n68_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2184], rax
                        .section         .rodata
.Lrkfn209:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rsp + 2176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    n58_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n69_lit_string_α
n68_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n58_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              r11, 53
                        mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 0
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n70_call_builtin_prolog_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2136], rax
                        .section         .rodata
.Lrkfn212:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rsp + 2128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    n58_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_var_α
n70_call_builtin_prolog_β:
                        mov              r11, 54;                             jmp   n58_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              mov              r11, 55
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
                        mov              r11, 56
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2088], rax
                        .section         .rodata
.Lrkfn216:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 2080]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n58_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_lit_string_α
n72_call_builtin_prolog_β:
                        mov              r11, 56;                             jmp   n58_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 57
                        mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 0
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n74_call_builtin_prolog_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_prolog_α:
                        mov              r11, 58
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2040], rax
                        .section         .rodata
.Lrkfn219:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rsp + 2032]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    n58_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_var_ref_α
n74_call_builtin_prolog_β:
                        mov              r11, 58;                             jmp   n58_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3328]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n76_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_proc_staged_α: mov              r11, 60
                        lea              rsi, [rsp + 2000]
                        call             float_check$2F1_dcα;                 jmp   .Lx223_2
.Lx223_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx223_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1952]
                        mov              rdx, qword ptr [rsp + 1960]
.Lx223_29:              mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n58_call_proc_staged_β
                                                                              jmp   n77_var_α
n76_call_proc_staged_β: mov              r11, 60;                             jmp   n58_call_proc_staged_β
.Lx223_0:               .quad            .Lx223_0_s
.Lx223_0_s:             .string          "float_check/1"
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              mov              r11, 61
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n78_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_prolog_α:
                        mov              r11, 62
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1928], rax
                        .section         .rodata
.Lrkfn227:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rsp + 1920]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    n76_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_lit_string_α
n78_call_builtin_prolog_β:
                        mov              r11, 62;                             jmp   n76_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 0
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n80_call_builtin_prolog_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              r11, 64
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn230:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 1872]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n76_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_lit_integer_α
n80_call_builtin_prolog_β:
                        mov              r11, 64;                             jmp   n76_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      mov              r11, 65
                        mov              qword ptr [rsp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n82_lit_integer_α
.Lx231_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      mov              r11, 66
                        mov              qword ptr [rsp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n83_var_ref_α
.Lx232_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3312]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n84_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_proc_staged_α: mov              r11, 68
                        lea              rsi, [rsp + 1808]
                        lea              rdx, [rsp + 1824]
                        lea              rcx, [rsp + 1840]
                        call             max$2F3_dcα;                         jmp   .Lx236_2
.Lx236_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx236_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1728]
                        mov              rdx, qword ptr [rsp + 1736]
.Lx236_29:              mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    n76_call_proc_staged_β
                                                                              jmp   n85_var_α
n84_call_proc_staged_β: mov              r11, 68;                             jmp   n76_call_proc_staged_β
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "max/3"
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              mov              r11, 69
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n86_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1704], rax
                        .section         .rodata
.Lrkfn240:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn240]
                        lea              rsi, [rsp + 1696]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    n84_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_lit_string_α
n86_call_builtin_prolog_β:
                        mov              r11, 70;                             jmp   n84_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 0
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n88_call_builtin_prolog_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              r11, 72
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1656], rax
                        .section         .rodata
.Lrkfn243:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn243]
                        lea              rsi, [rsp + 1648]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n84_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n89_lit_string_α
n88_call_builtin_prolog_β:
                        mov              r11, 72;                             jmp   n84_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       mov              r11, 73
                        mov              qword ptr [rsp + 1600], 2            # result
                        mov              dword ptr [rsp + 1604], 5
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n90_var_ref_α
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3296]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n91_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α: mov              r11, 75
                        lea              rsi, [rsp + 1600]
                        lea              rdx, [rsp + 1616]
                        call             unify_test$2F2_dcα;                  jmp   .Lx248_2
.Lx248_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx248_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
.Lx248_29:              mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n84_call_proc_staged_β
                                                                              jmp   n92_var_α
n91_call_proc_staged_β: mov              r11, 75;                             jmp   n84_call_proc_staged_β
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "unify_test/2"
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              r11, 76
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              r11, 77
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1512], rax
                        .section         .rodata
.Lrkfn252:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn252]
                        lea              rsi, [rsp + 1504]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              al, 104;                             je    n91_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_lit_string_α
n93_call_builtin_prolog_β:
                        mov              r11, 77;                             jmp   n91_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 78
                        mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 0
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n95_call_builtin_prolog_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
                        mov              r11, 79
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn255:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn255]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n91_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n96_var_ref_α
n95_call_builtin_prolog_β:
                        mov              r11, 79;                             jmp   n91_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3280]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              r11, 81
                        mov              qword ptr [rsp + 1424], 2            # result
                        mov              dword ptr [rsp + 1428], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n98_lit_string_α
.Lx258_0:               .quad            .Lx258_0_s
.Lx258_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              r11, 82
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n99_lit_string_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 83
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n100_lit_string_α
.Lx260_0:               .quad            .Lx260_0_s
.Lx260_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              r11, 84
                        mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n101_lit_string_α
.Lx261_0:               .quad            .Lx261_0_s
.Lx261_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              r11, 85
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n102_lit_string_α
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 86
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n103_lit_string_α
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 2
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n104_call_builtin_prolog_α
.Lx264_0:               .quad            .Lx264_0_s
.Lx264_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              r11, 88
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1144], rax
                        lea              rdi, [rsp + 1136]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    $disj0$2F8_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n105_call_builtin_prolog_α
n104_call_builtin_prolog_β:
                        mov              r11, 88;                             jmp   $disj0$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              r11, 89
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1256], rax
                        lea              rdi, [rsp + 1248]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    $disj0$2F8_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n106_call_builtin_prolog_α
n105_call_builtin_prolog_β:
                        mov              r11, 89;                             jmp   $disj0$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              r11, 90
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1368], rax
                        lea              rdi, [rsp + 1360]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n112_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n107_call_proc_staged_α
n106_call_builtin_prolog_β:
                        mov              r11, 90;                             jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_call_proc_staged_α:
                        mov              r11, 91
                        mov              qword ptr [rsp + 1040], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx269_200
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx269_201
.Lx269_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx269_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx269_202
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx269_203
.Lx269_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx269_203:             lea              rax, [rip + .Lx269_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx269_1
                        lea              rcx, [rip + .Lx269_4]
                        push             rcx
                        lea              rcx, [rip + .Lx269_3]
                        push             rcx;                                 jmp   rax
.Lx269_3:               add              rsp, 16
                        mov              qword ptr [rsp + 1048], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1040]
                        test             rax, rax;                            jne   .Lx269_5
                        mov              qword ptr [rsp + 1040], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx269_2
.Lx269_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx269_2
.Lx269_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 1040]
                        test             rax, rax;                            jne   .Lx269_6
                        mov              qword ptr [rsp + 1040], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx269_2
.Lx269_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx269_2
.Lx269_1:               call             rt_faildescr@PLT
.Lx269_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx269_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
.Lx269_29:              mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n91_call_proc_staged_β
                                                                              jmp   n108_var_α
n107_call_proc_staged_β:
                        mov              r11, 91
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1040], 0
                        lea              rdi, [rsp + 1056]
                        lea              rsi, [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n91_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n91_call_proc_staged_β
                        lea              r8, [rip + .Lx269_7]
                        push             r8
                        lea              rcx, [rip + .Lx269_3]
                        lea              rdx, [rip + .Lx269_4];               jmp   rax
.Lx269_7:               add              rsp, 8
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n91_call_proc_staged_β
                                                                              jmp   n108_var_α
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             mov              r11, 92
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 984], rax;          jmp   n109_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              r11, 93
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn273:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]
                        lea              rsi, [rsp + 960]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n107_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n110_lit_string_α
n109_call_builtin_prolog_β:
                        mov              r11, 93;                             jmp   n107_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              r11, 94
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 0
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n111_call_builtin_prolog_α
.Lx274_0:               .quad            .Lx274_0_s
.Lx274_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              r11, 95
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn276:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rsp + 912]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n107_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n107_call_proc_staged_β
n111_call_builtin_prolog_β:
                        mov              r11, 95;                             jmp   n107_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              r11, 96
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 880]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    $disj0$2F8_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n113_var_ref_α
n112_call_builtin_prolog_β:
                        mov              r11, 96;                             jmp   $disj0$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n114_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3392]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n115_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        lea              r8, [rsp + 800]
.Lx282_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx282_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx282_41
                        cmp              esi, 1;                              jne   .Lx282_55
                        mov              r8, rax;                             jmp   .Lx282_40
.Lx282_55:              cmp              esi, 2;                              jne   .Lx282_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx282_41
                        mov              r8, rax;                             jmp   .Lx282_40
.Lx282_56:              cmp              al, 72;                              jne   .Lx282_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx282_41
                        cmp              rax, r8;                             je    .Lx282_41
                        mov              r8, rax;                             jmp   .Lx282_40
.Lx282_41:              lea              r9, [rsp + 816]
.Lx282_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx282_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx282_43
                        cmp              esi, 1;                              jne   .Lx282_57
                        mov              r9, rax;                             jmp   .Lx282_42
.Lx282_57:              cmp              esi, 2;                              jne   .Lx282_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx282_43
                        mov              r9, rax;                             jmp   .Lx282_42
.Lx282_58:              cmp              al, 72;                              jne   .Lx282_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx282_43
                        cmp              rax, r9;                             je    .Lx282_43
                        mov              r9, rax;                             jmp   .Lx282_42
.Lx282_43:              cmp              r8, r9;                              je    .Lx282_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx282_44
                        cmp              al, 104;                             je    .Lx282_44
                        cmp              al, 72;                              jne   .Lx282_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx282_44
                                                                              jmp   .Lx282_45
.Lx282_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx282_53
                        cmp              al, 104;                             je    .Lx282_53
                        cmp              al, 72;                              jne   .Lx282_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx282_53
                                                                              jmp   .Lx282_46
.Lx282_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx282_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx282_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx282_51
.Lx282_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx282_47
                        cmp              al, 104;                             je    .Lx282_47
                        cmp              al, 72;                              jne   .Lx282_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx282_47
                                                                              jmp   .Lx282_48
.Lx282_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx282_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx282_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx282_51
.Lx282_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx282_49
                        cmp              dl, 80;                              je    .Lx282_53
                                                                              jmp   .Lx282_52
.Lx282_49:              cmp              dl, 80;                              je    .Lx282_52
                        cmp              cl, 5;                               je    .Lx282_53
                        cmp              dl, 5;                               je    .Lx282_53
                        cmp              cl, 3;                               jne   .Lx282_50
                        cmp              dl, 3;                               jne   .Lx282_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx282_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx282_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx282_51
                                                                              jmp   .Lx282_52
.Lx282_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx282_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx282_53
.Lx282_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx282_54
.Lx282_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx282_54
.Lx282_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx282_54:              mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n116_var_ref_α
n115_call_builtin_prolog_β:
                        mov              r11, 99;                             jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3376]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n118_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        lea              r8, [rsp + 720]
.Lx287_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx287_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx287_41
                        cmp              esi, 1;                              jne   .Lx287_55
                        mov              r8, rax;                             jmp   .Lx287_40
.Lx287_55:              cmp              esi, 2;                              jne   .Lx287_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx287_41
                        mov              r8, rax;                             jmp   .Lx287_40
.Lx287_56:              cmp              al, 72;                              jne   .Lx287_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx287_41
                        cmp              rax, r8;                             je    .Lx287_41
                        mov              r8, rax;                             jmp   .Lx287_40
.Lx287_41:              lea              r9, [rsp + 736]
.Lx287_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx287_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx287_43
                        cmp              esi, 1;                              jne   .Lx287_57
                        mov              r9, rax;                             jmp   .Lx287_42
.Lx287_57:              cmp              esi, 2;                              jne   .Lx287_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx287_43
                        mov              r9, rax;                             jmp   .Lx287_42
.Lx287_58:              cmp              al, 72;                              jne   .Lx287_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx287_43
                        cmp              rax, r9;                             je    .Lx287_43
                        mov              r9, rax;                             jmp   .Lx287_42
.Lx287_43:              cmp              r8, r9;                              je    .Lx287_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx287_44
                        cmp              al, 104;                             je    .Lx287_44
                        cmp              al, 72;                              jne   .Lx287_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx287_44
                                                                              jmp   .Lx287_45
.Lx287_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx287_53
                        cmp              al, 104;                             je    .Lx287_53
                        cmp              al, 72;                              jne   .Lx287_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx287_53
                                                                              jmp   .Lx287_46
.Lx287_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx287_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx287_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx287_51
.Lx287_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx287_47
                        cmp              al, 104;                             je    .Lx287_47
                        cmp              al, 72;                              jne   .Lx287_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx287_47
                                                                              jmp   .Lx287_48
.Lx287_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx287_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx287_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx287_51
.Lx287_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx287_49
                        cmp              dl, 80;                              je    .Lx287_53
                                                                              jmp   .Lx287_52
.Lx287_49:              cmp              dl, 80;                              je    .Lx287_52
                        cmp              cl, 5;                               je    .Lx287_53
                        cmp              dl, 5;                               je    .Lx287_53
                        cmp              cl, 3;                               jne   .Lx287_50
                        cmp              dl, 3;                               jne   .Lx287_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx287_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx287_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx287_51
                                                                              jmp   .Lx287_52
.Lx287_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx287_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx287_53
.Lx287_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx287_54
.Lx287_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx287_54
.Lx287_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx287_54:              mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n119_var_ref_α
n118_call_builtin_prolog_β:
                        mov              r11, 102;                            jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n120_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3360]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              r11, 105
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        lea              r8, [rsp + 640]
.Lx292_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx292_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx292_41
                        cmp              esi, 1;                              jne   .Lx292_55
                        mov              r8, rax;                             jmp   .Lx292_40
.Lx292_55:              cmp              esi, 2;                              jne   .Lx292_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx292_41
                        mov              r8, rax;                             jmp   .Lx292_40
.Lx292_56:              cmp              al, 72;                              jne   .Lx292_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx292_41
                        cmp              rax, r8;                             je    .Lx292_41
                        mov              r8, rax;                             jmp   .Lx292_40
.Lx292_41:              lea              r9, [rsp + 656]
.Lx292_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx292_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx292_43
                        cmp              esi, 1;                              jne   .Lx292_57
                        mov              r9, rax;                             jmp   .Lx292_42
.Lx292_57:              cmp              esi, 2;                              jne   .Lx292_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx292_43
                        mov              r9, rax;                             jmp   .Lx292_42
.Lx292_58:              cmp              al, 72;                              jne   .Lx292_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx292_43
                        cmp              rax, r9;                             je    .Lx292_43
                        mov              r9, rax;                             jmp   .Lx292_42
.Lx292_43:              cmp              r8, r9;                              je    .Lx292_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx292_44
                        cmp              al, 104;                             je    .Lx292_44
                        cmp              al, 72;                              jne   .Lx292_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx292_44
                                                                              jmp   .Lx292_45
.Lx292_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx292_53
                        cmp              al, 104;                             je    .Lx292_53
                        cmp              al, 72;                              jne   .Lx292_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx292_53
                                                                              jmp   .Lx292_46
.Lx292_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx292_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx292_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx292_51
.Lx292_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx292_47
                        cmp              al, 104;                             je    .Lx292_47
                        cmp              al, 72;                              jne   .Lx292_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx292_47
                                                                              jmp   .Lx292_48
.Lx292_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx292_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx292_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx292_51
.Lx292_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx292_49
                        cmp              dl, 80;                              je    .Lx292_53
                                                                              jmp   .Lx292_52
.Lx292_49:              cmp              dl, 80;                              je    .Lx292_52
                        cmp              cl, 5;                               je    .Lx292_53
                        cmp              dl, 5;                               je    .Lx292_53
                        cmp              cl, 3;                               jne   .Lx292_50
                        cmp              dl, 3;                               jne   .Lx292_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx292_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx292_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx292_51
                                                                              jmp   .Lx292_52
.Lx292_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx292_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx292_53
.Lx292_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx292_54
.Lx292_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx292_54
.Lx292_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx292_54:              mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_var_ref_α
n121_call_builtin_prolog_β:
                        mov              r11, 105;                            jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n123_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3344]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n124_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        mov              r11, 108
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        lea              r8, [rsp + 560]
.Lx297_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx297_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx297_41
                        cmp              esi, 1;                              jne   .Lx297_55
                        mov              r8, rax;                             jmp   .Lx297_40
.Lx297_55:              cmp              esi, 2;                              jne   .Lx297_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx297_41
                        mov              r8, rax;                             jmp   .Lx297_40
.Lx297_56:              cmp              al, 72;                              jne   .Lx297_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx297_41
                        cmp              rax, r8;                             je    .Lx297_41
                        mov              r8, rax;                             jmp   .Lx297_40
.Lx297_41:              lea              r9, [rsp + 576]
.Lx297_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx297_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx297_43
                        cmp              esi, 1;                              jne   .Lx297_57
                        mov              r9, rax;                             jmp   .Lx297_42
.Lx297_57:              cmp              esi, 2;                              jne   .Lx297_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx297_43
                        mov              r9, rax;                             jmp   .Lx297_42
.Lx297_58:              cmp              al, 72;                              jne   .Lx297_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx297_43
                        cmp              rax, r9;                             je    .Lx297_43
                        mov              r9, rax;                             jmp   .Lx297_42
.Lx297_43:              cmp              r8, r9;                              je    .Lx297_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx297_44
                        cmp              al, 104;                             je    .Lx297_44
                        cmp              al, 72;                              jne   .Lx297_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx297_44
                                                                              jmp   .Lx297_45
.Lx297_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx297_53
                        cmp              al, 104;                             je    .Lx297_53
                        cmp              al, 72;                              jne   .Lx297_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx297_53
                                                                              jmp   .Lx297_46
.Lx297_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx297_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx297_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx297_51
.Lx297_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx297_47
                        cmp              al, 104;                             je    .Lx297_47
                        cmp              al, 72;                              jne   .Lx297_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx297_47
                                                                              jmp   .Lx297_48
.Lx297_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx297_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx297_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx297_51
.Lx297_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx297_49
                        cmp              dl, 80;                              je    .Lx297_53
                                                                              jmp   .Lx297_52
.Lx297_49:              cmp              dl, 80;                              je    .Lx297_52
                        cmp              cl, 5;                               je    .Lx297_53
                        cmp              dl, 5;                               je    .Lx297_53
                        cmp              cl, 3;                               jne   .Lx297_50
                        cmp              dl, 3;                               jne   .Lx297_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx297_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx297_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx297_51
                                                                              jmp   .Lx297_52
.Lx297_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx297_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx297_53
.Lx297_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx297_54
.Lx297_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx297_54
.Lx297_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx297_54:              mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n125_var_ref_α
n124_call_builtin_prolog_β:
                        mov              r11, 108;                            jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3328]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
                        mov              r11, 111
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        lea              rdi, [rsp + 480]
                        lea              r8, [rsp + 480]
.Lx302_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx302_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx302_41
                        cmp              esi, 1;                              jne   .Lx302_55
                        mov              r8, rax;                             jmp   .Lx302_40
.Lx302_55:              cmp              esi, 2;                              jne   .Lx302_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx302_41
                        mov              r8, rax;                             jmp   .Lx302_40
.Lx302_56:              cmp              al, 72;                              jne   .Lx302_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx302_41
                        cmp              rax, r8;                             je    .Lx302_41
                        mov              r8, rax;                             jmp   .Lx302_40
.Lx302_41:              lea              r9, [rsp + 496]
.Lx302_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx302_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx302_43
                        cmp              esi, 1;                              jne   .Lx302_57
                        mov              r9, rax;                             jmp   .Lx302_42
.Lx302_57:              cmp              esi, 2;                              jne   .Lx302_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx302_43
                        mov              r9, rax;                             jmp   .Lx302_42
.Lx302_58:              cmp              al, 72;                              jne   .Lx302_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx302_43
                        cmp              rax, r9;                             je    .Lx302_43
                        mov              r9, rax;                             jmp   .Lx302_42
.Lx302_43:              cmp              r8, r9;                              je    .Lx302_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx302_44
                        cmp              al, 104;                             je    .Lx302_44
                        cmp              al, 72;                              jne   .Lx302_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx302_44
                                                                              jmp   .Lx302_45
.Lx302_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx302_53
                        cmp              al, 104;                             je    .Lx302_53
                        cmp              al, 72;                              jne   .Lx302_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx302_53
                                                                              jmp   .Lx302_46
.Lx302_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx302_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx302_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx302_51
.Lx302_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx302_47
                        cmp              al, 104;                             je    .Lx302_47
                        cmp              al, 72;                              jne   .Lx302_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx302_47
                                                                              jmp   .Lx302_48
.Lx302_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx302_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx302_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx302_51
.Lx302_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx302_49
                        cmp              dl, 80;                              je    .Lx302_53
                                                                              jmp   .Lx302_52
.Lx302_49:              cmp              dl, 80;                              je    .Lx302_52
                        cmp              cl, 5;                               je    .Lx302_53
                        cmp              dl, 5;                               je    .Lx302_53
                        cmp              cl, 3;                               jne   .Lx302_50
                        cmp              dl, 3;                               jne   .Lx302_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx302_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx302_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx302_51
                                                                              jmp   .Lx302_52
.Lx302_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx302_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx302_53
.Lx302_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx302_54
.Lx302_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx302_54
.Lx302_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx302_54:              mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n128_var_ref_α
n127_call_builtin_prolog_β:
                        mov              r11, 111;                            jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 96]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3312]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n130_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              r11, 114
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        lea              r8, [rsp + 400]
.Lx307_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx307_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx307_41
                        cmp              esi, 1;                              jne   .Lx307_55
                        mov              r8, rax;                             jmp   .Lx307_40
.Lx307_55:              cmp              esi, 2;                              jne   .Lx307_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx307_41
                        mov              r8, rax;                             jmp   .Lx307_40
.Lx307_56:              cmp              al, 72;                              jne   .Lx307_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx307_41
                        cmp              rax, r8;                             je    .Lx307_41
                        mov              r8, rax;                             jmp   .Lx307_40
.Lx307_41:              lea              r9, [rsp + 416]
.Lx307_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx307_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx307_43
                        cmp              esi, 1;                              jne   .Lx307_57
                        mov              r9, rax;                             jmp   .Lx307_42
.Lx307_57:              cmp              esi, 2;                              jne   .Lx307_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx307_43
                        mov              r9, rax;                             jmp   .Lx307_42
.Lx307_58:              cmp              al, 72;                              jne   .Lx307_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx307_43
                        cmp              rax, r9;                             je    .Lx307_43
                        mov              r9, rax;                             jmp   .Lx307_42
.Lx307_43:              cmp              r8, r9;                              je    .Lx307_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx307_44
                        cmp              al, 104;                             je    .Lx307_44
                        cmp              al, 72;                              jne   .Lx307_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx307_44
                                                                              jmp   .Lx307_45
.Lx307_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx307_53
                        cmp              al, 104;                             je    .Lx307_53
                        cmp              al, 72;                              jne   .Lx307_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx307_53
                                                                              jmp   .Lx307_46
.Lx307_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx307_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx307_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx307_51
.Lx307_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx307_47
                        cmp              al, 104;                             je    .Lx307_47
                        cmp              al, 72;                              jne   .Lx307_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx307_47
                                                                              jmp   .Lx307_48
.Lx307_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx307_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx307_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx307_51
.Lx307_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx307_49
                        cmp              dl, 80;                              je    .Lx307_53
                                                                              jmp   .Lx307_52
.Lx307_49:              cmp              dl, 80;                              je    .Lx307_52
                        cmp              cl, 5;                               je    .Lx307_53
                        cmp              dl, 5;                               je    .Lx307_53
                        cmp              cl, 3;                               jne   .Lx307_50
                        cmp              dl, 3;                               jne   .Lx307_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx307_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx307_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx307_51
                                                                              jmp   .Lx307_52
.Lx307_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx307_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx307_53
.Lx307_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx307_54
.Lx307_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx307_54
.Lx307_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx307_54:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n131_var_ref_α
n130_call_builtin_prolog_β:
                        mov              r11, 114;                            jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 112]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n132_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3296]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              r11, 117
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        lea              r8, [rsp + 320]
.Lx312_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx312_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx312_41
                        cmp              esi, 1;                              jne   .Lx312_55
                        mov              r8, rax;                             jmp   .Lx312_40
.Lx312_55:              cmp              esi, 2;                              jne   .Lx312_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx312_41
                        mov              r8, rax;                             jmp   .Lx312_40
.Lx312_56:              cmp              al, 72;                              jne   .Lx312_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx312_41
                        cmp              rax, r8;                             je    .Lx312_41
                        mov              r8, rax;                             jmp   .Lx312_40
.Lx312_41:              lea              r9, [rsp + 336]
.Lx312_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx312_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx312_43
                        cmp              esi, 1;                              jne   .Lx312_57
                        mov              r9, rax;                             jmp   .Lx312_42
.Lx312_57:              cmp              esi, 2;                              jne   .Lx312_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx312_43
                        mov              r9, rax;                             jmp   .Lx312_42
.Lx312_58:              cmp              al, 72;                              jne   .Lx312_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx312_43
                        cmp              rax, r9;                             je    .Lx312_43
                        mov              r9, rax;                             jmp   .Lx312_42
.Lx312_43:              cmp              r8, r9;                              je    .Lx312_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx312_44
                        cmp              al, 104;                             je    .Lx312_44
                        cmp              al, 72;                              jne   .Lx312_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx312_44
                                                                              jmp   .Lx312_45
.Lx312_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx312_53
                        cmp              al, 104;                             je    .Lx312_53
                        cmp              al, 72;                              jne   .Lx312_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx312_53
                                                                              jmp   .Lx312_46
.Lx312_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx312_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx312_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx312_51
.Lx312_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx312_47
                        cmp              al, 104;                             je    .Lx312_47
                        cmp              al, 72;                              jne   .Lx312_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx312_47
                                                                              jmp   .Lx312_48
.Lx312_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx312_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx312_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx312_51
.Lx312_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx312_49
                        cmp              dl, 80;                              je    .Lx312_53
                                                                              jmp   .Lx312_52
.Lx312_49:              cmp              dl, 80;                              je    .Lx312_52
                        cmp              cl, 5;                               je    .Lx312_53
                        cmp              dl, 5;                               je    .Lx312_53
                        cmp              cl, 3;                               jne   .Lx312_50
                        cmp              dl, 3;                               jne   .Lx312_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx312_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx312_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx312_51
                                                                              jmp   .Lx312_52
.Lx312_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx312_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx312_53
.Lx312_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx312_54
.Lx312_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx312_54
.Lx312_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx312_54:              mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n134_var_ref_α
n133_call_builtin_prolog_β:
                        mov              r11, 117;                            jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 128]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n135_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3280]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n136_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              r11, 120
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        lea              r8, [rsp + 240]
.Lx317_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx317_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx317_41
                        cmp              esi, 1;                              jne   .Lx317_55
                        mov              r8, rax;                             jmp   .Lx317_40
.Lx317_55:              cmp              esi, 2;                              jne   .Lx317_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx317_41
                        mov              r8, rax;                             jmp   .Lx317_40
.Lx317_56:              cmp              al, 72;                              jne   .Lx317_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx317_41
                        cmp              rax, r8;                             je    .Lx317_41
                        mov              r8, rax;                             jmp   .Lx317_40
.Lx317_41:              lea              r9, [rsp + 256]
.Lx317_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx317_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx317_43
                        cmp              esi, 1;                              jne   .Lx317_57
                        mov              r9, rax;                             jmp   .Lx317_42
.Lx317_57:              cmp              esi, 2;                              jne   .Lx317_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx317_43
                        mov              r9, rax;                             jmp   .Lx317_42
.Lx317_58:              cmp              al, 72;                              jne   .Lx317_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx317_43
                        cmp              rax, r9;                             je    .Lx317_43
                        mov              r9, rax;                             jmp   .Lx317_42
.Lx317_43:              cmp              r8, r9;                              je    .Lx317_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx317_44
                        cmp              al, 104;                             je    .Lx317_44
                        cmp              al, 72;                              jne   .Lx317_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx317_44
                                                                              jmp   .Lx317_45
.Lx317_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx317_53
                        cmp              al, 104;                             je    .Lx317_53
                        cmp              al, 72;                              jne   .Lx317_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx317_53
                                                                              jmp   .Lx317_46
.Lx317_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx317_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx317_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx317_51
.Lx317_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx317_47
                        cmp              al, 104;                             je    .Lx317_47
                        cmp              al, 72;                              jne   .Lx317_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx317_47
                                                                              jmp   .Lx317_48
.Lx317_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx317_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx317_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx317_51
.Lx317_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx317_49
                        cmp              dl, 80;                              je    .Lx317_53
                                                                              jmp   .Lx317_52
.Lx317_49:              cmp              dl, 80;                              je    .Lx317_52
                        cmp              cl, 5;                               je    .Lx317_53
                        cmp              dl, 5;                               je    .Lx317_53
                        cmp              cl, 3;                               jne   .Lx317_50
                        cmp              dl, 3;                               jne   .Lx317_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx317_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx317_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx317_51
                                                                              jmp   .Lx317_52
.Lx317_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx317_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx317_53
.Lx317_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx317_54
.Lx317_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx317_54
.Lx317_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx317_54:              mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n138_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_suspend_α
n136_call_builtin_prolog_β:
                        mov              r11, 120;                            jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n137_suspend_α:         mov              r11, 121
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx319_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3264];         jmp   rax
.Lx319_61:              mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        lea              rdx, [rip + n137_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n137_suspend_β]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F8_γ
n137_suspend_β:         mov              r11, 121;                            jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_prolog_α:
                        mov              r11, 122
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    $disj0$2F8_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   $disj0$2F8_ω
n138_call_builtin_prolog_β:
                        mov              r11, 122;                            jmp   $disj0$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F8_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F8_β:
                                                                              jmp   n137_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F8_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx320_50
                        mov              qword ptr [rsp + 3264], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 3264];         jmp   rax
.Lx320_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3432]
                        add              rsp, 3456;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F8_ω:
                        mov              rcx, qword ptr [rsp + 3440]
                        add              rsp, 3456;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__float_check$2F1:
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rcx
                        mov              qword ptr [rsp + 416], rdx
                        mov              qword ptr [rsp + 424], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 400
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
float_check$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n321_call_builtin_prolog_α:
                        mov              r11, 123
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx333_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx333_101
.Lx333_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx333_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx333_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx333_101
.Lx333_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx333_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    float_check$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n322_var_ref_α
n321_call_builtin_prolog_β:
                        mov              r11, 123;                            jmp   float_check$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n323_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n324_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n324_call_builtin_prolog_α:
                        mov              r11, 126
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
.Lx338_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx338_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx338_41
                        cmp              esi, 1;                              jne   .Lx338_55
                        mov              r8, rax;                             jmp   .Lx338_40
.Lx338_55:              cmp              esi, 2;                              jne   .Lx338_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx338_41
                        mov              r8, rax;                             jmp   .Lx338_40
.Lx338_56:              cmp              al, 72;                              jne   .Lx338_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx338_41
                        cmp              rax, r8;                             je    .Lx338_41
                        mov              r8, rax;                             jmp   .Lx338_40
.Lx338_41:              lea              r9, [rsp + 320]
.Lx338_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx338_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx338_43
                        cmp              esi, 1;                              jne   .Lx338_57
                        mov              r9, rax;                             jmp   .Lx338_42
.Lx338_57:              cmp              esi, 2;                              jne   .Lx338_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx338_43
                        mov              r9, rax;                             jmp   .Lx338_42
.Lx338_58:              cmp              al, 72;                              jne   .Lx338_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx338_43
                        cmp              rax, r9;                             je    .Lx338_43
                        mov              r9, rax;                             jmp   .Lx338_42
.Lx338_43:              cmp              r8, r9;                              je    .Lx338_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx338_44
                        cmp              al, 104;                             je    .Lx338_44
                        cmp              al, 72;                              jne   .Lx338_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx338_44
                                                                              jmp   .Lx338_45
.Lx338_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx338_53
                        cmp              al, 104;                             je    .Lx338_53
                        cmp              al, 72;                              jne   .Lx338_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx338_53
                                                                              jmp   .Lx338_46
.Lx338_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx338_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx338_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx338_51
.Lx338_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx338_47
                        cmp              al, 104;                             je    .Lx338_47
                        cmp              al, 72;                              jne   .Lx338_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx338_47
                                                                              jmp   .Lx338_48
.Lx338_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx338_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx338_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx338_51
.Lx338_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx338_49
                        cmp              dl, 80;                              je    .Lx338_53
                                                                              jmp   .Lx338_52
.Lx338_49:              cmp              dl, 80;                              je    .Lx338_52
                        cmp              cl, 5;                               je    .Lx338_53
                        cmp              dl, 5;                               je    .Lx338_53
                        cmp              cl, 3;                               jne   .Lx338_50
                        cmp              dl, 3;                               jne   .Lx338_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx338_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx338_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx338_51
                                                                              jmp   .Lx338_52
.Lx338_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx338_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx338_53
.Lx338_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx338_54
.Lx338_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx338_54
.Lx338_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx338_54:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n332_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n325_var_ref_α
n324_call_builtin_prolog_β:
                        mov              r11, 126;                            jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 368]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n326_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_real_α:        mov              r11, 128
                        mov              qword ptr [rsp + 256], 5             # result
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n327_lit_real_α
.Lx341_0:               .quad            4614253070214989087
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_real_α:        mov              r11, 129
                        mov              qword ptr [rsp + 272], 5             # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n328_call_builtin_prolog_α
.Lx342_0:               .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n328_call_builtin_prolog_α:
                        mov              r11, 130
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n332_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n329_call_builtin_prolog_α
n328_call_builtin_prolog_β:
                        mov              r11, 130;                            jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_prolog_α:
                        mov              r11, 131
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n332_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n330_move_label_α
n329_call_builtin_prolog_β:
                        mov              r11, 131;                            jmp   n332_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n330_move_label_α:      mov              r11, 132
                        lea              rax, [rip + n332_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 48], rax;           jmp   float_check$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n331_disjunction_α:     mov              r11, 133
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    float_check$2F1_ω
                                                                              jmp   rax
n331_disjunction_β:     mov              r11, 133;                            jmp   float_check$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n332_call_builtin_prolog_α:
                        mov              r11, 134
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    float_check$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   float_check$2F1_ω
n332_call_builtin_prolog_β:
                        mov              r11, 134;                            jmp   float_check$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
float_check$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
float_check$2F1_β:
                                                                              jmp   n331_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
float_check$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 408]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
float_check$2F1_ω:
                        mov              rcx, qword ptr [rsp + 416]
                        add              rsp, 432;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
float_check$2F1_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx350_2]
                        lea              rdx, [rip + .Lx350_3];               jmp   FN__float_check$2F1
.Lx350_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx350_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
member$2F2_α_body:
                        lea              rax, [rip + n359_suspend_β]
                        mov              qword ptr [rsp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n351_call_builtin_prolog_α:
                        mov              r11, 135
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx373_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx373_101
.Lx373_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx373_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx373_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx373_101
.Lx373_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx373_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n352_var_ref_α
n351_call_builtin_prolog_β:
                        mov              r11, 135;                            jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n353_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n354_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n354_call_builtin_prolog_α:
                        mov              r11, 138
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
.Lx378_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx378_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx378_41
                        cmp              esi, 1;                              jne   .Lx378_55
                        mov              r8, rax;                             jmp   .Lx378_40
.Lx378_55:              cmp              esi, 2;                              jne   .Lx378_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx378_41
                        mov              r8, rax;                             jmp   .Lx378_40
.Lx378_56:              cmp              al, 72;                              jne   .Lx378_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx378_41
                        cmp              rax, r8;                             je    .Lx378_41
                        mov              r8, rax;                             jmp   .Lx378_40
.Lx378_41:              lea              r9, [rsp + 608]
.Lx378_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx378_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx378_43
                        cmp              esi, 1;                              jne   .Lx378_57
                        mov              r9, rax;                             jmp   .Lx378_42
.Lx378_57:              cmp              esi, 2;                              jne   .Lx378_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx378_43
                        mov              r9, rax;                             jmp   .Lx378_42
.Lx378_58:              cmp              al, 72;                              jne   .Lx378_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx378_43
                        cmp              rax, r9;                             je    .Lx378_43
                        mov              r9, rax;                             jmp   .Lx378_42
.Lx378_43:              cmp              r8, r9;                              je    .Lx378_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx378_44
                        cmp              al, 104;                             je    .Lx378_44
                        cmp              al, 72;                              jne   .Lx378_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx378_44
                                                                              jmp   .Lx378_45
.Lx378_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx378_53
                        cmp              al, 104;                             je    .Lx378_53
                        cmp              al, 72;                              jne   .Lx378_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx378_53
                                                                              jmp   .Lx378_46
.Lx378_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx378_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx378_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx378_51
.Lx378_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx378_47
                        cmp              al, 104;                             je    .Lx378_47
                        cmp              al, 72;                              jne   .Lx378_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx378_47
                                                                              jmp   .Lx378_48
.Lx378_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx378_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx378_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx378_51
.Lx378_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx378_49
                        cmp              dl, 80;                              je    .Lx378_53
                                                                              jmp   .Lx378_52
.Lx378_49:              cmp              dl, 80;                              je    .Lx378_52
                        cmp              cl, 5;                               je    .Lx378_53
                        cmp              dl, 5;                               je    .Lx378_53
                        cmp              cl, 3;                               jne   .Lx378_50
                        cmp              dl, 3;                               jne   .Lx378_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx378_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx378_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx378_51
                                                                              jmp   .Lx378_52
.Lx378_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx378_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx378_53
.Lx378_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx378_54
.Lx378_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx378_54
.Lx378_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx378_54:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n360_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n355_var_ref_α
n354_call_builtin_prolog_β:
                        mov              r11, 138;                            jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n356_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n357_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n357_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n358_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n358_call_builtin_prolog_α:
                        mov              r11, 142
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
.Lx385_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx385_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx385_61
                        cmp              esi, 1;                              jne   .Lx385_62
                        mov              r8, rax;                             jmp   .Lx385_60
.Lx385_62:              cmp              esi, 2;                              jne   .Lx385_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx385_61
                        mov              r8, rax;                             jmp   .Lx385_60
.Lx385_63:              cmp              al, 72;                              jne   .Lx385_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx385_61
                        cmp              rax, r8;                             je    .Lx385_61
                        mov              r8, rax;                             jmp   .Lx385_60
.Lx385_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx385_80
                        cmp              al, 104;                             je    .Lx385_80
                        cmp              al, 72;                              jne   .Lx385_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx385_80
                                                                              jmp   .Lx385_74
.Lx385_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx385_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx385_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx385_73
                        lea              r9, [rsp + 512]
.Lx385_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx385_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx385_65
                        cmp              esi, 1;                              jne   .Lx385_66
                        mov              r9, rax;                             jmp   .Lx385_64
.Lx385_66:              cmp              esi, 2;                              jne   .Lx385_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx385_65
                        mov              r9, rax;                             jmp   .Lx385_64
.Lx385_67:              cmp              al, 72;                              jne   .Lx385_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx385_65
                        cmp              rax, r9;                             je    .Lx385_65
                        mov              r9, rax;                             jmp   .Lx385_64
.Lx385_65:              lea              rcx, [rsp + 528]
.Lx385_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx385_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx385_69
                        cmp              esi, 1;                              jne   .Lx385_70
                        mov              rcx, rax;                            jmp   .Lx385_68
.Lx385_70:              cmp              esi, 2;                              jne   .Lx385_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx385_69
                        mov              rcx, rax;                            jmp   .Lx385_68
.Lx385_71:              cmp              al, 72;                              jne   .Lx385_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx385_69
                        cmp              rax, rcx;                            je    .Lx385_69
                        mov              rcx, rax;                            jmp   .Lx385_68
.Lx385_69:              cmp              r9, rcx;                             je    .Lx385_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx385_75
                        cmp              al, 104;                             je    .Lx385_75
                        cmp              al, 72;                              jne   .Lx385_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx385_75
                                                                              jmp   .Lx385_72
.Lx385_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx385_76
                        cmp              al, 104;                             je    .Lx385_76
                        cmp              al, 72;                              jne   .Lx385_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx385_76
                                                                              jmp   .Lx385_72
.Lx385_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx385_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx385_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx385_77
.Lx385_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx385_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx385_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx385_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx385_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx385_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 512]
.Lx385_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx385_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx385_82
                        cmp              esi, 1;                              jne   .Lx385_83
                        mov              r9, rax;                             jmp   .Lx385_81
.Lx385_83:              cmp              esi, 2;                              jne   .Lx385_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx385_82
                        mov              r9, rax;                             jmp   .Lx385_81
.Lx385_84:              cmp              al, 72;                              jne   .Lx385_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx385_82
                        cmp              rax, r9;                             je    .Lx385_82
                        mov              r9, rax;                             jmp   .Lx385_81
.Lx385_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx385_85
                        cmp              al, 104;                             je    .Lx385_85
                        cmp              al, 72;                              jne   .Lx385_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx385_85
                                                                              jmp   .Lx385_86
.Lx385_85:              mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx385_87
.Lx385_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx385_87:              lea              rcx, [rsp + 528]
.Lx385_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx385_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx385_89
                        cmp              esi, 1;                              jne   .Lx385_90
                        mov              rcx, rax;                            jmp   .Lx385_88
.Lx385_90:              cmp              esi, 2;                              jne   .Lx385_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx385_89
                        mov              rcx, rax;                            jmp   .Lx385_88
.Lx385_91:              cmp              al, 72;                              jne   .Lx385_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx385_89
                        cmp              rax, rcx;                            je    .Lx385_89
                        mov              rcx, rax;                            jmp   .Lx385_88
.Lx385_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx385_92
                        cmp              al, 104;                             je    .Lx385_92
                        cmp              al, 72;                              jne   .Lx385_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx385_92
                                                                              jmp   .Lx385_93
.Lx385_92:              mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx385_94
.Lx385_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx385_94:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx385_77
.Lx385_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx385_77
.Lx385_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx385_77:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n360_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n359_suspend_α
n358_call_builtin_prolog_β:
                        mov              r11, 142;                            jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n359_suspend_α:         mov              r11, 143
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx387_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx387_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n359_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n359_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   member$2F2_γ
n359_suspend_β:         mov              r11, 143;                            jmp   n360_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_prolog_α:
                        mov              r11, 144
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n361_var_ref_α
n360_call_builtin_prolog_β:
                        mov              r11, 144;                            jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n362_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n363_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n363_call_builtin_prolog_α:
                        mov              r11, 147
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
.Lx393_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx393_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx393_41
                        cmp              esi, 1;                              jne   .Lx393_55
                        mov              r8, rax;                             jmp   .Lx393_40
.Lx393_55:              cmp              esi, 2;                              jne   .Lx393_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx393_41
                        mov              r8, rax;                             jmp   .Lx393_40
.Lx393_56:              cmp              al, 72;                              jne   .Lx393_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx393_41
                        cmp              rax, r8;                             je    .Lx393_41
                        mov              r8, rax;                             jmp   .Lx393_40
.Lx393_41:              lea              r9, [rsp + 368]
.Lx393_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx393_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx393_43
                        cmp              esi, 1;                              jne   .Lx393_57
                        mov              r9, rax;                             jmp   .Lx393_42
.Lx393_57:              cmp              esi, 2;                              jne   .Lx393_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx393_43
                        mov              r9, rax;                             jmp   .Lx393_42
.Lx393_58:              cmp              al, 72;                              jne   .Lx393_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx393_43
                        cmp              rax, r9;                             je    .Lx393_43
                        mov              r9, rax;                             jmp   .Lx393_42
.Lx393_43:              cmp              r8, r9;                              je    .Lx393_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx393_44
                        cmp              al, 104;                             je    .Lx393_44
                        cmp              al, 72;                              jne   .Lx393_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx393_44
                                                                              jmp   .Lx393_45
.Lx393_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx393_53
                        cmp              al, 104;                             je    .Lx393_53
                        cmp              al, 72;                              jne   .Lx393_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx393_53
                                                                              jmp   .Lx393_46
.Lx393_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx393_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx393_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx393_51
.Lx393_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx393_47
                        cmp              al, 104;                             je    .Lx393_47
                        cmp              al, 72;                              jne   .Lx393_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx393_47
                                                                              jmp   .Lx393_48
.Lx393_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx393_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx393_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx393_51
.Lx393_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx393_49
                        cmp              dl, 80;                              je    .Lx393_53
                                                                              jmp   .Lx393_52
.Lx393_49:              cmp              dl, 80;                              je    .Lx393_52
                        cmp              cl, 5;                               je    .Lx393_53
                        cmp              dl, 5;                               je    .Lx393_53
                        cmp              cl, 3;                               jne   .Lx393_50
                        cmp              dl, 3;                               jne   .Lx393_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx393_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx393_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx393_51
                                                                              jmp   .Lx393_52
.Lx393_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx393_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx393_53
.Lx393_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx393_54
.Lx393_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx393_54
.Lx393_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx393_54:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n372_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n364_var_ref_α
n363_call_builtin_prolog_β:
                        mov              r11, 147;                            jmp   n372_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n365_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n366_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         mov              r11, 150
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n367_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n367_call_builtin_prolog_α:
                        mov              r11, 151
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
.Lx400_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx400_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx400_61
                        cmp              esi, 1;                              jne   .Lx400_62
                        mov              r8, rax;                             jmp   .Lx400_60
.Lx400_62:              cmp              esi, 2;                              jne   .Lx400_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx400_61
                        mov              r8, rax;                             jmp   .Lx400_60
.Lx400_63:              cmp              al, 72;                              jne   .Lx400_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx400_61
                        cmp              rax, r8;                             je    .Lx400_61
                        mov              r8, rax;                             jmp   .Lx400_60
.Lx400_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx400_80
                        cmp              al, 104;                             je    .Lx400_80
                        cmp              al, 72;                              jne   .Lx400_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx400_80
                                                                              jmp   .Lx400_74
.Lx400_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx400_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx400_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx400_73
                        lea              r9, [rsp + 272]
.Lx400_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx400_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx400_65
                        cmp              esi, 1;                              jne   .Lx400_66
                        mov              r9, rax;                             jmp   .Lx400_64
.Lx400_66:              cmp              esi, 2;                              jne   .Lx400_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx400_65
                        mov              r9, rax;                             jmp   .Lx400_64
.Lx400_67:              cmp              al, 72;                              jne   .Lx400_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx400_65
                        cmp              rax, r9;                             je    .Lx400_65
                        mov              r9, rax;                             jmp   .Lx400_64
.Lx400_65:              lea              rcx, [rsp + 288]
.Lx400_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx400_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx400_69
                        cmp              esi, 1;                              jne   .Lx400_70
                        mov              rcx, rax;                            jmp   .Lx400_68
.Lx400_70:              cmp              esi, 2;                              jne   .Lx400_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx400_69
                        mov              rcx, rax;                            jmp   .Lx400_68
.Lx400_71:              cmp              al, 72;                              jne   .Lx400_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx400_69
                        cmp              rax, rcx;                            je    .Lx400_69
                        mov              rcx, rax;                            jmp   .Lx400_68
.Lx400_69:              cmp              r9, rcx;                             je    .Lx400_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx400_75
                        cmp              al, 104;                             je    .Lx400_75
                        cmp              al, 72;                              jne   .Lx400_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx400_75
                                                                              jmp   .Lx400_72
.Lx400_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx400_76
                        cmp              al, 104;                             je    .Lx400_76
                        cmp              al, 72;                              jne   .Lx400_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx400_76
                                                                              jmp   .Lx400_72
.Lx400_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx400_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx400_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx400_77
.Lx400_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx400_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx400_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx400_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx400_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx400_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 272]
.Lx400_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx400_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx400_82
                        cmp              esi, 1;                              jne   .Lx400_83
                        mov              r9, rax;                             jmp   .Lx400_81
.Lx400_83:              cmp              esi, 2;                              jne   .Lx400_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx400_82
                        mov              r9, rax;                             jmp   .Lx400_81
.Lx400_84:              cmp              al, 72;                              jne   .Lx400_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx400_82
                        cmp              rax, r9;                             je    .Lx400_82
                        mov              r9, rax;                             jmp   .Lx400_81
.Lx400_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx400_85
                        cmp              al, 104;                             je    .Lx400_85
                        cmp              al, 72;                              jne   .Lx400_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx400_85
                                                                              jmp   .Lx400_86
.Lx400_85:              mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx400_87
.Lx400_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx400_87:              lea              rcx, [rsp + 288]
.Lx400_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx400_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx400_89
                        cmp              esi, 1;                              jne   .Lx400_90
                        mov              rcx, rax;                            jmp   .Lx400_88
.Lx400_90:              cmp              esi, 2;                              jne   .Lx400_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx400_89
                        mov              rcx, rax;                            jmp   .Lx400_88
.Lx400_91:              cmp              al, 72;                              jne   .Lx400_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx400_89
                        cmp              rax, rcx;                            je    .Lx400_89
                        mov              rcx, rax;                            jmp   .Lx400_88
.Lx400_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx400_92
                        cmp              al, 104;                             je    .Lx400_92
                        cmp              al, 72;                              jne   .Lx400_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx400_92
                                                                              jmp   .Lx400_93
.Lx400_92:              mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx400_94
.Lx400_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx400_94:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx400_77
.Lx400_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx400_77
.Lx400_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx400_77:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n372_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n368_var_ref_α
n367_call_builtin_prolog_β:
                        mov              r11, 151;                            jmp   n372_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n369_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n370_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n370_call_proc_staged_α:
                        mov              r11, 154
                        mov              qword ptr [rsp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx406_200
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx406_201
.Lx406_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx406_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx406_202
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx406_203
.Lx406_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx406_203:             lea              rax, [rip + .Lx406_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx406_1
                        lea              rcx, [rip + .Lx406_4]
                        push             rcx
                        lea              rcx, [rip + .Lx406_3]
                        push             rcx;                                 jmp   rax
.Lx406_3:               add              rsp, 16
                        mov              qword ptr [rsp + 168], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx406_5
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx406_2
.Lx406_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx406_2
.Lx406_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx406_6
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx406_2
.Lx406_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx406_2
.Lx406_1:               call             rt_faildescr@PLT
.Lx406_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx406_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx406_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n372_call_builtin_prolog_α
                                                                              jmp   n371_suspend_α
n370_call_proc_staged_β:
                        mov              r11, 154
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 160], 0
                        lea              rdi, [rsp + 176]
                        lea              rsi, [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n372_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              ecx, 48
                        mov              r8d, 656
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n372_call_builtin_prolog_α
                        lea              r8, [rip + .Lx406_7]
                        push             r8
                        lea              rcx, [rip + .Lx406_3]
                        lea              rdx, [rip + .Lx406_4];               jmp   rax
.Lx406_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n372_call_builtin_prolog_α
                                                                              jmp   n371_suspend_α
.Lx406_0:               .quad            .Lx406_0_s
.Lx406_0_s:             .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n371_suspend_α:         mov              r11, 155
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx408_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx408_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n371_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n371_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   member$2F2_γ
n371_suspend_β:         mov              r11, 155;                            jmp   n370_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n372_call_builtin_prolog_α:
                        mov              r11, 156
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
                        cmp              al, 104;                             je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   member$2F2_ω
n372_call_builtin_prolog_β:
                        mov              r11, 156;                            jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_β:
                                                                              jmp   n359_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx409_50
                        mov              qword ptr [rsp + 656], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx409_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__max$2F3:
                        sub              rsp, 848
                        mov              qword ptr [rsp + 824], rcx
                        mov              qword ptr [rsp + 832], rdx
                        mov              qword ptr [rsp + 840], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 816
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
max$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n410_call_builtin_prolog_α:
                        mov              r11, 157
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx438_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx438_101
.Lx438_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx438_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx438_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx438_101
.Lx438_100:             lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx438_101:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    max$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n411_var_ref_α
n410_call_builtin_prolog_β:
                        mov              r11, 157;                            jmp   max$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n411_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n412_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n412_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n413_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n413_call_builtin_prolog_α:
                        mov              r11, 160
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        lea              r8, [rsp + 688]
.Lx443_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx443_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx443_41
                        cmp              esi, 1;                              jne   .Lx443_55
                        mov              r8, rax;                             jmp   .Lx443_40
.Lx443_55:              cmp              esi, 2;                              jne   .Lx443_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx443_41
                        mov              r8, rax;                             jmp   .Lx443_40
.Lx443_56:              cmp              al, 72;                              jne   .Lx443_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx443_41
                        cmp              rax, r8;                             je    .Lx443_41
                        mov              r8, rax;                             jmp   .Lx443_40
.Lx443_41:              lea              r9, [rsp + 704]
.Lx443_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx443_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx443_43
                        cmp              esi, 1;                              jne   .Lx443_57
                        mov              r9, rax;                             jmp   .Lx443_42
.Lx443_57:              cmp              esi, 2;                              jne   .Lx443_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx443_43
                        mov              r9, rax;                             jmp   .Lx443_42
.Lx443_58:              cmp              al, 72;                              jne   .Lx443_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx443_43
                        cmp              rax, r9;                             je    .Lx443_43
                        mov              r9, rax;                             jmp   .Lx443_42
.Lx443_43:              cmp              r8, r9;                              je    .Lx443_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx443_44
                        cmp              al, 104;                             je    .Lx443_44
                        cmp              al, 72;                              jne   .Lx443_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx443_44
                                                                              jmp   .Lx443_45
.Lx443_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx443_53
                        cmp              al, 104;                             je    .Lx443_53
                        cmp              al, 72;                              jne   .Lx443_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx443_53
                                                                              jmp   .Lx443_46
.Lx443_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx443_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx443_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx443_51
.Lx443_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx443_47
                        cmp              al, 104;                             je    .Lx443_47
                        cmp              al, 72;                              jne   .Lx443_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx443_47
                                                                              jmp   .Lx443_48
.Lx443_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx443_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx443_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx443_51
.Lx443_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx443_49
                        cmp              dl, 80;                              je    .Lx443_53
                                                                              jmp   .Lx443_52
.Lx443_49:              cmp              dl, 80;                              je    .Lx443_52
                        cmp              cl, 5;                               je    .Lx443_53
                        cmp              dl, 5;                               je    .Lx443_53
                        cmp              cl, 3;                               jne   .Lx443_50
                        cmp              dl, 3;                               jne   .Lx443_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx443_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx443_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx443_51
                                                                              jmp   .Lx443_52
.Lx443_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx443_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx443_53
.Lx443_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx443_54
.Lx443_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx443_54
.Lx443_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx443_54:              mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n425_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n414_var_ref_α
n413_call_builtin_prolog_β:
                        mov              r11, 160;                            jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n415_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n415_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 752]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n416_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n416_call_builtin_prolog_α:
                        mov              r11, 163
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        lea              r8, [rsp + 608]
.Lx448_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx448_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx448_41
                        cmp              esi, 1;                              jne   .Lx448_55
                        mov              r8, rax;                             jmp   .Lx448_40
.Lx448_55:              cmp              esi, 2;                              jne   .Lx448_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx448_41
                        mov              r8, rax;                             jmp   .Lx448_40
.Lx448_56:              cmp              al, 72;                              jne   .Lx448_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx448_41
                        cmp              rax, r8;                             je    .Lx448_41
                        mov              r8, rax;                             jmp   .Lx448_40
.Lx448_41:              lea              r9, [rsp + 624]
.Lx448_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx448_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx448_43
                        cmp              esi, 1;                              jne   .Lx448_57
                        mov              r9, rax;                             jmp   .Lx448_42
.Lx448_57:              cmp              esi, 2;                              jne   .Lx448_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx448_43
                        mov              r9, rax;                             jmp   .Lx448_42
.Lx448_58:              cmp              al, 72;                              jne   .Lx448_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx448_43
                        cmp              rax, r9;                             je    .Lx448_43
                        mov              r9, rax;                             jmp   .Lx448_42
.Lx448_43:              cmp              r8, r9;                              je    .Lx448_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx448_44
                        cmp              al, 104;                             je    .Lx448_44
                        cmp              al, 72;                              jne   .Lx448_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx448_44
                                                                              jmp   .Lx448_45
.Lx448_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx448_53
                        cmp              al, 104;                             je    .Lx448_53
                        cmp              al, 72;                              jne   .Lx448_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx448_53
                                                                              jmp   .Lx448_46
.Lx448_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx448_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx448_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx448_51
.Lx448_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx448_47
                        cmp              al, 104;                             je    .Lx448_47
                        cmp              al, 72;                              jne   .Lx448_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx448_47
                                                                              jmp   .Lx448_48
.Lx448_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx448_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx448_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx448_51
.Lx448_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx448_49
                        cmp              dl, 80;                              je    .Lx448_53
                                                                              jmp   .Lx448_52
.Lx448_49:              cmp              dl, 80;                              je    .Lx448_52
                        cmp              cl, 5;                               je    .Lx448_53
                        cmp              dl, 5;                               je    .Lx448_53
                        cmp              cl, 3;                               jne   .Lx448_50
                        cmp              dl, 3;                               jne   .Lx448_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx448_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx448_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx448_51
                                                                              jmp   .Lx448_52
.Lx448_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx448_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx448_53
.Lx448_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx448_54
.Lx448_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx448_54
.Lx448_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx448_54:              mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n425_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n417_var_ref_α
n416_call_builtin_prolog_β:
                        mov              r11, 163;                            jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n418_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 784]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n419_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n419_call_builtin_prolog_α:
                        mov              r11, 166
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        lea              r8, [rsp + 528]
.Lx453_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx453_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx453_41
                        cmp              esi, 1;                              jne   .Lx453_55
                        mov              r8, rax;                             jmp   .Lx453_40
.Lx453_55:              cmp              esi, 2;                              jne   .Lx453_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx453_41
                        mov              r8, rax;                             jmp   .Lx453_40
.Lx453_56:              cmp              al, 72;                              jne   .Lx453_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx453_41
                        cmp              rax, r8;                             je    .Lx453_41
                        mov              r8, rax;                             jmp   .Lx453_40
.Lx453_41:              lea              r9, [rsp + 544]
.Lx453_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx453_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx453_43
                        cmp              esi, 1;                              jne   .Lx453_57
                        mov              r9, rax;                             jmp   .Lx453_42
.Lx453_57:              cmp              esi, 2;                              jne   .Lx453_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx453_43
                        mov              r9, rax;                             jmp   .Lx453_42
.Lx453_58:              cmp              al, 72;                              jne   .Lx453_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx453_43
                        cmp              rax, r9;                             je    .Lx453_43
                        mov              r9, rax;                             jmp   .Lx453_42
.Lx453_43:              cmp              r8, r9;                              je    .Lx453_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx453_44
                        cmp              al, 104;                             je    .Lx453_44
                        cmp              al, 72;                              jne   .Lx453_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx453_44
                                                                              jmp   .Lx453_45
.Lx453_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx453_53
                        cmp              al, 104;                             je    .Lx453_53
                        cmp              al, 72;                              jne   .Lx453_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx453_53
                                                                              jmp   .Lx453_46
.Lx453_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx453_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx453_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx453_51
.Lx453_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx453_47
                        cmp              al, 104;                             je    .Lx453_47
                        cmp              al, 72;                              jne   .Lx453_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx453_47
                                                                              jmp   .Lx453_48
.Lx453_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx453_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx453_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx453_51
.Lx453_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx453_49
                        cmp              dl, 80;                              je    .Lx453_53
                                                                              jmp   .Lx453_52
.Lx453_49:              cmp              dl, 80;                              je    .Lx453_52
                        cmp              cl, 5;                               je    .Lx453_53
                        cmp              dl, 5;                               je    .Lx453_53
                        cmp              cl, 3;                               jne   .Lx453_50
                        cmp              dl, 3;                               jne   .Lx453_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx453_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx453_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx453_51
                                                                              jmp   .Lx453_52
.Lx453_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx453_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx453_53
.Lx453_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx453_54
.Lx453_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx453_54
.Lx453_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx453_54:              mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n425_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n420_var_α
n419_call_builtin_prolog_β:
                        mov              r11, 166;                            jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:             mov              r11, 167
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 488], rax;          jmp   n421_var_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_α:             mov              r11, 168
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 504], rax;          jmp   n422_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n422_call_builtin_prolog_α:
                        mov              r11, 169
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n425_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n423_cut_α
n422_call_builtin_prolog_β:
                        mov              r11, 169;                            jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n423_cut_α:             mov              r11, 170;                            jmp   n424_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n424_move_label_α:      mov              r11, 171
                        lea              rax, [rip + n425_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   max$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n425_call_builtin_prolog_α:
                        mov              r11, 172
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    max$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n426_var_ref_α
n425_call_builtin_prolog_β:
                        mov              r11, 172;                            jmp   max$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n427_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 768]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n428_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n428_call_builtin_prolog_α:
                        mov              r11, 175
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
.Lx467_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx467_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx467_41
                        cmp              esi, 1;                              jne   .Lx467_55
                        mov              r8, rax;                             jmp   .Lx467_40
.Lx467_55:              cmp              esi, 2;                              jne   .Lx467_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx467_41
                        mov              r8, rax;                             jmp   .Lx467_40
.Lx467_56:              cmp              al, 72;                              jne   .Lx467_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx467_41
                        cmp              rax, r8;                             je    .Lx467_41
                        mov              r8, rax;                             jmp   .Lx467_40
.Lx467_41:              lea              r9, [rsp + 352]
.Lx467_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx467_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx467_43
                        cmp              esi, 1;                              jne   .Lx467_57
                        mov              r9, rax;                             jmp   .Lx467_42
.Lx467_57:              cmp              esi, 2;                              jne   .Lx467_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx467_43
                        mov              r9, rax;                             jmp   .Lx467_42
.Lx467_58:              cmp              al, 72;                              jne   .Lx467_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx467_43
                        cmp              rax, r9;                             je    .Lx467_43
                        mov              r9, rax;                             jmp   .Lx467_42
.Lx467_43:              cmp              r8, r9;                              je    .Lx467_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx467_44
                        cmp              al, 104;                             je    .Lx467_44
                        cmp              al, 72;                              jne   .Lx467_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx467_44
                                                                              jmp   .Lx467_45
.Lx467_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx467_53
                        cmp              al, 104;                             je    .Lx467_53
                        cmp              al, 72;                              jne   .Lx467_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx467_53
                                                                              jmp   .Lx467_46
.Lx467_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx467_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx467_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx467_51
.Lx467_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx467_47
                        cmp              al, 104;                             je    .Lx467_47
                        cmp              al, 72;                              jne   .Lx467_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx467_47
                                                                              jmp   .Lx467_48
.Lx467_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx467_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx467_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx467_51
.Lx467_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx467_49
                        cmp              dl, 80;                              je    .Lx467_53
                                                                              jmp   .Lx467_52
.Lx467_49:              cmp              dl, 80;                              je    .Lx467_52
                        cmp              cl, 5;                               je    .Lx467_53
                        cmp              dl, 5;                               je    .Lx467_53
                        cmp              cl, 3;                               jne   .Lx467_50
                        cmp              dl, 3;                               jne   .Lx467_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx467_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx467_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx467_51
                                                                              jmp   .Lx467_52
.Lx467_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx467_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx467_53
.Lx467_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx467_54
.Lx467_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx467_54
.Lx467_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx467_54:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n437_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n429_var_ref_α
n428_call_builtin_prolog_β:
                        mov              r11, 175;                            jmp   n437_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n430_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 752]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n431_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n431_call_builtin_prolog_α:
                        mov              r11, 178
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
.Lx472_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx472_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx472_41
                        cmp              esi, 1;                              jne   .Lx472_55
                        mov              r8, rax;                             jmp   .Lx472_40
.Lx472_55:              cmp              esi, 2;                              jne   .Lx472_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx472_41
                        mov              r8, rax;                             jmp   .Lx472_40
.Lx472_56:              cmp              al, 72;                              jne   .Lx472_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx472_41
                        cmp              rax, r8;                             je    .Lx472_41
                        mov              r8, rax;                             jmp   .Lx472_40
.Lx472_41:              lea              r9, [rsp + 272]
.Lx472_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx472_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx472_43
                        cmp              esi, 1;                              jne   .Lx472_57
                        mov              r9, rax;                             jmp   .Lx472_42
.Lx472_57:              cmp              esi, 2;                              jne   .Lx472_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx472_43
                        mov              r9, rax;                             jmp   .Lx472_42
.Lx472_58:              cmp              al, 72;                              jne   .Lx472_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx472_43
                        cmp              rax, r9;                             je    .Lx472_43
                        mov              r9, rax;                             jmp   .Lx472_42
.Lx472_43:              cmp              r8, r9;                              je    .Lx472_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx472_44
                        cmp              al, 104;                             je    .Lx472_44
                        cmp              al, 72;                              jne   .Lx472_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx472_44
                                                                              jmp   .Lx472_45
.Lx472_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx472_53
                        cmp              al, 104;                             je    .Lx472_53
                        cmp              al, 72;                              jne   .Lx472_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx472_53
                                                                              jmp   .Lx472_46
.Lx472_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx472_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx472_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx472_51
.Lx472_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx472_47
                        cmp              al, 104;                             je    .Lx472_47
                        cmp              al, 72;                              jne   .Lx472_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx472_47
                                                                              jmp   .Lx472_48
.Lx472_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx472_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx472_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx472_51
.Lx472_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx472_49
                        cmp              dl, 80;                              je    .Lx472_53
                                                                              jmp   .Lx472_52
.Lx472_49:              cmp              dl, 80;                              je    .Lx472_52
                        cmp              cl, 5;                               je    .Lx472_53
                        cmp              dl, 5;                               je    .Lx472_53
                        cmp              cl, 3;                               jne   .Lx472_50
                        cmp              dl, 3;                               jne   .Lx472_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx472_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx472_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx472_51
                                                                              jmp   .Lx472_52
.Lx472_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx472_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx472_53
.Lx472_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx472_54
.Lx472_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx472_54
.Lx472_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx472_54:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n437_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n432_var_ref_α
n431_call_builtin_prolog_β:
                        mov              r11, 178;                            jmp   n437_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n433_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 752]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n434_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_prolog_α:
                        mov              r11, 181
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
.Lx477_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx477_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx477_41
                        cmp              esi, 1;                              jne   .Lx477_55
                        mov              r8, rax;                             jmp   .Lx477_40
.Lx477_55:              cmp              esi, 2;                              jne   .Lx477_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx477_41
                        mov              r8, rax;                             jmp   .Lx477_40
.Lx477_56:              cmp              al, 72;                              jne   .Lx477_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx477_41
                        cmp              rax, r8;                             je    .Lx477_41
                        mov              r8, rax;                             jmp   .Lx477_40
.Lx477_41:              lea              r9, [rsp + 192]
.Lx477_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx477_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx477_43
                        cmp              esi, 1;                              jne   .Lx477_57
                        mov              r9, rax;                             jmp   .Lx477_42
.Lx477_57:              cmp              esi, 2;                              jne   .Lx477_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx477_43
                        mov              r9, rax;                             jmp   .Lx477_42
.Lx477_58:              cmp              al, 72;                              jne   .Lx477_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx477_43
                        cmp              rax, r9;                             je    .Lx477_43
                        mov              r9, rax;                             jmp   .Lx477_42
.Lx477_43:              cmp              r8, r9;                              je    .Lx477_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx477_44
                        cmp              al, 104;                             je    .Lx477_44
                        cmp              al, 72;                              jne   .Lx477_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx477_44
                                                                              jmp   .Lx477_45
.Lx477_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx477_53
                        cmp              al, 104;                             je    .Lx477_53
                        cmp              al, 72;                              jne   .Lx477_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx477_53
                                                                              jmp   .Lx477_46
.Lx477_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx477_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx477_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx477_51
.Lx477_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx477_47
                        cmp              al, 104;                             je    .Lx477_47
                        cmp              al, 72;                              jne   .Lx477_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx477_47
                                                                              jmp   .Lx477_48
.Lx477_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx477_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx477_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx477_51
.Lx477_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx477_49
                        cmp              dl, 80;                              je    .Lx477_53
                                                                              jmp   .Lx477_52
.Lx477_49:              cmp              dl, 80;                              je    .Lx477_52
                        cmp              cl, 5;                               je    .Lx477_53
                        cmp              dl, 5;                               je    .Lx477_53
                        cmp              cl, 3;                               jne   .Lx477_50
                        cmp              dl, 3;                               jne   .Lx477_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx477_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx477_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx477_51
                                                                              jmp   .Lx477_52
.Lx477_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx477_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx477_53
.Lx477_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx477_54
.Lx477_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx477_54
.Lx477_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx477_54:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n437_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n435_move_label_α
n434_call_builtin_prolog_β:
                        mov              r11, 181;                            jmp   n437_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n435_move_label_α:      mov              r11, 182
                        lea              rax, [rip + n437_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   max$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n436_disjunction_α:     mov              r11, 183
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    max$2F3_ω
                                                                              jmp   rax
n436_disjunction_β:     mov              r11, 183;                            jmp   max$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
                        mov              r11, 184
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    max$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   max$2F3_ω
n437_call_builtin_prolog_β:
                        mov              r11, 184;                            jmp   max$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
max$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
max$2F3_β:
                                                                              jmp   n436_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
max$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 824]
                        add              rsp, 848;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
max$2F3_ω:
                        mov              rcx, qword ptr [rsp + 832]
                        add              rsp, 848;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
max$2F3_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx483_2]
                        lea              rdx, [rip + .Lx483_3];               jmp   FN__max$2F3
.Lx483_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx483_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__arith$2F6:
                        sub              rsp, 1472
                        mov              qword ptr [rsp + 1448], rcx
                        mov              qword ptr [rsp + 1456], rdx
                        mov              qword ptr [rsp + 1464], rsp
                        mov              rdi, rsp
                        mov              esi, 1328
                        mov              edx, 1440
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
arith$2F6_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n484_call_builtin_prolog_α:
                        mov              r11, 185
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx526_102
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152];          jmp   .Lx526_101
.Lx526_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx526_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx526_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx526_101
.Lx526_100:             lea              rdi, [rsp + 160]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx526_101:             mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    arith$2F6_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n485_var_ref_α
n484_call_builtin_prolog_β:
                        mov              r11, 185;                            jmp   arith$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n486_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n486_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n487_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n487_call_builtin_prolog_α:
                        mov              r11, 188
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        lea              rdi, [rsp + 1264]
                        lea              r8, [rsp + 1264]
.Lx531_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx531_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx531_41
                        cmp              esi, 1;                              jne   .Lx531_55
                        mov              r8, rax;                             jmp   .Lx531_40
.Lx531_55:              cmp              esi, 2;                              jne   .Lx531_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx531_41
                        mov              r8, rax;                             jmp   .Lx531_40
.Lx531_56:              cmp              al, 72;                              jne   .Lx531_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx531_41
                        cmp              rax, r8;                             je    .Lx531_41
                        mov              r8, rax;                             jmp   .Lx531_40
.Lx531_41:              lea              r9, [rsp + 1280]
.Lx531_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx531_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx531_43
                        cmp              esi, 1;                              jne   .Lx531_57
                        mov              r9, rax;                             jmp   .Lx531_42
.Lx531_57:              cmp              esi, 2;                              jne   .Lx531_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx531_43
                        mov              r9, rax;                             jmp   .Lx531_42
.Lx531_58:              cmp              al, 72;                              jne   .Lx531_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx531_43
                        cmp              rax, r9;                             je    .Lx531_43
                        mov              r9, rax;                             jmp   .Lx531_42
.Lx531_43:              cmp              r8, r9;                              je    .Lx531_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx531_44
                        cmp              al, 104;                             je    .Lx531_44
                        cmp              al, 72;                              jne   .Lx531_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx531_44
                                                                              jmp   .Lx531_45
.Lx531_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx531_53
                        cmp              al, 104;                             je    .Lx531_53
                        cmp              al, 72;                              jne   .Lx531_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx531_53
                                                                              jmp   .Lx531_46
.Lx531_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx531_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx531_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx531_51
.Lx531_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx531_47
                        cmp              al, 104;                             je    .Lx531_47
                        cmp              al, 72;                              jne   .Lx531_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx531_47
                                                                              jmp   .Lx531_48
.Lx531_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx531_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx531_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx531_51
.Lx531_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx531_49
                        cmp              dl, 80;                              je    .Lx531_53
                                                                              jmp   .Lx531_52
.Lx531_49:              cmp              dl, 80;                              je    .Lx531_52
                        cmp              cl, 5;                               je    .Lx531_53
                        cmp              dl, 5;                               je    .Lx531_53
                        cmp              cl, 3;                               jne   .Lx531_50
                        cmp              dl, 3;                               jne   .Lx531_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx531_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx531_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx531_51
                                                                              jmp   .Lx531_52
.Lx531_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx531_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx531_53
.Lx531_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx531_54
.Lx531_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx531_54
.Lx531_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx531_54:              mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n488_var_ref_α
n487_call_builtin_prolog_β:
                        mov              r11, 188;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n489_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n489_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n490_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_prolog_α:
                        mov              r11, 191
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        lea              rdi, [rsp + 1184]
                        lea              r8, [rsp + 1184]
.Lx536_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx536_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx536_41
                        cmp              esi, 1;                              jne   .Lx536_55
                        mov              r8, rax;                             jmp   .Lx536_40
.Lx536_55:              cmp              esi, 2;                              jne   .Lx536_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx536_41
                        mov              r8, rax;                             jmp   .Lx536_40
.Lx536_56:              cmp              al, 72;                              jne   .Lx536_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx536_41
                        cmp              rax, r8;                             je    .Lx536_41
                        mov              r8, rax;                             jmp   .Lx536_40
.Lx536_41:              lea              r9, [rsp + 1200]
.Lx536_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx536_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx536_43
                        cmp              esi, 1;                              jne   .Lx536_57
                        mov              r9, rax;                             jmp   .Lx536_42
.Lx536_57:              cmp              esi, 2;                              jne   .Lx536_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx536_43
                        mov              r9, rax;                             jmp   .Lx536_42
.Lx536_58:              cmp              al, 72;                              jne   .Lx536_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx536_43
                        cmp              rax, r9;                             je    .Lx536_43
                        mov              r9, rax;                             jmp   .Lx536_42
.Lx536_43:              cmp              r8, r9;                              je    .Lx536_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx536_44
                        cmp              al, 104;                             je    .Lx536_44
                        cmp              al, 72;                              jne   .Lx536_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx536_44
                                                                              jmp   .Lx536_45
.Lx536_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx536_53
                        cmp              al, 104;                             je    .Lx536_53
                        cmp              al, 72;                              jne   .Lx536_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx536_53
                                                                              jmp   .Lx536_46
.Lx536_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx536_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx536_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx536_51
.Lx536_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx536_47
                        cmp              al, 104;                             je    .Lx536_47
                        cmp              al, 72;                              jne   .Lx536_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx536_47
                                                                              jmp   .Lx536_48
.Lx536_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx536_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx536_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx536_51
.Lx536_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx536_49
                        cmp              dl, 80;                              je    .Lx536_53
                                                                              jmp   .Lx536_52
.Lx536_49:              cmp              dl, 80;                              je    .Lx536_52
                        cmp              cl, 5;                               je    .Lx536_53
                        cmp              dl, 5;                               je    .Lx536_53
                        cmp              cl, 3;                               jne   .Lx536_50
                        cmp              dl, 3;                               jne   .Lx536_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx536_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx536_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx536_51
                                                                              jmp   .Lx536_52
.Lx536_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx536_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx536_53
.Lx536_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx536_54
.Lx536_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx536_54
.Lx536_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx536_54:              mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n491_var_ref_α
n490_call_builtin_prolog_β:
                        mov              r11, 191;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n492_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n492_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n493_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n493_call_builtin_prolog_α:
                        mov              r11, 194
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        lea              r8, [rsp + 1104]
.Lx541_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx541_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx541_41
                        cmp              esi, 1;                              jne   .Lx541_55
                        mov              r8, rax;                             jmp   .Lx541_40
.Lx541_55:              cmp              esi, 2;                              jne   .Lx541_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx541_41
                        mov              r8, rax;                             jmp   .Lx541_40
.Lx541_56:              cmp              al, 72;                              jne   .Lx541_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx541_41
                        cmp              rax, r8;                             je    .Lx541_41
                        mov              r8, rax;                             jmp   .Lx541_40
.Lx541_41:              lea              r9, [rsp + 1120]
.Lx541_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx541_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx541_43
                        cmp              esi, 1;                              jne   .Lx541_57
                        mov              r9, rax;                             jmp   .Lx541_42
.Lx541_57:              cmp              esi, 2;                              jne   .Lx541_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx541_43
                        mov              r9, rax;                             jmp   .Lx541_42
.Lx541_58:              cmp              al, 72;                              jne   .Lx541_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx541_43
                        cmp              rax, r9;                             je    .Lx541_43
                        mov              r9, rax;                             jmp   .Lx541_42
.Lx541_43:              cmp              r8, r9;                              je    .Lx541_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx541_44
                        cmp              al, 104;                             je    .Lx541_44
                        cmp              al, 72;                              jne   .Lx541_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx541_44
                                                                              jmp   .Lx541_45
.Lx541_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx541_53
                        cmp              al, 104;                             je    .Lx541_53
                        cmp              al, 72;                              jne   .Lx541_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx541_53
                                                                              jmp   .Lx541_46
.Lx541_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx541_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx541_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx541_51
.Lx541_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx541_47
                        cmp              al, 104;                             je    .Lx541_47
                        cmp              al, 72;                              jne   .Lx541_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx541_47
                                                                              jmp   .Lx541_48
.Lx541_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx541_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx541_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx541_51
.Lx541_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx541_49
                        cmp              dl, 80;                              je    .Lx541_53
                                                                              jmp   .Lx541_52
.Lx541_49:              cmp              dl, 80;                              je    .Lx541_52
                        cmp              cl, 5;                               je    .Lx541_53
                        cmp              dl, 5;                               je    .Lx541_53
                        cmp              cl, 3;                               jne   .Lx541_50
                        cmp              dl, 3;                               jne   .Lx541_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx541_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx541_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx541_51
                                                                              jmp   .Lx541_52
.Lx541_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx541_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx541_53
.Lx541_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx541_54
.Lx541_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx541_54
.Lx541_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx541_54:              mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n494_var_ref_α
n493_call_builtin_prolog_β:
                        mov              r11, 194;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n495_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n495_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n496_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n496_call_builtin_prolog_α:
                        mov              r11, 197
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        lea              rdi, [rsp + 1024]
                        lea              r8, [rsp + 1024]
.Lx546_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx546_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx546_41
                        cmp              esi, 1;                              jne   .Lx546_55
                        mov              r8, rax;                             jmp   .Lx546_40
.Lx546_55:              cmp              esi, 2;                              jne   .Lx546_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx546_41
                        mov              r8, rax;                             jmp   .Lx546_40
.Lx546_56:              cmp              al, 72;                              jne   .Lx546_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx546_41
                        cmp              rax, r8;                             je    .Lx546_41
                        mov              r8, rax;                             jmp   .Lx546_40
.Lx546_41:              lea              r9, [rsp + 1040]
.Lx546_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx546_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx546_43
                        cmp              esi, 1;                              jne   .Lx546_57
                        mov              r9, rax;                             jmp   .Lx546_42
.Lx546_57:              cmp              esi, 2;                              jne   .Lx546_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx546_43
                        mov              r9, rax;                             jmp   .Lx546_42
.Lx546_58:              cmp              al, 72;                              jne   .Lx546_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx546_43
                        cmp              rax, r9;                             je    .Lx546_43
                        mov              r9, rax;                             jmp   .Lx546_42
.Lx546_43:              cmp              r8, r9;                              je    .Lx546_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx546_44
                        cmp              al, 104;                             je    .Lx546_44
                        cmp              al, 72;                              jne   .Lx546_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx546_44
                                                                              jmp   .Lx546_45
.Lx546_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx546_53
                        cmp              al, 104;                             je    .Lx546_53
                        cmp              al, 72;                              jne   .Lx546_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx546_53
                                                                              jmp   .Lx546_46
.Lx546_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx546_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx546_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx546_51
.Lx546_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx546_47
                        cmp              al, 104;                             je    .Lx546_47
                        cmp              al, 72;                              jne   .Lx546_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx546_47
                                                                              jmp   .Lx546_48
.Lx546_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx546_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx546_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx546_51
.Lx546_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx546_49
                        cmp              dl, 80;                              je    .Lx546_53
                                                                              jmp   .Lx546_52
.Lx546_49:              cmp              dl, 80;                              je    .Lx546_52
                        cmp              cl, 5;                               je    .Lx546_53
                        cmp              dl, 5;                               je    .Lx546_53
                        cmp              cl, 3;                               jne   .Lx546_50
                        cmp              dl, 3;                               jne   .Lx546_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx546_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx546_51
                                                                              jmp   .Lx546_52
.Lx546_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx546_53
.Lx546_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx546_54
.Lx546_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx546_54
.Lx546_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx546_54:              mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n497_var_ref_α
n496_call_builtin_prolog_β:
                        mov              r11, 197;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 80]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n498_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n498_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n499_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n499_call_builtin_prolog_α:
                        mov              r11, 200
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        lea              r8, [rsp + 944]
.Lx551_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx551_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx551_41
                        cmp              esi, 1;                              jne   .Lx551_55
                        mov              r8, rax;                             jmp   .Lx551_40
.Lx551_55:              cmp              esi, 2;                              jne   .Lx551_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx551_41
                        mov              r8, rax;                             jmp   .Lx551_40
.Lx551_56:              cmp              al, 72;                              jne   .Lx551_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx551_41
                        cmp              rax, r8;                             je    .Lx551_41
                        mov              r8, rax;                             jmp   .Lx551_40
.Lx551_41:              lea              r9, [rsp + 960]
.Lx551_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx551_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx551_43
                        cmp              esi, 1;                              jne   .Lx551_57
                        mov              r9, rax;                             jmp   .Lx551_42
.Lx551_57:              cmp              esi, 2;                              jne   .Lx551_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx551_43
                        mov              r9, rax;                             jmp   .Lx551_42
.Lx551_58:              cmp              al, 72;                              jne   .Lx551_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx551_43
                        cmp              rax, r9;                             je    .Lx551_43
                        mov              r9, rax;                             jmp   .Lx551_42
.Lx551_43:              cmp              r8, r9;                              je    .Lx551_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx551_44
                        cmp              al, 104;                             je    .Lx551_44
                        cmp              al, 72;                              jne   .Lx551_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx551_44
                                                                              jmp   .Lx551_45
.Lx551_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx551_53
                        cmp              al, 104;                             je    .Lx551_53
                        cmp              al, 72;                              jne   .Lx551_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx551_53
                                                                              jmp   .Lx551_46
.Lx551_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx551_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx551_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx551_51
.Lx551_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx551_47
                        cmp              al, 104;                             je    .Lx551_47
                        cmp              al, 72;                              jne   .Lx551_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx551_47
                                                                              jmp   .Lx551_48
.Lx551_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx551_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx551_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx551_51
.Lx551_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx551_49
                        cmp              dl, 80;                              je    .Lx551_53
                                                                              jmp   .Lx551_52
.Lx551_49:              cmp              dl, 80;                              je    .Lx551_52
                        cmp              cl, 5;                               je    .Lx551_53
                        cmp              dl, 5;                               je    .Lx551_53
                        cmp              cl, 3;                               jne   .Lx551_50
                        cmp              dl, 3;                               jne   .Lx551_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx551_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx551_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx551_51
                                                                              jmp   .Lx551_52
.Lx551_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx551_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx551_53
.Lx551_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx551_54
.Lx551_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx551_54
.Lx551_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx551_54:              mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n500_var_ref_α
n499_call_builtin_prolog_β:
                        mov              r11, 200;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 96]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n501_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n502_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n502_call_builtin_prolog_α:
                        mov              r11, 203
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
.Lx556_41:              lea              r9, [rsp + 880]
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
.Lx556_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx556_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx556_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx556_51
.Lx556_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx556_47
                        cmp              al, 104;                             je    .Lx556_47
                        cmp              al, 72;                              jne   .Lx556_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx556_47
                                                                              jmp   .Lx556_48
.Lx556_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx556_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx556_53
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx556_54:              mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n503_var_ref_α
n502_call_builtin_prolog_β:
                        mov              r11, 203;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1408]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n504_var_α
#-----------------------------------------------------------------------------------------------------------------------
n504_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 824], rax;          jmp   n505_var_α
#-----------------------------------------------------------------------------------------------------------------------
n505_var_α:             mov              r11, 206
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 840], rax;          jmp   n506_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n506_call_builtin_prolog_α:
                        mov              r11, 207
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n507_call_builtin_prolog_α
n506_call_builtin_prolog_β:
                        mov              r11, 207;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n507_call_builtin_prolog_α:
                        mov              r11, 208
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n508_var_ref_α
n507_call_builtin_prolog_β:
                        mov              r11, 208;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1392]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n509_var_α
#-----------------------------------------------------------------------------------------------------------------------
n509_var_α:             mov              r11, 210
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 664], rax;          jmp   n510_var_α
#-----------------------------------------------------------------------------------------------------------------------
n510_var_α:             mov              r11, 211
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 680], rax;          jmp   n511_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n511_call_builtin_prolog_α:
                        mov              r11, 212
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n512_call_builtin_prolog_α
n511_call_builtin_prolog_β:
                        mov              r11, 212;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n512_call_builtin_prolog_α:
                        mov              r11, 213
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n513_var_ref_α
n512_call_builtin_prolog_β:
                        mov              r11, 213;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1376]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n514_var_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 504], rax;          jmp   n515_var_α
#-----------------------------------------------------------------------------------------------------------------------
n515_var_α:             mov              r11, 216
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 520], rax;          jmp   n516_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n516_call_builtin_prolog_α:
                        mov              r11, 217
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n517_call_builtin_prolog_α
n516_call_builtin_prolog_β:
                        mov              r11, 217;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n517_call_builtin_prolog_α:
                        mov              r11, 218
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n518_var_ref_α
n517_call_builtin_prolog_β:
                        mov              r11, 218;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n519_var_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_α:             mov              r11, 220
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 344], rax;          jmp   n520_var_α
#-----------------------------------------------------------------------------------------------------------------------
n520_var_α:             mov              r11, 221
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 360], rax;          jmp   n521_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n521_call_builtin_prolog_α:
                        mov              r11, 222
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n522_call_builtin_prolog_α
n521_call_builtin_prolog_β:
                        mov              r11, 222;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n522_call_builtin_prolog_α:
                        mov              r11, 223
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n525_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n523_move_label_α
n522_call_builtin_prolog_β:
                        mov              r11, 223;                            jmp   n525_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n523_move_label_α:      mov              r11, 224
                        lea              rax, [rip + n525_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 128], rax;          jmp   arith$2F6_γ
#-----------------------------------------------------------------------------------------------------------------------
n524_disjunction_α:     mov              r11, 225
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    arith$2F6_ω
                                                                              jmp   rax
n524_disjunction_β:     mov              r11, 225;                            jmp   arith$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
n525_call_builtin_prolog_α:
                        mov              r11, 226
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 200], rax
                        lea              rdi, [rsp + 192]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    arith$2F6_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   arith$2F6_ω
n525_call_builtin_prolog_β:
                        mov              r11, 226;                            jmp   arith$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
arith$2F6_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
arith$2F6_β:
                                                                              jmp   n524_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
arith$2F6_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1448]
                        add              rsp, 1472;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
arith$2F6_ω:
                        mov              rcx, qword ptr [rsp + 1456]
                        add              rsp, 1472;                           jmp   rcx
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
                        sub              rsp, 576
                        mov              qword ptr [rsp + 552], rcx
                        mov              qword ptr [rsp + 560], rdx
                        mov              qword ptr [rsp + 568], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 544
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 8
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
n594_call_builtin_prolog_α:
                        mov              r11, 227
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx607_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx607_101
.Lx607_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx607_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx607_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx607_101
.Lx607_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx607_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n595_var_ref_α
n594_call_builtin_prolog_β:
                        mov              r11, 227;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n595_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 400]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n596_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n596_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 416]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n597_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n598_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n599_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n599_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 464]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n600_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 480]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n601_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n601_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 496]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n602_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 512]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n603_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n603_call_proc_staged_α:
                        mov              r11, 236
                        mov              qword ptr [rsp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx625_200
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx625_201
.Lx625_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx625_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx625_202
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx625_203
.Lx625_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx625_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx625_204
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx625_205
.Lx625_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx625_205:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx625_206
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lx625_207
.Lx625_206:             mov              edi, 3
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
.Lx625_207:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx625_208
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lx625_209
.Lx625_208:             mov              edi, 4
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
.Lx625_209:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx625_210
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 80], rax
                        mov              qword ptr [r8 + 88], rdx;            jmp   .Lx625_211
.Lx625_210:             mov              edi, 5
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx625_211:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx625_212
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 96], rax
                        mov              qword ptr [r8 + 104], rdx;           jmp   .Lx625_213
.Lx625_212:             mov              edi, 6
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx625_213:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx625_214
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 112], rax
                        mov              qword ptr [r8 + 120], rdx;           jmp   .Lx625_215
.Lx625_214:             mov              edi, 7
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx625_215:             lea              rax, [rip + .Lx625_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx625_1
                        lea              rcx, [rip + .Lx625_4]
                        push             rcx
                        lea              rcx, [rip + .Lx625_3]
                        push             rcx;                                 jmp   rax
.Lx625_3:               add              rsp, 16
                        mov              qword ptr [rsp + 248], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lx625_5
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx625_2
.Lx625_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx625_2
.Lx625_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lx625_6
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx625_2
.Lx625_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx625_2
.Lx625_1:               call             rt_faildescr@PLT
.Lx625_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx625_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx625_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n606_call_builtin_prolog_α
                                                                              jmp   n604_move_label_α
n603_call_proc_staged_β:
                        mov              r11, 236
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 240], 0
                        lea              rdi, [rsp + 256]
                        lea              rsi, [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n606_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              ecx, 144
                        mov              r8d, 3264
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
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
                        mov              edi, 4
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
                        mov              edi, 5
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 6
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 7
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n606_call_builtin_prolog_α
                        lea              r8, [rip + .Lx625_7]
                        push             r8
                        lea              rcx, [rip + .Lx625_3]
                        lea              rdx, [rip + .Lx625_4];               jmp   rax
.Lx625_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n606_call_builtin_prolog_α
                                                                              jmp   n604_move_label_α
.Lx625_0:               .quad            .Lx625_0_s
.Lx625_0_s:             .string          "$disj0/8"
#-----------------------------------------------------------------------------------------------------------------------
n604_move_label_α:      mov              r11, 237
                        lea              rax, [rip + n603_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n605_disjunction_α:     mov              r11, 238
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
n605_disjunction_β:     mov              r11, 238;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n606_call_builtin_prolog_α:
                        mov              r11, 239
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
n606_call_builtin_prolog_β:
                        mov              r11, 239;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n605_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 552]
                        add              rsp, 576;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 560]
                        add              rsp, 576;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "unify_test/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__unify_test$2F2
                        .quad            unify_test$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            320
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$disj0/8"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__$disj0$2F8
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            8
                        .long            0
                        .long            3408
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "float_check/1"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__float_check$2F1
                        .quad            float_check$2F1_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            384
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "member/2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
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
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "max/3"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__max$2F3
                        .quad            max$2F3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            800
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "arith/6"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__arith$2F6
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            6
                        .long            0
                        .long            1424
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
