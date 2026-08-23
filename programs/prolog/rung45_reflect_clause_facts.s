                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__clause$2F2:
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
clause$2F2_α_body:
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rsp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n1_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n2_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_gen_α:  mov              r11, 3
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [rsp + 96], 0
.Lx8_60:                .section         .rodata
.Lbynamegenfn3:         .string          "$clause"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn3]
                        lea              rsi, [rsp + 64]
                        mov              edx, 2
                        lea              rcx, [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    clause$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_suspend_α
n2_call_builtin_gen_β:  mov              r11, 3;                              jmp   .Lx8_60
#-----------------------------------------------------------------------------------------------------------------------
n3_suspend_α:           mov              r11, 4
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx10_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx10_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n3_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   clause$2F2_γ
n3_suspend_β:           mov              r11, 4;                              jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_β:
                                                                              jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx10_50
                        mov              qword ptr [rsp + 144], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 144];          jmp   rax
.Lx10_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 184]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
clause$2F2_ω:
                        mov              rcx, qword ptr [rsp + 192]
                        add              rsp, 208;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$disj0$2F2:
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rcx
                        mov              qword ptr [rsp + 944], rdx
                        mov              qword ptr [rsp + 952], rsp
                        mov              rdi, rsp
                        mov              esi, 864
                        mov              edx, 928
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$disj0$2F2_α_body:
                        lea              rax, [rip + n38_suspend_β]
                        mov              qword ptr [rsp + 864], rax
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              r11, 5
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx40_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx40_101
.Lx40_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx40_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx40_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx40_101
.Lx40_100:              lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx40_101:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    $disj0$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                        mov              r11, 5;                              jmp   $disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              r11, 8
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
.Lx45_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx45_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx45_41
                        cmp              esi, 1;                              jne   .Lx45_55
                        mov              r8, rax;                             jmp   .Lx45_40
.Lx45_55:               cmp              esi, 2;                              jne   .Lx45_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx45_41
                        mov              r8, rax;                             jmp   .Lx45_40
.Lx45_56:               cmp              al, 72;                              jne   .Lx45_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx45_41
                        cmp              rax, r8;                             je    .Lx45_41
                        mov              r8, rax;                             jmp   .Lx45_40
.Lx45_41:               lea              r9, [rsp + 816]
.Lx45_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx45_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx45_43
                        cmp              esi, 1;                              jne   .Lx45_57
                        mov              r9, rax;                             jmp   .Lx45_42
.Lx45_57:               cmp              esi, 2;                              jne   .Lx45_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx45_43
                        mov              r9, rax;                             jmp   .Lx45_42
.Lx45_58:               cmp              al, 72;                              jne   .Lx45_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx45_43
                        cmp              rax, r9;                             je    .Lx45_43
                        mov              r9, rax;                             jmp   .Lx45_42
.Lx45_43:               cmp              r8, r9;                              je    .Lx45_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx45_44
                        cmp              al, 104;                             je    .Lx45_44
                        cmp              al, 72;                              jne   .Lx45_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx45_44
                                                                              jmp   .Lx45_45
.Lx45_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx45_53
                        cmp              al, 104;                             je    .Lx45_53
                        cmp              al, 72;                              jne   .Lx45_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx45_53
                                                                              jmp   .Lx45_46
.Lx45_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx45_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx45_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx45_51
.Lx45_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx45_47
                        cmp              al, 104;                             je    .Lx45_47
                        cmp              al, 72;                              jne   .Lx45_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx45_47
                                                                              jmp   .Lx45_48
.Lx45_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx45_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx45_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx45_51
.Lx45_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx45_49
                        cmp              dl, 80;                              je    .Lx45_53
                                                                              jmp   .Lx45_52
.Lx45_49:               cmp              dl, 80;                              je    .Lx45_52
                        cmp              cl, 5;                               je    .Lx45_53
                        cmp              dl, 5;                               je    .Lx45_53
                        cmp              cl, 3;                               jne   .Lx45_50
                        cmp              dl, 3;                               jne   .Lx45_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx45_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx45_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx45_51
                                                                              jmp   .Lx45_52
.Lx45_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx45_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx45_53
.Lx45_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx45_54
.Lx45_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx45_54
.Lx45_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx45_54:               mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_var_ref_α
n14_call_builtin_prolog_β:
                        mov              r11, 8;                              jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 880]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              r11, 11
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
.Lx50_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx50_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx50_41
                        cmp              esi, 1;                              jne   .Lx50_55
                        mov              r8, rax;                             jmp   .Lx50_40
.Lx50_55:               cmp              esi, 2;                              jne   .Lx50_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx50_41
                        mov              r8, rax;                             jmp   .Lx50_40
.Lx50_56:               cmp              al, 72;                              jne   .Lx50_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx50_41
                        cmp              rax, r8;                             je    .Lx50_41
                        mov              r8, rax;                             jmp   .Lx50_40
.Lx50_41:               lea              r9, [rsp + 736]
.Lx50_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx50_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx50_43
                        cmp              esi, 1;                              jne   .Lx50_57
                        mov              r9, rax;                             jmp   .Lx50_42
.Lx50_57:               cmp              esi, 2;                              jne   .Lx50_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx50_43
                        mov              r9, rax;                             jmp   .Lx50_42
.Lx50_58:               cmp              al, 72;                              jne   .Lx50_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx50_43
                        cmp              rax, r9;                             je    .Lx50_43
                        mov              r9, rax;                             jmp   .Lx50_42
.Lx50_43:               cmp              r8, r9;                              je    .Lx50_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx50_44
                        cmp              al, 104;                             je    .Lx50_44
                        cmp              al, 72;                              jne   .Lx50_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx50_44
                                                                              jmp   .Lx50_45
.Lx50_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx50_53
                        cmp              al, 104;                             je    .Lx50_53
                        cmp              al, 72;                              jne   .Lx50_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx50_53
                                                                              jmp   .Lx50_46
.Lx50_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx50_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx50_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx50_51
.Lx50_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx50_47
                        cmp              al, 104;                             je    .Lx50_47
                        cmp              al, 72;                              jne   .Lx50_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx50_47
                                                                              jmp   .Lx50_48
.Lx50_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx50_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx50_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx50_51
.Lx50_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx50_49
                        cmp              dl, 80;                              je    .Lx50_53
                                                                              jmp   .Lx50_52
.Lx50_49:               cmp              dl, 80;                              je    .Lx50_52
                        cmp              cl, 5;                               je    .Lx50_53
                        cmp              dl, 5;                               je    .Lx50_53
                        cmp              cl, 3;                               jne   .Lx50_50
                        cmp              dl, 3;                               jne   .Lx50_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx50_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx50_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx50_51
                                                                              jmp   .Lx50_52
.Lx50_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx50_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx50_53
.Lx50_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx50_54
.Lx50_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx50_54
.Lx50_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx50_54:               mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_lit_string_α
n17_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 5
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n19_var_ref_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "color"
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_var_ref_α
n20_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 880]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n22_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_proc_staged_α: mov              r11, 16
                        mov              qword ptr [rsp + 560], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx58_20
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx58_21
.Lx58_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx58_21:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx58_22
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx58_23
.Lx58_22:               mov              edi, 1
                        mov              rsi, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx58_23:               lea              rax, [rip + .Lx58_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx58_1
                        lea              rcx, [rip + .Lx58_3]
                        lea              rdx, [rip + .Lx58_4];                jmp   rax
.Lx58_3:                mov              qword ptr [rsp + 568], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 560]
                        test             rax, rax;                            jne   .Lx58_5
                        mov              qword ptr [rsp + 560], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx58_2
.Lx58_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx58_2
.Lx58_4:                mov              rax, qword ptr [rsp + 560]
                        test             rax, rax;                            jne   .Lx58_6
                        mov              qword ptr [rsp + 560], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx58_2
.Lx58_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx58_2
.Lx58_1:                call             rt_faildescr@PLT
.Lx58_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx58_29
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
.Lx58_29:               mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                                                                              jmp   n23_var_α
n22_call_proc_staged_β: mov              r11, 16
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 560], 0
                        lea              rdi, [rsp + 576]
                        lea              rsi, [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n31_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              ecx, 0
                        mov              r8d, 144
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
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
                        test             rax, rax;                            je    n31_call_builtin_prolog_α
                        lea              r8, [rip + .Lx58_7]
                        push             r8
                        lea              rcx, [rip + .Lx58_3]
                        lea              rdx, [rip + .Lx58_4];                jmp   rax
.Lx58_7:                add              rsp, 8
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n31_call_builtin_prolog_α
                                                                              jmp   n23_var_α
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 504], rax;          jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn62:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n22_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_lit_string_α
n24_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   n22_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n26_call_builtin_prolog_α
.Lx63_0:                .quad            .Lx63_0_s
.Lx63_0_s:              .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn65:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n22_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_var_α
n26_call_builtin_prolog_β:
                        mov              r11, 20;                             jmp   n22_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 408], rax;          jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn69:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n22_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_lit_string_α
n28_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   n22_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 0
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n30_call_builtin_prolog_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn72:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n22_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_call_proc_staged_β
n30_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n22_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 25
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
                        cmp              al, 104;                             je    $disj0$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n32_var_ref_α
n31_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   $disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 896]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              r11, 28
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
.Lx78_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx78_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx78_41
                        cmp              esi, 1;                              jne   .Lx78_55
                        mov              r8, rax;                             jmp   .Lx78_40
.Lx78_55:               cmp              esi, 2;                              jne   .Lx78_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx78_41
                        mov              r8, rax;                             jmp   .Lx78_40
.Lx78_56:               cmp              al, 72;                              jne   .Lx78_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx78_41
                        cmp              rax, r8;                             je    .Lx78_41
                        mov              r8, rax;                             jmp   .Lx78_40
.Lx78_41:               lea              r9, [rsp + 240]
.Lx78_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx78_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx78_43
                        cmp              esi, 1;                              jne   .Lx78_57
                        mov              r9, rax;                             jmp   .Lx78_42
.Lx78_57:               cmp              esi, 2;                              jne   .Lx78_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx78_43
                        mov              r9, rax;                             jmp   .Lx78_42
.Lx78_58:               cmp              al, 72;                              jne   .Lx78_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx78_43
                        cmp              rax, r9;                             je    .Lx78_43
                        mov              r9, rax;                             jmp   .Lx78_42
.Lx78_43:               cmp              r8, r9;                              je    .Lx78_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx78_44
                        cmp              al, 104;                             je    .Lx78_44
                        cmp              al, 72;                              jne   .Lx78_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx78_44
                                                                              jmp   .Lx78_45
.Lx78_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx78_53
                        cmp              al, 104;                             je    .Lx78_53
                        cmp              al, 72;                              jne   .Lx78_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx78_53
                                                                              jmp   .Lx78_46
.Lx78_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx78_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx78_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx78_51
.Lx78_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx78_47
                        cmp              al, 104;                             je    .Lx78_47
                        cmp              al, 72;                              jne   .Lx78_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx78_47
                                                                              jmp   .Lx78_48
.Lx78_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx78_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx78_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx78_51
.Lx78_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx78_49
                        cmp              dl, 80;                              je    .Lx78_53
                                                                              jmp   .Lx78_52
.Lx78_49:               cmp              dl, 80;                              je    .Lx78_52
                        cmp              cl, 5;                               je    .Lx78_53
                        cmp              dl, 5;                               je    .Lx78_53
                        cmp              cl, 3;                               jne   .Lx78_50
                        cmp              dl, 3;                               jne   .Lx78_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx78_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx78_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx78_51
                                                                              jmp   .Lx78_52
.Lx78_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx78_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx78_53
.Lx78_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx78_54
.Lx78_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx78_54
.Lx78_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx78_54:               mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n39_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_var_ref_α
n34_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   n39_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n36_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 880]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
                        mov              r11, 31
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
.Lx83_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx83_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx83_41
                        cmp              esi, 1;                              jne   .Lx83_55
                        mov              r8, rax;                             jmp   .Lx83_40
.Lx83_55:               cmp              esi, 2;                              jne   .Lx83_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx83_41
                        mov              r8, rax;                             jmp   .Lx83_40
.Lx83_56:               cmp              al, 72;                              jne   .Lx83_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx83_41
                        cmp              rax, r8;                             je    .Lx83_41
                        mov              r8, rax;                             jmp   .Lx83_40
.Lx83_41:               lea              r9, [rsp + 160]
.Lx83_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx83_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx83_43
                        cmp              esi, 1;                              jne   .Lx83_57
                        mov              r9, rax;                             jmp   .Lx83_42
.Lx83_57:               cmp              esi, 2;                              jne   .Lx83_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx83_43
                        mov              r9, rax;                             jmp   .Lx83_42
.Lx83_58:               cmp              al, 72;                              jne   .Lx83_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx83_43
                        cmp              rax, r9;                             je    .Lx83_43
                        mov              r9, rax;                             jmp   .Lx83_42
.Lx83_43:               cmp              r8, r9;                              je    .Lx83_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx83_44
                        cmp              al, 104;                             je    .Lx83_44
                        cmp              al, 72;                              jne   .Lx83_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx83_44
                                                                              jmp   .Lx83_45
.Lx83_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx83_53
                        cmp              al, 104;                             je    .Lx83_53
                        cmp              al, 72;                              jne   .Lx83_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx83_53
                                                                              jmp   .Lx83_46
.Lx83_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx83_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx83_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx83_51
.Lx83_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx83_47
                        cmp              al, 104;                             je    .Lx83_47
                        cmp              al, 72;                              jne   .Lx83_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx83_47
                                                                              jmp   .Lx83_48
.Lx83_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx83_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx83_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx83_51
.Lx83_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx83_49
                        cmp              dl, 80;                              je    .Lx83_53
                                                                              jmp   .Lx83_52
.Lx83_49:               cmp              dl, 80;                              je    .Lx83_52
                        cmp              cl, 5;                               je    .Lx83_53
                        cmp              dl, 5;                               je    .Lx83_53
                        cmp              cl, 3;                               jne   .Lx83_50
                        cmp              dl, 3;                               jne   .Lx83_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx83_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx83_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx83_51
                                                                              jmp   .Lx83_52
.Lx83_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx83_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx83_53
.Lx83_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx83_54
.Lx83_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx83_54
.Lx83_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx83_54:               mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n39_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n38_suspend_α
n37_call_builtin_prolog_β:
                        mov              r11, 31;                             jmp   n39_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_suspend_α:          mov              r11, 32
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx85_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 864];          jmp   rax
.Lx85_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n38_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n38_suspend_β]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   $disj0$2F2_γ
n38_suspend_β:          mov              r11, 32;                             jmp   n39_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              r11, 33
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
                        cmp              al, 104;                             je    $disj0$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $disj0$2F2_ω
n39_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   $disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F2_β:
                                                                              jmp   n38_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx86_50
                        mov              qword ptr [rsp + 864], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 864];          jmp   rax
.Lx86_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 936]
                        add              rsp, 960;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$disj0$2F2_ω:
                        mov              rcx, qword ptr [rsp + 944]
                        add              rsp, 960;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__color$2F1:
                        sub              rsp, 192
                        mov              qword ptr [rsp + 168], rcx
                        mov              qword ptr [rsp + 176], rdx
                        mov              qword ptr [rsp + 184], rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 160
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
color$2F1_α_body:
                        lea              rax, [rip + n90_suspend_β]
                        mov              qword ptr [rsp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 96], 2              # result
                        mov              dword ptr [rsp + 100], 5
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n88_var_ref_α
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "color"
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n89_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n89_call_builtin_gen_α: mov              r11, 36
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 80], 0
.Lx94_60:               .section         .rodata
.Lbynamegenfn36:        .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn36]
                        lea              rsi, [rsp + 48]
                        mov              edx, 2
                        lea              rcx, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    color$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n90_suspend_α
n89_call_builtin_gen_β: mov              r11, 36;                             jmp   .Lx94_60
#-----------------------------------------------------------------------------------------------------------------------
n90_suspend_α:          mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx96_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128];          jmp   rax
.Lx96_61:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n90_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n90_suspend_β]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   color$2F1_γ
n90_suspend_β:          mov              r11, 37;                             jmp   n89_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
color$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
color$2F1_β:
                                                                              jmp   n89_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
color$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx96_50
                        mov              qword ptr [rsp + 128], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128];          jmp   rax
.Lx96_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 168]
                        add              rsp, 192;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
color$2F1_ω:
                        mov              rcx, qword ptr [rsp + 176]
                        add              rsp, 192;                            jmp   rcx
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
                        sub              rsp, 672
                        mov              qword ptr [rsp + 648], rcx
                        mov              qword ptr [rsp + 656], rdx
                        mov              qword ptr [rsp + 664], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 640
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              r11, 38
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx116_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx116_101
.Lx116_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx116_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx116_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx116_101
.Lx116_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx116_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_lit_string_α
n97_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 5
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n99_lit_string_α
.Lx117_0:               .quad            .Lx117_0_s
.Lx117_0_s:             .string          "color"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 3
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n100_call_builtin_prolog_α
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          "red"
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_prolog_α:
                        mov              r11, 41
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
                        cmp              al, 104;                             je    n115_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n101_call_builtin_prolog_α
n100_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n115_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
                        mov              r11, 42
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn121:              .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n115_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_lit_string_α
n101_call_builtin_prolog_β:
                        mov              r11, 42;                             jmp   n115_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 43
                        mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 5
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n103_lit_string_α
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "color"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 44
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 5
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n104_call_builtin_prolog_α
.Lx123_0:               .quad            .Lx123_0_s
.Lx123_0_s:             .string          "green"
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n115_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n105_call_builtin_prolog_α
n104_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   n115_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn126:              .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn126]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n115_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n106_lit_string_α
n105_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   n115_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              r11, 47
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 5
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n107_lit_string_α
.Lx127_0:               .quad            .Lx127_0_s
.Lx127_0_s:             .string          "color"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              r11, 48
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 4
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n108_call_builtin_prolog_α
.Lx128_0:               .quad            .Lx128_0_s
.Lx128_0_s:             .string          "blue"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_prolog_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        lea              rdi, [rsp + 272]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n115_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_call_builtin_prolog_α
n108_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   n115_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              r11, 50
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        .section         .rodata
.Lrkfn131:              .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rsp + 224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n115_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_var_ref_α
n109_call_builtin_prolog_β:
                        mov              r11, 50;                             jmp   n115_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n111_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 608]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n112_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_proc_staged_α:
                        mov              r11, 53
                        mov              qword ptr [rsp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx137_20
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx137_21
.Lx137_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx137_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx137_22
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx137_23
.Lx137_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx137_23:              lea              rax, [rip + .Lx137_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx137_1
                        lea              rcx, [rip + .Lx137_3]
                        lea              rdx, [rip + .Lx137_4];               jmp   rax
.Lx137_3:               mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx137_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx137_2
.Lx137_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx137_2
.Lx137_4:               mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx137_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx137_2
.Lx137_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx137_2
.Lx137_1:               call             rt_faildescr@PLT
.Lx137_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx137_29
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
.Lx137_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n115_call_builtin_prolog_α
                                                                              jmp   n113_move_label_α
n112_call_proc_staged_β:
                        mov              r11, 53
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n115_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 48
                        mov              r8d, 864
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
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n115_call_builtin_prolog_α
                        lea              r8, [rip + .Lx137_7]
                        push             r8
                        lea              rcx, [rip + .Lx137_3]
                        lea              rdx, [rip + .Lx137_4];               jmp   rax
.Lx137_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n115_call_builtin_prolog_α
                                                                              jmp   n113_move_label_α
.Lx137_0:               .quad            .Lx137_0_s
.Lx137_0_s:             .string          "$disj0/2"
#-----------------------------------------------------------------------------------------------------------------------
n113_move_label_α:      mov              r11, 54
                        lea              rax, [rip + n112_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n114_disjunction_α:     mov              r11, 55
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n114_disjunction_β:     mov              r11, 55;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              r11, 56
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
n115_call_builtin_prolog_β:
                        mov              r11, 56;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n114_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 648]
                        add              rsp, 672;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 656]
                        add              rsp, 672;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "clause/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__clause$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            160
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$disj0/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__$disj0$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            912
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "color/1"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__color$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            144
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
