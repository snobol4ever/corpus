                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__current_stream$2F1:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 128
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
current_stream$2F1_α_body:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rsp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n1_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_gen_α:  mov              r11, 2
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [rsp + 64], 0
.Lx5_60:                .section         .rodata
.Lbynamegenfn2:         .string          "$current_stream"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn2]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        lea              rcx, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    current_stream$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n2_suspend_α
n1_call_builtin_gen_β:  mov              r11, 2;                              jmp   .Lx5_60
#-----------------------------------------------------------------------------------------------------------------------
n2_suspend_α:           mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx7_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96];           jmp   rax
.Lx7_61:                mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n2_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   current_stream$2F1_γ
n2_suspend_β:           mov              r11, 3;                              jmp   n1_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
current_stream$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
current_stream$2F1_β:
                                                                              jmp   n1_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
current_stream$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx7_50
                        mov              qword ptr [rsp + 96], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96];           jmp   rax
.Lx7_50:                mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 136]
                        add              rsp, 160;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
current_stream$2F1_ω:
                        mov              rcx, qword ptr [rsp + 144]
                        add              rsp, 160;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__length$2F2:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 480
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
length$2F2_α_body:
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rsp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 4
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx21_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx21_101
.Lx21_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx21_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx21_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx21_101
.Lx21_100:              lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx21_101:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    length$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
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
.Lx26_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx26_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx26_41
                        cmp              esi, 1;                              jne   .Lx26_55
                        mov              r8, rax;                             jmp   .Lx26_40
.Lx26_55:               cmp              esi, 2;                              jne   .Lx26_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx26_41
                        mov              r8, rax;                             jmp   .Lx26_40
.Lx26_56:               cmp              al, 72;                              jne   .Lx26_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx26_41
                        cmp              rax, r8;                             je    .Lx26_41
                        mov              r8, rax;                             jmp   .Lx26_40
.Lx26_41:               lea              r9, [rsp + 368]
.Lx26_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx26_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx26_43
                        cmp              esi, 1;                              jne   .Lx26_57
                        mov              r9, rax;                             jmp   .Lx26_42
.Lx26_57:               cmp              esi, 2;                              jne   .Lx26_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx26_43
                        mov              r9, rax;                             jmp   .Lx26_42
.Lx26_58:               cmp              al, 72;                              jne   .Lx26_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx26_43
                        cmp              rax, r9;                             je    .Lx26_43
                        mov              r9, rax;                             jmp   .Lx26_42
.Lx26_43:               cmp              r8, r9;                              je    .Lx26_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx26_44
                        cmp              al, 104;                             je    .Lx26_44
                        cmp              al, 72;                              jne   .Lx26_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx26_44
                                                                              jmp   .Lx26_45
.Lx26_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx26_53
                        cmp              al, 104;                             je    .Lx26_53
                        cmp              al, 72;                              jne   .Lx26_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx26_53
                                                                              jmp   .Lx26_46
.Lx26_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx26_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx26_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx26_51
.Lx26_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx26_47
                        cmp              al, 104;                             je    .Lx26_47
                        cmp              al, 72;                              jne   .Lx26_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx26_47
                                                                              jmp   .Lx26_48
.Lx26_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx26_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx26_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx26_51
.Lx26_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx26_49
                        cmp              dl, 80;                              je    .Lx26_53
                                                                              jmp   .Lx26_52
.Lx26_49:               cmp              dl, 80;                              je    .Lx26_52
                        cmp              cl, 5;                               je    .Lx26_53
                        cmp              dl, 5;                               je    .Lx26_53
                        cmp              cl, 3;                               jne   .Lx26_50
                        cmp              dl, 3;                               jne   .Lx26_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx26_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx26_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx26_51
                                                                              jmp   .Lx26_52
.Lx26_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx26_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx26_53
.Lx26_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx26_54
.Lx26_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx26_54
.Lx26_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx26_54:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n20_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              r11, 10
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        lea              rdi, [rsp + 272]
                        lea              r8, [rsp + 272]
.Lx31_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx31_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx31_41
                        cmp              esi, 1;                              jne   .Lx31_55
                        mov              r8, rax;                             jmp   .Lx31_40
.Lx31_55:               cmp              esi, 2;                              jne   .Lx31_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx31_41
                        mov              r8, rax;                             jmp   .Lx31_40
.Lx31_56:               cmp              al, 72;                              jne   .Lx31_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx31_41
                        cmp              rax, r8;                             je    .Lx31_41
                        mov              r8, rax;                             jmp   .Lx31_40
.Lx31_41:               lea              r9, [rsp + 288]
.Lx31_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx31_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx31_43
                        cmp              esi, 1;                              jne   .Lx31_57
                        mov              r9, rax;                             jmp   .Lx31_42
.Lx31_57:               cmp              esi, 2;                              jne   .Lx31_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx31_43
                        mov              r9, rax;                             jmp   .Lx31_42
.Lx31_58:               cmp              al, 72;                              jne   .Lx31_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx31_43
                        cmp              rax, r9;                             je    .Lx31_43
                        mov              r9, rax;                             jmp   .Lx31_42
.Lx31_43:               cmp              r8, r9;                              je    .Lx31_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx31_44
                        cmp              al, 104;                             je    .Lx31_44
                        cmp              al, 72;                              jne   .Lx31_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx31_44
                                                                              jmp   .Lx31_45
.Lx31_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx31_53
                        cmp              al, 104;                             je    .Lx31_53
                        cmp              al, 72;                              jne   .Lx31_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx31_53
                                                                              jmp   .Lx31_46
.Lx31_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx31_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx31_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx31_51
.Lx31_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx31_47
                        cmp              al, 104;                             je    .Lx31_47
                        cmp              al, 72;                              jne   .Lx31_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx31_47
                                                                              jmp   .Lx31_48
.Lx31_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx31_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx31_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx31_51
.Lx31_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx31_49
                        cmp              dl, 80;                              je    .Lx31_53
                                                                              jmp   .Lx31_52
.Lx31_49:               cmp              dl, 80;                              je    .Lx31_52
                        cmp              cl, 5;                               je    .Lx31_53
                        cmp              dl, 5;                               je    .Lx31_53
                        cmp              cl, 3;                               jne   .Lx31_50
                        cmp              dl, 3;                               jne   .Lx31_50
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx31_54:               mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n20_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_var_ref_α
n14_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n17_var_ref_α
.Lx34_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n18_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α: mov              r11, 14
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx38_20
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx38_21
.Lx38_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx38_21:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx38_22
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx38_23
.Lx38_22:               mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx38_23:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx38_24
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx38_25
.Lx38_24:               mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx38_25:               lea              rax, [rip + .Lx38_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx38_1
                        lea              rcx, [rip + .Lx38_3]
                        lea              rdx, [rip + .Lx38_4];                jmp   rax
.Lx38_3:                mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx38_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx38_2
.Lx38_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx38_2
.Lx38_4:                mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx38_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx38_2
.Lx38_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx38_2
.Lx38_1:                call             rt_faildescr@PLT
.Lx38_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx38_29
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
.Lx38_29:               mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n20_call_builtin_prolog_α
                                                                              jmp   n19_suspend_α
n18_call_proc_staged_β: mov              r11, 14
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 176], 0
                        lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n20_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 64
                        mov              r8d, 1216
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
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n20_call_builtin_prolog_α
                        lea              r8, [rip + .Lx38_7]
                        push             r8
                        lea              rcx, [rip + .Lx38_3]
                        lea              rdx, [rip + .Lx38_4];                jmp   rax
.Lx38_7:                add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n20_call_builtin_prolog_α
                                                                              jmp   n19_suspend_α
.Lx38_0:                .quad            .Lx38_0_s
.Lx38_0_s:              .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n19_suspend_α:          mov              r11, 15
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx40_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx40_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n19_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n19_suspend_β]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   length$2F2_γ
n19_suspend_β:          mov              r11, 15;                             jmp   n18_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 16
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
                        cmp              al, 104;                             je    length$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   length$2F2_ω
n20_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
length$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
length$2F2_β:
                                                                              jmp   n19_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
length$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx41_50
                        mov              qword ptr [rsp + 416], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx41_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
length$2F2_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
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
                        lea              rax, [rip + n50_suspend_β]
                        mov              qword ptr [rsp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              r11, 17
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx64_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx64_101
.Lx64_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx64_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx64_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx64_101
.Lx64_100:              lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx64_101:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    member$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_var_ref_α
n42_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n44_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n45_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              r11, 20
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
.Lx69_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx69_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx69_41
                        cmp              esi, 1;                              jne   .Lx69_55
                        mov              r8, rax;                             jmp   .Lx69_40
.Lx69_55:               cmp              esi, 2;                              jne   .Lx69_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx69_41
                        mov              r8, rax;                             jmp   .Lx69_40
.Lx69_56:               cmp              al, 72;                              jne   .Lx69_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx69_41
                        cmp              rax, r8;                             je    .Lx69_41
                        mov              r8, rax;                             jmp   .Lx69_40
.Lx69_41:               lea              r9, [rsp + 608]
.Lx69_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx69_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx69_43
                        cmp              esi, 1;                              jne   .Lx69_57
                        mov              r9, rax;                             jmp   .Lx69_42
.Lx69_57:               cmp              esi, 2;                              jne   .Lx69_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx69_43
                        mov              r9, rax;                             jmp   .Lx69_42
.Lx69_58:               cmp              al, 72;                              jne   .Lx69_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx69_43
                        cmp              rax, r9;                             je    .Lx69_43
                        mov              r9, rax;                             jmp   .Lx69_42
.Lx69_43:               cmp              r8, r9;                              je    .Lx69_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx69_44
                        cmp              al, 104;                             je    .Lx69_44
                        cmp              al, 72;                              jne   .Lx69_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx69_44
                                                                              jmp   .Lx69_45
.Lx69_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx69_53
                        cmp              al, 104;                             je    .Lx69_53
                        cmp              al, 72;                              jne   .Lx69_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx69_53
                                                                              jmp   .Lx69_46
.Lx69_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx69_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx69_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx69_51
.Lx69_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx69_47
                        cmp              al, 104;                             je    .Lx69_47
                        cmp              al, 72;                              jne   .Lx69_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx69_47
                                                                              jmp   .Lx69_48
.Lx69_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx69_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx69_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx69_51
.Lx69_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx69_49
                        cmp              dl, 80;                              je    .Lx69_53
                                                                              jmp   .Lx69_52
.Lx69_49:               cmp              dl, 80;                              je    .Lx69_52
                        cmp              cl, 5;                               je    .Lx69_53
                        cmp              dl, 5;                               je    .Lx69_53
                        cmp              cl, 3;                               jne   .Lx69_50
                        cmp              dl, 3;                               jne   .Lx69_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx69_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx69_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx69_51
                                                                              jmp   .Lx69_52
.Lx69_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx69_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx69_53
.Lx69_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx69_54
.Lx69_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx69_54
.Lx69_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx69_54:               mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n51_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_var_ref_α
n45_call_builtin_prolog_β:
                        mov              r11, 20;                             jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n47_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n49_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              r11, 24
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
.Lx76_60:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx76_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx76_61
                        cmp              esi, 1;                              jne   .Lx76_62
                        mov              r8, rax;                             jmp   .Lx76_60
.Lx76_62:               cmp              esi, 2;                              jne   .Lx76_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx76_61
                        mov              r8, rax;                             jmp   .Lx76_60
.Lx76_63:               cmp              al, 72;                              jne   .Lx76_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx76_61
                        cmp              rax, r8;                             je    .Lx76_61
                        mov              r8, rax;                             jmp   .Lx76_60
.Lx76_61:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx76_80
                        cmp              al, 104;                             je    .Lx76_80
                        cmp              al, 72;                              jne   .Lx76_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx76_80
                                                                              jmp   .Lx76_74
.Lx76_74:               mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx76_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx76_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx76_73
                        lea              r9, [rsp + 512]
.Lx76_64:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx76_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx76_65
                        cmp              esi, 1;                              jne   .Lx76_66
                        mov              r9, rax;                             jmp   .Lx76_64
.Lx76_66:               cmp              esi, 2;                              jne   .Lx76_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx76_65
                        mov              r9, rax;                             jmp   .Lx76_64
.Lx76_67:               cmp              al, 72;                              jne   .Lx76_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx76_65
                        cmp              rax, r9;                             je    .Lx76_65
                        mov              r9, rax;                             jmp   .Lx76_64
.Lx76_65:               lea              rcx, [rsp + 528]
.Lx76_68:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx76_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx76_69
                        cmp              esi, 1;                              jne   .Lx76_70
                        mov              rcx, rax;                            jmp   .Lx76_68
.Lx76_70:               cmp              esi, 2;                              jne   .Lx76_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx76_69
                        mov              rcx, rax;                            jmp   .Lx76_68
.Lx76_71:               cmp              al, 72;                              jne   .Lx76_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx76_69
                        cmp              rax, rcx;                            je    .Lx76_69
                        mov              rcx, rax;                            jmp   .Lx76_68
.Lx76_69:               cmp              r9, rcx;                             je    .Lx76_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx76_75
                        cmp              al, 104;                             je    .Lx76_75
                        cmp              al, 72;                              jne   .Lx76_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx76_75
                                                                              jmp   .Lx76_72
.Lx76_75:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx76_76
                        cmp              al, 104;                             je    .Lx76_76
                        cmp              al, 72;                              jne   .Lx76_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx76_76
                                                                              jmp   .Lx76_72
.Lx76_76:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx76_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx76_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx76_77
.Lx76_80:               lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx76_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx76_72
                        mov              rdi, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx76_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx76_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx76_72
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
.Lx76_81:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx76_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx76_82
                        cmp              esi, 1;                              jne   .Lx76_83
                        mov              r9, rax;                             jmp   .Lx76_81
.Lx76_83:               cmp              esi, 2;                              jne   .Lx76_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx76_82
                        mov              r9, rax;                             jmp   .Lx76_81
.Lx76_84:               cmp              al, 72;                              jne   .Lx76_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx76_82
                        cmp              rax, r9;                             je    .Lx76_82
                        mov              r9, rax;                             jmp   .Lx76_81
.Lx76_82:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx76_85
                        cmp              al, 104;                             je    .Lx76_85
                        cmp              al, 72;                              jne   .Lx76_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx76_85
                                                                              jmp   .Lx76_86
.Lx76_85:               mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx76_87
.Lx76_86:               mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx76_87:               lea              rcx, [rsp + 528]
.Lx76_88:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx76_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx76_89
                        cmp              esi, 1;                              jne   .Lx76_90
                        mov              rcx, rax;                            jmp   .Lx76_88
.Lx76_90:               cmp              esi, 2;                              jne   .Lx76_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx76_89
                        mov              rcx, rax;                            jmp   .Lx76_88
.Lx76_91:               cmp              al, 72;                              jne   .Lx76_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx76_89
                        cmp              rax, rcx;                            je    .Lx76_89
                        mov              rcx, rax;                            jmp   .Lx76_88
.Lx76_89:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx76_92
                        cmp              al, 104;                             je    .Lx76_92
                        cmp              al, 72;                              jne   .Lx76_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx76_92
                                                                              jmp   .Lx76_93
.Lx76_92:               mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx76_94
.Lx76_93:               mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx76_94:               lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx76_77
.Lx76_73:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx76_77
.Lx76_72:               mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx76_77:               mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n51_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_suspend_α
n49_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_suspend_α:          mov              r11, 25
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx78_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx78_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n50_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n50_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   member$2F2_γ
n50_suspend_β:          mov              r11, 25;                             jmp   n51_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              r11, 26
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
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_var_ref_α
n51_call_builtin_prolog_β:
                        mov              r11, 26;                             jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n53_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
                        mov              r11, 29
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
.Lx84_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx84_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx84_41
                        cmp              esi, 1;                              jne   .Lx84_55
                        mov              r8, rax;                             jmp   .Lx84_40
.Lx84_55:               cmp              esi, 2;                              jne   .Lx84_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx84_41
                        mov              r8, rax;                             jmp   .Lx84_40
.Lx84_56:               cmp              al, 72;                              jne   .Lx84_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx84_41
                        cmp              rax, r8;                             je    .Lx84_41
                        mov              r8, rax;                             jmp   .Lx84_40
.Lx84_41:               lea              r9, [rsp + 368]
.Lx84_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx84_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx84_43
                        cmp              esi, 1;                              jne   .Lx84_57
                        mov              r9, rax;                             jmp   .Lx84_42
.Lx84_57:               cmp              esi, 2;                              jne   .Lx84_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx84_43
                        mov              r9, rax;                             jmp   .Lx84_42
.Lx84_58:               cmp              al, 72;                              jne   .Lx84_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx84_43
                        cmp              rax, r9;                             je    .Lx84_43
                        mov              r9, rax;                             jmp   .Lx84_42
.Lx84_43:               cmp              r8, r9;                              je    .Lx84_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx84_44
                        cmp              al, 104;                             je    .Lx84_44
                        cmp              al, 72;                              jne   .Lx84_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx84_44
                                                                              jmp   .Lx84_45
.Lx84_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx84_53
                        cmp              al, 104;                             je    .Lx84_53
                        cmp              al, 72;                              jne   .Lx84_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx84_53
                                                                              jmp   .Lx84_46
.Lx84_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx84_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx84_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx84_51
.Lx84_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx84_47
                        cmp              al, 104;                             je    .Lx84_47
                        cmp              al, 72;                              jne   .Lx84_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx84_47
                                                                              jmp   .Lx84_48
.Lx84_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx84_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx84_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx84_51
.Lx84_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx84_49
                        cmp              dl, 80;                              je    .Lx84_53
                                                                              jmp   .Lx84_52
.Lx84_49:               cmp              dl, 80;                              je    .Lx84_52
                        cmp              cl, 5;                               je    .Lx84_53
                        cmp              dl, 5;                               je    .Lx84_53
                        cmp              cl, 3;                               jne   .Lx84_50
                        cmp              dl, 3;                               jne   .Lx84_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx84_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx84_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx84_51
                                                                              jmp   .Lx84_52
.Lx84_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx84_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx84_53
.Lx84_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx84_54
.Lx84_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx84_54
.Lx84_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx84_54:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n63_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n55_var_ref_α
n54_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   n63_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n56_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n57_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n58_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              r11, 33
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
.Lx91_60:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx91_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx91_61
                        cmp              esi, 1;                              jne   .Lx91_62
                        mov              r8, rax;                             jmp   .Lx91_60
.Lx91_62:               cmp              esi, 2;                              jne   .Lx91_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx91_61
                        mov              r8, rax;                             jmp   .Lx91_60
.Lx91_63:               cmp              al, 72;                              jne   .Lx91_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx91_61
                        cmp              rax, r8;                             je    .Lx91_61
                        mov              r8, rax;                             jmp   .Lx91_60
.Lx91_61:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx91_80
                        cmp              al, 104;                             je    .Lx91_80
                        cmp              al, 72;                              jne   .Lx91_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx91_80
                                                                              jmp   .Lx91_74
.Lx91_74:               mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx91_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx91_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx91_73
                        lea              r9, [rsp + 272]
.Lx91_64:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx91_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx91_65
                        cmp              esi, 1;                              jne   .Lx91_66
                        mov              r9, rax;                             jmp   .Lx91_64
.Lx91_66:               cmp              esi, 2;                              jne   .Lx91_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx91_65
                        mov              r9, rax;                             jmp   .Lx91_64
.Lx91_67:               cmp              al, 72;                              jne   .Lx91_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx91_65
                        cmp              rax, r9;                             je    .Lx91_65
                        mov              r9, rax;                             jmp   .Lx91_64
.Lx91_65:               lea              rcx, [rsp + 288]
.Lx91_68:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx91_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx91_69
                        cmp              esi, 1;                              jne   .Lx91_70
                        mov              rcx, rax;                            jmp   .Lx91_68
.Lx91_70:               cmp              esi, 2;                              jne   .Lx91_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx91_69
                        mov              rcx, rax;                            jmp   .Lx91_68
.Lx91_71:               cmp              al, 72;                              jne   .Lx91_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx91_69
                        cmp              rax, rcx;                            je    .Lx91_69
                        mov              rcx, rax;                            jmp   .Lx91_68
.Lx91_69:               cmp              r9, rcx;                             je    .Lx91_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx91_75
                        cmp              al, 104;                             je    .Lx91_75
                        cmp              al, 72;                              jne   .Lx91_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx91_75
                                                                              jmp   .Lx91_72
.Lx91_75:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx91_76
                        cmp              al, 104;                             je    .Lx91_76
                        cmp              al, 72;                              jne   .Lx91_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx91_76
                                                                              jmp   .Lx91_72
.Lx91_76:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx91_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx91_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx91_77
.Lx91_80:               lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx91_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx91_72
                        mov              rdi, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx91_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx91_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx91_72
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
.Lx91_81:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx91_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx91_82
                        cmp              esi, 1;                              jne   .Lx91_83
                        mov              r9, rax;                             jmp   .Lx91_81
.Lx91_83:               cmp              esi, 2;                              jne   .Lx91_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx91_82
                        mov              r9, rax;                             jmp   .Lx91_81
.Lx91_84:               cmp              al, 72;                              jne   .Lx91_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx91_82
                        cmp              rax, r9;                             je    .Lx91_82
                        mov              r9, rax;                             jmp   .Lx91_81
.Lx91_82:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx91_85
                        cmp              al, 104;                             je    .Lx91_85
                        cmp              al, 72;                              jne   .Lx91_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx91_85
                                                                              jmp   .Lx91_86
.Lx91_85:               mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx91_87
.Lx91_86:               mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx91_87:               lea              rcx, [rsp + 288]
.Lx91_88:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx91_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx91_89
                        cmp              esi, 1;                              jne   .Lx91_90
                        mov              rcx, rax;                            jmp   .Lx91_88
.Lx91_90:               cmp              esi, 2;                              jne   .Lx91_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx91_89
                        mov              rcx, rax;                            jmp   .Lx91_88
.Lx91_91:               cmp              al, 72;                              jne   .Lx91_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx91_89
                        cmp              rax, rcx;                            je    .Lx91_89
                        mov              rcx, rax;                            jmp   .Lx91_88
.Lx91_89:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx91_92
                        cmp              al, 104;                             je    .Lx91_92
                        cmp              al, 72;                              jne   .Lx91_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx91_92
                                                                              jmp   .Lx91_93
.Lx91_92:               mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx91_94
.Lx91_93:               mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx91_94:               lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx91_77
.Lx91_73:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx91_77
.Lx91_72:               mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx91_77:               mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n63_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_var_ref_α
n58_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   n63_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 672]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n60_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n61_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_proc_staged_α: mov              r11, 36
                        mov              qword ptr [rsp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx97_20
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx97_21
.Lx97_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx97_21:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx97_22
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx97_23
.Lx97_22:               mov              edi, 1
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx97_23:               lea              rax, [rip + .Lx97_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx97_1
                        lea              rcx, [rip + .Lx97_3]
                        lea              rdx, [rip + .Lx97_4];                jmp   rax
.Lx97_3:                mov              qword ptr [rsp + 168], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx97_5
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx97_2
.Lx97_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx97_2
.Lx97_4:                mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx97_6
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx97_2
.Lx97_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx97_2
.Lx97_1:                call             rt_faildescr@PLT
.Lx97_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx97_29
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
.Lx97_29:               mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n63_call_builtin_prolog_α
                                                                              jmp   n62_suspend_α
n61_call_proc_staged_β: mov              r11, 36
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 160], 0
                        lea              rdi, [rsp + 176]
                        lea              rsi, [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n63_call_builtin_prolog_α
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
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n63_call_builtin_prolog_α
                        lea              r8, [rip + .Lx97_7]
                        push             r8
                        lea              rcx, [rip + .Lx97_3]
                        lea              rdx, [rip + .Lx97_4];                jmp   rax
.Lx97_7:                add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n63_call_builtin_prolog_α
                                                                              jmp   n62_suspend_α
.Lx97_0:                .quad            .Lx97_0_s
.Lx97_0_s:              .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n62_suspend_α:          mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx99_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx99_61:               mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n62_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n62_suspend_β]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   member$2F2_γ
n62_suspend_β:          mov              r11, 37;                             jmp   n61_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        mov              r11, 38
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
n63_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_β:
                                                                              jmp   n50_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx100_50
                        mov              qword ptr [rsp + 656], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 656];          jmp   rax
.Lx100_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 744]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
member$2F2_ω:
                        mov              rcx, qword ptr [rsp + 752]
                        add              rsp, 768;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$length_$2F3:
                        sub              rsp, 1360
                        mov              qword ptr [rsp + 1336], rcx
                        mov              qword ptr [rsp + 1344], rdx
                        mov              qword ptr [rsp + 1352], rsp
                        mov              rdi, rsp
                        mov              esi, 1216
                        mov              edx, 1328
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
$length_$2F3_α_body:
                        lea              rax, [rip + n115_suspend_β]
                        mov              qword ptr [rsp + 1216], rax
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
                        mov              r11, 39
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx142_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx142_101
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
.Lx142_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx142_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    $length_$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_var_ref_α
n101_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   $length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n103_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     mov              r11, 41
                        mov              qword ptr [rsp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n104_lit_string_α
.Lx145_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              r11, 42
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 2
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n105_call_builtin_prolog_α
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        lea              r8, [rsp + 1120]
.Lx147_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx147_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx147_111
                        cmp              esi, 1;                              jne   .Lx147_112
                        mov              r8, rax;                             jmp   .Lx147_110
.Lx147_112:             cmp              esi, 2;                              jne   .Lx147_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx147_111
                        mov              r8, rax;                             jmp   .Lx147_110
.Lx147_113:             cmp              al, 72;                              jne   .Lx147_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx147_111
                        cmp              rax, r8;                             je    .Lx147_111
                        mov              r8, rax;                             jmp   .Lx147_110
.Lx147_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx147_114
                        cmp              al, 104;                             je    .Lx147_114
                        cmp              al, 72;                              jne   .Lx147_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx147_114
                                                                              jmp   .Lx147_118
.Lx147_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx147_115
                        cmp              al, 3;                               je    .Lx147_114
                        cmp              al, 2;                               jne   .Lx147_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx147_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx147_114
                                                                              jmp   .Lx147_116
.Lx147_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx147_117
.Lx147_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx147_117
.Lx147_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx147_117:             mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n117_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n106_var_ref_α
n105_call_builtin_prolog_β:
                        mov              r11, 43;                             jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n106_var_ref_α:         mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              r11, 45
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 2
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n108_call_builtin_prolog_α
.Lx150_0:               .quad            .Lx150_0_s
.Lx150_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_prolog_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax
                        lea              rdi, [rsp + 1040]
                        mov              rsi, qword ptr [rip + .Lx151_2];     jmp   .Lx151_3
.Lx151_2:               .quad            .Lx151_2_s
.Lx151_2_s:             .string          "[]"
.Lx151_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n116_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_var_ref_α
n108_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   n116_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:         mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n110_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1280]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        lea              rdi, [rsp + 960]
                        lea              r8, [rsp + 960]
.Lx156_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx156_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx156_41
                        cmp              esi, 1;                              jne   .Lx156_55
                        mov              r8, rax;                             jmp   .Lx156_40
.Lx156_55:              cmp              esi, 2;                              jne   .Lx156_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx156_41
                        mov              r8, rax;                             jmp   .Lx156_40
.Lx156_56:              cmp              al, 72;                              jne   .Lx156_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx156_41
                        cmp              rax, r8;                             je    .Lx156_41
                        mov              r8, rax;                             jmp   .Lx156_40
.Lx156_41:              lea              r9, [rsp + 976]
.Lx156_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx156_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx156_43
                        cmp              esi, 1;                              jne   .Lx156_57
                        mov              r9, rax;                             jmp   .Lx156_42
.Lx156_57:              cmp              esi, 2;                              jne   .Lx156_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx156_43
                        mov              r9, rax;                             jmp   .Lx156_42
.Lx156_58:              cmp              al, 72;                              jne   .Lx156_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx156_43
                        cmp              rax, r9;                             je    .Lx156_43
                        mov              r9, rax;                             jmp   .Lx156_42
.Lx156_43:              cmp              r8, r9;                              je    .Lx156_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx156_44
                        cmp              al, 104;                             je    .Lx156_44
                        cmp              al, 72;                              jne   .Lx156_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx156_44
                                                                              jmp   .Lx156_45
.Lx156_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx156_53
                        cmp              al, 104;                             je    .Lx156_53
                        cmp              al, 72;                              jne   .Lx156_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx156_53
                                                                              jmp   .Lx156_46
.Lx156_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx156_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx156_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx156_51
.Lx156_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx156_47
                        cmp              al, 104;                             je    .Lx156_47
                        cmp              al, 72;                              jne   .Lx156_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx156_47
                                                                              jmp   .Lx156_48
.Lx156_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx156_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx156_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx156_51
.Lx156_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx156_49
                        cmp              dl, 80;                              je    .Lx156_53
                                                                              jmp   .Lx156_52
.Lx156_49:              cmp              dl, 80;                              je    .Lx156_52
                        cmp              cl, 5;                               je    .Lx156_53
                        cmp              dl, 5;                               je    .Lx156_53
                        cmp              cl, 3;                               jne   .Lx156_50
                        cmp              dl, 3;                               jne   .Lx156_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx156_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx156_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx156_51
                                                                              jmp   .Lx156_52
.Lx156_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx156_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx156_53
.Lx156_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx156_54
.Lx156_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx156_54
.Lx156_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx156_54:              mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n116_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_var_ref_α
n111_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   n116_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:         mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n113_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n113_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1280]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 880]
                        lea              r8, [rsp + 880]
.Lx161_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx161_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx161_41
                        cmp              esi, 1;                              jne   .Lx161_55
                        mov              r8, rax;                             jmp   .Lx161_40
.Lx161_55:              cmp              esi, 2;                              jne   .Lx161_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx161_41
                        mov              r8, rax;                             jmp   .Lx161_40
.Lx161_56:              cmp              al, 72;                              jne   .Lx161_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx161_41
                        cmp              rax, r8;                             je    .Lx161_41
                        mov              r8, rax;                             jmp   .Lx161_40
.Lx161_41:              lea              r9, [rsp + 896]
.Lx161_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx161_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx161_43
                        cmp              esi, 1;                              jne   .Lx161_57
                        mov              r9, rax;                             jmp   .Lx161_42
.Lx161_57:              cmp              esi, 2;                              jne   .Lx161_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx161_43
                        mov              r9, rax;                             jmp   .Lx161_42
.Lx161_58:              cmp              al, 72;                              jne   .Lx161_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx161_43
                        cmp              rax, r9;                             je    .Lx161_43
                        mov              r9, rax;                             jmp   .Lx161_42
.Lx161_43:              cmp              r8, r9;                              je    .Lx161_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx161_44
                        cmp              al, 104;                             je    .Lx161_44
                        cmp              al, 72;                              jne   .Lx161_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx161_44
                                                                              jmp   .Lx161_45
.Lx161_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx161_53
                        cmp              al, 104;                             je    .Lx161_53
                        cmp              al, 72;                              jne   .Lx161_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx161_53
                                                                              jmp   .Lx161_46
.Lx161_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx161_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx161_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx161_51
.Lx161_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx161_47
                        cmp              al, 104;                             je    .Lx161_47
                        cmp              al, 72;                              jne   .Lx161_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx161_47
                                                                              jmp   .Lx161_48
.Lx161_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx161_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx161_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx161_51
.Lx161_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx161_49
                        cmp              dl, 80;                              je    .Lx161_53
                                                                              jmp   .Lx161_52
.Lx161_49:              cmp              dl, 80;                              je    .Lx161_52
                        cmp              cl, 5;                               je    .Lx161_53
                        cmp              dl, 5;                               je    .Lx161_53
                        cmp              cl, 3;                               jne   .Lx161_50
                        cmp              dl, 3;                               jne   .Lx161_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx161_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx161_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx161_51
                                                                              jmp   .Lx161_52
.Lx161_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx161_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx161_53
.Lx161_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx161_54
.Lx161_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx161_54
.Lx161_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx161_54:              mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n116_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n115_suspend_α
n114_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n116_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_suspend_α:         mov              r11, 53
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx163_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1216];         jmp   rax
.Lx163_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n115_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n115_suspend_β]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   $length_$2F3_γ
n115_suspend_β:         mov              r11, 53;                             jmp   n116_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    $length_$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n117_var_ref_α
n116_call_builtin_prolog_β:
                        mov              r11, 54;                             jmp   $length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     mov              r11, 56
                        mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n119_lit_integer_α
.Lx167_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     mov              r11, 57
                        mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n120_call_builtin_prolog_α
.Lx168_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
                        mov              r11, 58
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        lea              r8, [rsp + 720]
.Lx169_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx169_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx169_111
                        cmp              esi, 1;                              jne   .Lx169_112
                        mov              r8, rax;                             jmp   .Lx169_110
.Lx169_112:             cmp              esi, 2;                              jne   .Lx169_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx169_111
                        mov              r8, rax;                             jmp   .Lx169_110
.Lx169_113:             cmp              al, 72;                              jne   .Lx169_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx169_111
                        cmp              rax, r8;                             je    .Lx169_111
                        mov              r8, rax;                             jmp   .Lx169_110
.Lx169_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx169_114
                        cmp              al, 104;                             je    .Lx169_114
                        cmp              al, 72;                              jne   .Lx169_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx169_114
                                                                              jmp   .Lx169_118
.Lx169_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx169_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              dl, 0;                               je    .Lx169_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx169_115
                                                                              jmp   .Lx169_114
.Lx169_119:             cmp              al, 3;                               jne   .Lx169_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx169_114
                                                                              jmp   .Lx169_115
.Lx169_120:             cmp              al, 2;                               jne   .Lx169_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx169_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx169_114
                                                                              jmp   .Lx169_115
.Lx169_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx169_117
.Lx169_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx169_117
.Lx169_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx169_117:             mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_var_ref_α
n120_call_builtin_prolog_β:
                        mov              r11, 58;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n123_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n124_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        mov              r11, 62
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        lea              r8, [rsp + 624]
.Lx176_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx176_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx176_61
                        cmp              esi, 1;                              jne   .Lx176_62
                        mov              r8, rax;                             jmp   .Lx176_60
.Lx176_62:              cmp              esi, 2;                              jne   .Lx176_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx176_61
                        mov              r8, rax;                             jmp   .Lx176_60
.Lx176_63:              cmp              al, 72;                              jne   .Lx176_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx176_61
                        cmp              rax, r8;                             je    .Lx176_61
                        mov              r8, rax;                             jmp   .Lx176_60
.Lx176_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx176_80
                        cmp              al, 104;                             je    .Lx176_80
                        cmp              al, 72;                              jne   .Lx176_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx176_80
                                                                              jmp   .Lx176_74
.Lx176_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx176_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx176_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx176_73
                        lea              r9, [rsp + 640]
.Lx176_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx176_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx176_65
                        cmp              esi, 1;                              jne   .Lx176_66
                        mov              r9, rax;                             jmp   .Lx176_64
.Lx176_66:              cmp              esi, 2;                              jne   .Lx176_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx176_65
                        mov              r9, rax;                             jmp   .Lx176_64
.Lx176_67:              cmp              al, 72;                              jne   .Lx176_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx176_65
                        cmp              rax, r9;                             je    .Lx176_65
                        mov              r9, rax;                             jmp   .Lx176_64
.Lx176_65:              lea              rcx, [rsp + 656]
.Lx176_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx176_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx176_69
                        cmp              esi, 1;                              jne   .Lx176_70
                        mov              rcx, rax;                            jmp   .Lx176_68
.Lx176_70:              cmp              esi, 2;                              jne   .Lx176_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx176_69
                        mov              rcx, rax;                            jmp   .Lx176_68
.Lx176_71:              cmp              al, 72;                              jne   .Lx176_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx176_69
                        cmp              rax, rcx;                            je    .Lx176_69
                        mov              rcx, rax;                            jmp   .Lx176_68
.Lx176_69:              cmp              r9, rcx;                             je    .Lx176_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx176_75
                        cmp              al, 104;                             je    .Lx176_75
                        cmp              al, 72;                              jne   .Lx176_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx176_75
                                                                              jmp   .Lx176_72
.Lx176_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx176_76
                        cmp              al, 104;                             je    .Lx176_76
                        cmp              al, 72;                              jne   .Lx176_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx176_76
                                                                              jmp   .Lx176_72
.Lx176_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx176_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx176_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx176_77
.Lx176_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx176_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx176_72
                        mov              rdi, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx176_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx176_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx176_72
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
                        lea              r9, [rsp + 640]
.Lx176_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx176_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx176_82
                        cmp              esi, 1;                              jne   .Lx176_83
                        mov              r9, rax;                             jmp   .Lx176_81
.Lx176_83:              cmp              esi, 2;                              jne   .Lx176_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx176_82
                        mov              r9, rax;                             jmp   .Lx176_81
.Lx176_84:              cmp              al, 72;                              jne   .Lx176_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx176_82
                        cmp              rax, r9;                             je    .Lx176_82
                        mov              r9, rax;                             jmp   .Lx176_81
.Lx176_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx176_85
                        cmp              al, 104;                             je    .Lx176_85
                        cmp              al, 72;                              jne   .Lx176_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx176_85
                                                                              jmp   .Lx176_86
.Lx176_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx176_87
.Lx176_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx176_87:              lea              rcx, [rsp + 656]
.Lx176_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx176_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx176_89
                        cmp              esi, 1;                              jne   .Lx176_90
                        mov              rcx, rax;                            jmp   .Lx176_88
.Lx176_90:              cmp              esi, 2;                              jne   .Lx176_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx176_89
                        mov              rcx, rax;                            jmp   .Lx176_88
.Lx176_91:              cmp              al, 72;                              jne   .Lx176_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx176_89
                        cmp              rax, rcx;                            je    .Lx176_89
                        mov              rcx, rax;                            jmp   .Lx176_88
.Lx176_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx176_92
                        cmp              al, 104;                             je    .Lx176_92
                        cmp              al, 72;                              jne   .Lx176_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx176_92
                                                                              jmp   .Lx176_93
.Lx176_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx176_94
.Lx176_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx176_94:              lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx176_77
.Lx176_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx176_77
.Lx176_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx176_77:              mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n125_var_ref_α
n124_call_builtin_prolog_β:
                        mov              r11, 62;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1280]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n127_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
                        mov              r11, 65
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
.Lx181_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx181_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx181_41
                        cmp              esi, 1;                              jne   .Lx181_55
                        mov              r8, rax;                             jmp   .Lx181_40
.Lx181_55:              cmp              esi, 2;                              jne   .Lx181_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx181_41
                        mov              r8, rax;                             jmp   .Lx181_40
.Lx181_56:              cmp              al, 72;                              jne   .Lx181_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx181_41
                        cmp              rax, r8;                             je    .Lx181_41
                        mov              r8, rax;                             jmp   .Lx181_40
.Lx181_41:              lea              r9, [rsp + 544]
.Lx181_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx181_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx181_43
                        cmp              esi, 1;                              jne   .Lx181_57
                        mov              r9, rax;                             jmp   .Lx181_42
.Lx181_57:              cmp              esi, 2;                              jne   .Lx181_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx181_43
                        mov              r9, rax;                             jmp   .Lx181_42
.Lx181_58:              cmp              al, 72;                              jne   .Lx181_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx181_43
                        cmp              rax, r9;                             je    .Lx181_43
                        mov              r9, rax;                             jmp   .Lx181_42
.Lx181_43:              cmp              r8, r9;                              je    .Lx181_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx181_44
                        cmp              al, 104;                             je    .Lx181_44
                        cmp              al, 72;                              jne   .Lx181_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx181_44
                                                                              jmp   .Lx181_45
.Lx181_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx181_53
                        cmp              al, 104;                             je    .Lx181_53
                        cmp              al, 72;                              jne   .Lx181_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx181_53
                                                                              jmp   .Lx181_46
.Lx181_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx181_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx181_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx181_51
.Lx181_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx181_47
                        cmp              al, 104;                             je    .Lx181_47
                        cmp              al, 72;                              jne   .Lx181_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx181_47
                                                                              jmp   .Lx181_48
.Lx181_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx181_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx181_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx181_51
.Lx181_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx181_49
                        cmp              dl, 80;                              je    .Lx181_53
                                                                              jmp   .Lx181_52
.Lx181_49:              cmp              dl, 80;                              je    .Lx181_52
                        cmp              cl, 5;                               je    .Lx181_53
                        cmp              dl, 5;                               je    .Lx181_53
                        cmp              cl, 3;                               jne   .Lx181_50
                        cmp              dl, 3;                               jne   .Lx181_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx181_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx181_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx181_51
                                                                              jmp   .Lx181_52
.Lx181_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx181_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx181_53
.Lx181_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx181_54
.Lx181_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx181_54
.Lx181_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx181_54:              mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n128_var_ref_α
n127_call_builtin_prolog_β:
                        mov              r11, 65;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1264]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n130_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              r11, 68
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
.Lx186_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx186_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx186_41
                        cmp              esi, 1;                              jne   .Lx186_55
                        mov              r8, rax;                             jmp   .Lx186_40
.Lx186_55:              cmp              esi, 2;                              jne   .Lx186_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx186_41
                        mov              r8, rax;                             jmp   .Lx186_40
.Lx186_56:              cmp              al, 72;                              jne   .Lx186_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx186_41
                        cmp              rax, r8;                             je    .Lx186_41
                        mov              r8, rax;                             jmp   .Lx186_40
.Lx186_41:              lea              r9, [rsp + 464]
.Lx186_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx186_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx186_43
                        cmp              esi, 1;                              jne   .Lx186_57
                        mov              r9, rax;                             jmp   .Lx186_42
.Lx186_57:              cmp              esi, 2;                              jne   .Lx186_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx186_43
                        mov              r9, rax;                             jmp   .Lx186_42
.Lx186_58:              cmp              al, 72;                              jne   .Lx186_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx186_43
                        cmp              rax, r9;                             je    .Lx186_43
                        mov              r9, rax;                             jmp   .Lx186_42
.Lx186_43:              cmp              r8, r9;                              je    .Lx186_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx186_44
                        cmp              al, 104;                             je    .Lx186_44
                        cmp              al, 72;                              jne   .Lx186_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx186_44
                                                                              jmp   .Lx186_45
.Lx186_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx186_53
                        cmp              al, 104;                             je    .Lx186_53
                        cmp              al, 72;                              jne   .Lx186_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx186_53
                                                                              jmp   .Lx186_46
.Lx186_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx186_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx186_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx186_51
.Lx186_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx186_47
                        cmp              al, 104;                             je    .Lx186_47
                        cmp              al, 72;                              jne   .Lx186_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx186_47
                                                                              jmp   .Lx186_48
.Lx186_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx186_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx186_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx186_51
.Lx186_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx186_49
                        cmp              dl, 80;                              je    .Lx186_53
                                                                              jmp   .Lx186_52
.Lx186_49:              cmp              dl, 80;                              je    .Lx186_52
                        cmp              cl, 5;                               je    .Lx186_53
                        cmp              dl, 5;                               je    .Lx186_53
                        cmp              cl, 3;                               jne   .Lx186_50
                        cmp              dl, 3;                               jne   .Lx186_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx186_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx186_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx186_51
                                                                              jmp   .Lx186_52
.Lx186_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx186_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx186_53
.Lx186_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx186_54
.Lx186_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx186_54
.Lx186_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx186_54:              mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n131_var_ref_α
n130_call_builtin_prolog_β:
                        mov              r11, 68;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1248]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n132_var_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             mov              r11, 70
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 408], rax;          jmp   n133_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     mov              r11, 71
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n134_call_builtin_prolog_α
.Lx191_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
                        mov              r11, 72
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n135_call_builtin_prolog_α
n134_call_builtin_prolog_β:
                        mov              r11, 72;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_prolog_α:
                        mov              r11, 73
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n136_var_ref_α
n135_call_builtin_prolog_β:
                        mov              r11, 73;                             jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n137_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1248]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1264]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n139_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        mov              r11, 77
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx201_20
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx201_21
.Lx201_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx201_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx201_22
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx201_23
.Lx201_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx201_23:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx201_24
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx201_25
.Lx201_24:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx201_25:              lea              rax, [rip + .Lx201_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx201_1
                        lea              rcx, [rip + .Lx201_3]
                        lea              rdx, [rip + .Lx201_4];               jmp   rax
.Lx201_3:               mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx201_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx201_2
.Lx201_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx201_2
.Lx201_4:               mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx201_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx201_2
.Lx201_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx201_2
.Lx201_1:               call             rt_faildescr@PLT
.Lx201_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx201_29
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
.Lx201_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                                                                              jmp   n140_suspend_α
n139_call_proc_staged_β:
                        mov              r11, 77
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n141_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1216
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n141_call_builtin_prolog_α
                        lea              r8, [rip + .Lx201_7]
                        push             r8
                        lea              rcx, [rip + .Lx201_3]
                        lea              rdx, [rip + .Lx201_4];               jmp   rax
.Lx201_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n141_call_builtin_prolog_α
                                                                              jmp   n140_suspend_α
.Lx201_0:               .quad            .Lx201_0_s
.Lx201_0_s:             .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n140_suspend_α:         mov              r11, 78
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx203_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1216];         jmp   rax
.Lx203_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n140_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n140_suspend_β]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   $length_$2F3_γ
n140_suspend_β:         mov              r11, 78;                             jmp   n139_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_prolog_α:
                        mov              r11, 79
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
                        cmp              al, 104;                             je    $length_$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   $length_$2F3_ω
n141_call_builtin_prolog_β:
                        mov              r11, 79;                             jmp   $length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
$length_$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$length_$2F3_β:
                                                                              jmp   n115_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$length_$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r11]
                        test             r12, r12;                            je    .Lx204_50
                        mov              qword ptr [rsp + 1216], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1216];         jmp   rax
.Lx204_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1336]
                        add              rsp, 1360;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$length_$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1344]
                        add              rsp, 1360;                           jmp   rcx
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
                        sub              rsp, 1792
                        mov              qword ptr [rsp + 1768], rcx
                        mov              qword ptr [rsp + 1776], rdx
                        mov              qword ptr [rsp + 1784], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1760
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_prolog_α:
                        mov              r11, 80
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx264_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx264_101
.Lx264_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx264_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx264_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx264_101
.Lx264_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx264_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n206_lit_string_α
n205_call_builtin_prolog_β:
                        mov              r11, 80;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:      mov              r11, 81
                        mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 17
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n207_lit_string_α
.Lx265_0:               .quad            .Lx265_0_s
.Lx265_0_s:             .string          "/tmp/rung66_a.txt"
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      mov              r11, 82
                        mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 5
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n208_var_ref_α
.Lx266_0:               .quad            .Lx266_0_s
.Lx266_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1680]
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx;         jmp   n209_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_prolog_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1624], rax
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1608], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1592], rax
                        .section         .rodata
.Lrkfn270:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]
                        lea              rsi, [rsp + 1584]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n210_var_ref_α
n209_call_builtin_prolog_β:
                        mov              r11, 84;                             jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1680]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n211_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n211_call_proc_staged_α:
                        mov              r11, 86
                        mov              qword ptr [rsp + 1520], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx274_20
                        mov              rax, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx274_21
.Lx274_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx274_21:              lea              rax, [rip + .Lx274_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx274_1
                        lea              rcx, [rip + .Lx274_3]
                        lea              rdx, [rip + .Lx274_4];               jmp   rax
.Lx274_3:               mov              qword ptr [rsp + 1528], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1520]
                        test             rax, rax;                            jne   .Lx274_5
                        mov              qword ptr [rsp + 1520], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx274_2
.Lx274_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx274_2
.Lx274_4:               mov              rax, qword ptr [rsp + 1520]
                        test             rax, rax;                            jne   .Lx274_6
                        mov              qword ptr [rsp + 1520], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx274_2
.Lx274_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx274_2
.Lx274_1:               call             rt_faildescr@PLT
.Lx274_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx274_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
.Lx274_29:              mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              al, 104;                             je    n214_lit_string_α
                                                                              jmp   n212_lit_string_α
n211_call_proc_staged_β:
                        mov              r11, 86
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1520], 0
                        lea              rdi, [rsp + 1536]
                        lea              rsi, [rsp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n214_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
                        mov              ecx, 0
                        mov              r8d, 96
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1552]
                        mov              rdx, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n214_lit_string_α
                        lea              r8, [rip + .Lx274_7]
                        push             r8
                        lea              rcx, [rip + .Lx274_3]
                        lea              rdx, [rip + .Lx274_4];               jmp   rax
.Lx274_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              al, 104;                             je    n214_lit_string_α
                                                                              jmp   n212_lit_string_α
.Lx274_0:               .quad            .Lx274_0_s
.Lx274_0_s:             .string          "current_stream/1"
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rsp + 1424], 2            # result
                        mov              dword ptr [rsp + 1428], 11
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n213_call_builtin_prolog_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          "found_bound"
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_prolog_α:
                        mov              r11, 88
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1416], rax
                        .section         .rodata
.Lrkfn277:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rsp + 1408]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n216_lit_string_α
n213_call_builtin_prolog_β:
                        mov              r11, 88;                             jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              r11, 89
                        mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 15
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n215_call_builtin_prolog_α
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          "not_found_bound"
#-----------------------------------------------------------------------------------------------------------------------
n215_call_builtin_prolog_α:
                        mov              r11, 90
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn280:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n216_lit_string_α
n215_call_builtin_prolog_β:
                        mov              r11, 90;                             jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 0
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n217_call_builtin_prolog_α
.Lx281_0:               .quad            .Lx281_0_s
.Lx281_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n217_call_builtin_prolog_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn283:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn283]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n218_call_builtin_prolog_α
n217_call_builtin_prolog_β:
                        mov              r11, 92;                             jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_prolog_α:
                        mov              r11, 93
                        .section         .rodata
.Lrkfn285:              .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn285]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n219_var_ref_α
n218_call_builtin_prolog_β:
                        mov              r11, 93;                             jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1728]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n220_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_proc_staged_α:
                        mov              r11, 95
                        mov              qword ptr [rsp + 1296], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx289_20
                        mov              rax, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx289_21
.Lx289_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx289_21:              lea              rax, [rip + .Lx289_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx289_1
                        lea              rcx, [rip + .Lx289_3]
                        lea              rdx, [rip + .Lx289_4];               jmp   rax
.Lx289_3:               mov              qword ptr [rsp + 1304], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1296]
                        test             rax, rax;                            jne   .Lx289_5
                        mov              qword ptr [rsp + 1296], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx289_2
.Lx289_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx289_2
.Lx289_4:               mov              rax, qword ptr [rsp + 1296]
                        test             rax, rax;                            jne   .Lx289_6
                        mov              qword ptr [rsp + 1296], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx289_2
.Lx289_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx289_2
.Lx289_1:               call             rt_faildescr@PLT
.Lx289_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx289_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
.Lx289_29:              mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n223_call_builtin_prolog_α
                                                                              jmp   n221_var_α
n220_call_proc_staged_β:
                        mov              r11, 95
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1296], 0
                        lea              rdi, [rsp + 1312]
                        lea              rsi, [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n223_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        mov              ecx, 0
                        mov              r8d, 96
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n223_call_builtin_prolog_α
                        lea              r8, [rip + .Lx289_7]
                        push             r8
                        lea              rcx, [rip + .Lx289_3]
                        lea              rdx, [rip + .Lx289_4];               jmp   rax
.Lx289_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n223_call_builtin_prolog_α
                                                                              jmp   n221_var_α
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "current_stream/1"
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             mov              r11, 96
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n222_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_prolog_α:
                        mov              r11, 97
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn293:              .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n220_call_proc_staged_β
n222_call_builtin_prolog_β:
                        mov              r11, 97;                             jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_prolog_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lrkfn295:              .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn295]
                        lea              rsi, [rsp + 1104]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n224_var_ref_α
n223_call_builtin_prolog_β:
                        mov              r11, 98;                             jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1712]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n225_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n225_call_builtin_prolog_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        lea              r8, [rsp + 1152]
.Lx298_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx298_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx298_41
                        cmp              esi, 1;                              jne   .Lx298_55
                        mov              r8, rax;                             jmp   .Lx298_40
.Lx298_55:              cmp              esi, 2;                              jne   .Lx298_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx298_41
                        mov              r8, rax;                             jmp   .Lx298_40
.Lx298_56:              cmp              al, 72;                              jne   .Lx298_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx298_41
                        cmp              rax, r8;                             je    .Lx298_41
                        mov              r8, rax;                             jmp   .Lx298_40
.Lx298_41:              lea              r9, [rsp + 1168]
.Lx298_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx298_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx298_43
                        cmp              esi, 1;                              jne   .Lx298_57
                        mov              r9, rax;                             jmp   .Lx298_42
.Lx298_57:              cmp              esi, 2;                              jne   .Lx298_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx298_43
                        mov              r9, rax;                             jmp   .Lx298_42
.Lx298_58:              cmp              al, 72;                              jne   .Lx298_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx298_43
                        cmp              rax, r9;                             je    .Lx298_43
                        mov              r9, rax;                             jmp   .Lx298_42
.Lx298_43:              cmp              r8, r9;                              je    .Lx298_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx298_44
                        cmp              al, 104;                             je    .Lx298_44
                        cmp              al, 72;                              jne   .Lx298_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx298_44
                                                                              jmp   .Lx298_45
.Lx298_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx298_53
                        cmp              al, 104;                             je    .Lx298_53
                        cmp              al, 72;                              jne   .Lx298_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx298_53
                                                                              jmp   .Lx298_46
.Lx298_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx298_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx298_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx298_51
.Lx298_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx298_47
                        cmp              al, 104;                             je    .Lx298_47
                        cmp              al, 72;                              jne   .Lx298_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx298_47
                                                                              jmp   .Lx298_48
.Lx298_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r10 + 0]
                        test             rdi, rdi;                            je    .Lx298_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx298_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx298_51
.Lx298_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx298_49
                        cmp              dl, 80;                              je    .Lx298_53
                                                                              jmp   .Lx298_52
.Lx298_49:              cmp              dl, 80;                              je    .Lx298_52
                        cmp              cl, 5;                               je    .Lx298_53
                        cmp              dl, 5;                               je    .Lx298_53
                        cmp              cl, 3;                               jne   .Lx298_50
                        cmp              dl, 3;                               jne   .Lx298_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx298_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx298_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx298_51
                                                                              jmp   .Lx298_52
.Lx298_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx298_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx298_53
.Lx298_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx298_54
.Lx298_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx298_54
.Lx298_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx298_54:              mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n226_var_ref_α
n225_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1680]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n227_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n227_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1712]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n228_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n228_call_proc_staged_α:
                        mov              r11, 103
                        mov              qword ptr [rsp + 992], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx304_20
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx304_21
.Lx304_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx304_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx304_22
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx304_23
.Lx304_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx304_23:              lea              rax, [rip + .Lx304_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx304_1
                        lea              rcx, [rip + .Lx304_3]
                        lea              rdx, [rip + .Lx304_4];               jmp   rax
.Lx304_3:               mov              qword ptr [rsp + 1000], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 992]
                        test             rax, rax;                            jne   .Lx304_5
                        mov              qword ptr [rsp + 992], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx304_2
.Lx304_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx304_2
.Lx304_4:               mov              rax, qword ptr [rsp + 992]
                        test             rax, rax;                            jne   .Lx304_6
                        mov              qword ptr [rsp + 992], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx304_2
.Lx304_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx304_2
.Lx304_1:               call             rt_faildescr@PLT
.Lx304_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx304_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
.Lx304_29:              mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n231_lit_string_α
                                                                              jmp   n229_lit_string_α
n228_call_proc_staged_β:
                        mov              r11, 103
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 992], 0
                        lea              rdi, [rsp + 1008]
                        lea              rsi, [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n231_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              ecx, 48
                        mov              r8d, 656
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n231_lit_string_α
                        lea              r8, [rip + .Lx304_7]
                        push             r8
                        lea              rcx, [rip + .Lx304_3]
                        lea              rdx, [rip + .Lx304_4];               jmp   rax
.Lx304_7:               add              rsp, 8
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n231_lit_string_α
                                                                              jmp   n229_lit_string_α
.Lx304_0:               .quad            .Lx304_0_s
.Lx304_0_s:             .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 7
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n230_call_builtin_prolog_α
.Lx305_0:               .quad            .Lx305_0_s
.Lx305_0_s:             .string          "in_enum"
#-----------------------------------------------------------------------------------------------------------------------
n230_call_builtin_prolog_α:
                        mov              r11, 105
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 872], rax
                        .section         .rodata
.Lrkfn307:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn307]
                        lea              rsi, [rsp + 864]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n233_lit_string_α
n230_call_builtin_prolog_β:
                        mov              r11, 105;                            jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 11
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n232_call_builtin_prolog_α
.Lx308_0:               .quad            .Lx308_0_s
.Lx308_0_s:             .string          "not_in_enum"
#-----------------------------------------------------------------------------------------------------------------------
n232_call_builtin_prolog_α:
                        mov              r11, 107
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn310:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn310]
                        lea              rsi, [rsp + 912]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n233_lit_string_α
n232_call_builtin_prolog_β:
                        mov              r11, 107;                            jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:      mov              r11, 108
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 0
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n234_call_builtin_prolog_α
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_prolog_α:
                        mov              r11, 109
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn313:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn313]
                        lea              rsi, [rsp + 816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n235_var_ref_α
n234_call_builtin_prolog_β:
                        mov              r11, 109;                            jmp   n263_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1712]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n236_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1696]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n237_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n237_call_proc_staged_α:
                        mov              r11, 112
                        mov              qword ptr [rsp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx319_20
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx319_21
.Lx319_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx319_21:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx319_22
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx319_23
.Lx319_22:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx319_23:              lea              rax, [rip + .Lx319_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx319_1
                        lea              rcx, [rip + .Lx319_3]
                        lea              rdx, [rip + .Lx319_4];               jmp   rax
.Lx319_3:               mov              qword ptr [rsp + 744], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 736]
                        test             rax, rax;                            jne   .Lx319_5
                        mov              qword ptr [rsp + 736], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx319_2
.Lx319_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx319_2
.Lx319_4:               mov              rax, qword ptr [rsp + 736]
                        test             rax, rax;                            jne   .Lx319_6
                        mov              qword ptr [rsp + 736], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx319_2
.Lx319_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx319_2
.Lx319_1:               call             rt_faildescr@PLT
.Lx319_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx319_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
.Lx319_29:              mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                                                                              jmp   n238_var_α
n237_call_proc_staged_β:
                        mov              r11, 112
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 736], 0
                        lea              rdi, [rsp + 752]
                        lea              rsi, [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n263_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              ecx, 48
                        mov              r8d, 416
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
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
                        test             rax, rax;                            je    n263_call_builtin_prolog_α
                        lea              r8, [rip + .Lx319_7]
                        push             r8
                        lea              rcx, [rip + .Lx319_3]
                        lea              rdx, [rip + .Lx319_4];               jmp   rax
.Lx319_7:               add              rsp, 8
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n263_call_builtin_prolog_α
                                                                              jmp   n238_var_α
.Lx319_0:               .quad            .Lx319_0_s
.Lx319_0_s:             .string          "length/2"
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             mov              r11, 113
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 664], rax;          jmp   n239_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:     mov              r11, 114
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n240_call_builtin_prolog_α
.Lx322_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n240_call_builtin_prolog_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n243_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n241_lit_string_α
n240_call_builtin_prolog_β:
                        mov              r11, 115;                            jmp   n243_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 17
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n242_call_builtin_prolog_α
.Lx324_0:               .quad            .Lx324_0_s
.Lx324_0_s:             .string          "has_std_plus_open"
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_prolog_α:
                        mov              r11, 117
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn326:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn326]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n237_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n245_lit_string_α
n242_call_builtin_prolog_β:
                        mov              r11, 117;                            jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 7
                        mov              rax, qword ptr [rip + .Lx327_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n244_call_builtin_prolog_α
.Lx327_0:               .quad            .Lx327_0_s
.Lx327_0_s:             .string          "too_few"
#-----------------------------------------------------------------------------------------------------------------------
n244_call_builtin_prolog_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn329:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn329]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n237_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n245_lit_string_α
n244_call_builtin_prolog_β:
                        mov              r11, 119;                            jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 0
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n246_call_builtin_prolog_α
.Lx330_0:               .quad            .Lx330_0_s
.Lx330_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_prolog_α:
                        mov              r11, 121
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn332:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn332]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n237_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n247_var_ref_α
n246_call_builtin_prolog_β:
                        mov              r11, 121;                            jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1680]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n248_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_prolog_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn336:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn336]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n237_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n249_var_ref_α
n248_call_builtin_prolog_β:
                        mov              r11, 123;                            jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1680]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n250_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n250_call_proc_staged_α:
                        mov              r11, 125
                        mov              qword ptr [rsp + 368], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx340_20
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx340_21
.Lx340_20:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx340_21:              lea              rax, [rip + .Lx340_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx340_1
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4];               jmp   rax
.Lx340_3:               mov              qword ptr [rsp + 376], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 368]
                        test             rax, rax;                            jne   .Lx340_5
                        mov              qword ptr [rsp + 368], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx340_2
.Lx340_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx340_2
.Lx340_4:               mov              rax, qword ptr [rsp + 368]
                        test             rax, rax;                            jne   .Lx340_6
                        mov              qword ptr [rsp + 368], 1
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
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
.Lx340_29:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n253_lit_string_α
                                                                              jmp   n251_lit_string_α
n250_call_proc_staged_β:
                        mov              r11, 125
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 368], 0
                        lea              rdi, [rsp + 384]
                        lea              rsi, [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n253_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              ecx, 0
                        mov              r8d, 96
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              edi, 0
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n253_lit_string_α
                        lea              r8, [rip + .Lx340_7]
                        push             r8
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4];               jmp   rax
.Lx340_7:               add              rsp, 8
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n253_lit_string_α
                                                                              jmp   n251_lit_string_α
.Lx340_0:               .quad            .Lx340_0_s
.Lx340_0_s:             .string          "current_stream/1"
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 11
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n252_call_builtin_prolog_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "still_there"
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
                        mov              r11, 127
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn343:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn343]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n237_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n255_lit_string_α
n252_call_builtin_prolog_β:
                        mov              r11, 127;                            jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 16
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n254_call_builtin_prolog_α
.Lx344_0:               .quad            .Lx344_0_s
.Lx344_0_s:             .string          "gone_after_close"
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_prolog_α:
                        mov              r11, 129
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn346:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn346]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n237_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n255_lit_string_α
n254_call_builtin_prolog_β:
                        mov              r11, 129;                            jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      mov              r11, 130
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 0
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n256_call_builtin_prolog_α
.Lx347_0:               .quad            .Lx347_0_s
.Lx347_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n256_call_builtin_prolog_α:
                        mov              r11, 131
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn349:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn349]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n237_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n257_lit_string_α
n256_call_builtin_prolog_β:
                        mov              r11, 131;                            jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 4
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n258_call_builtin_prolog_α
.Lx350_0:               .quad            .Lx350_0_s
.Lx350_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_prolog_α:
                        mov              r11, 133
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn352:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn352]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n237_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n259_lit_string_α
n258_call_builtin_prolog_β:
                        mov              r11, 133;                            jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n260_call_builtin_prolog_α
.Lx353_0:               .quad            .Lx353_0_s
.Lx353_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_prolog_α:
                        mov              r11, 135
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn355:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n237_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n261_move_label_α
n260_call_builtin_prolog_β:
                        mov              r11, 135;                            jmp   n237_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n261_move_label_α:      mov              r11, 136
                        lea              rax, [rip + n237_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n262_disjunction_α:     mov              r11, 137
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n262_disjunction_β:     mov              r11, 137;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n263_call_builtin_prolog_α:
                        mov              r11, 138
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
n263_call_builtin_prolog_β:
                        mov              r11, 138;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n262_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1768]
                        add              rsp, 1792;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1776]
                        add              rsp, 1792;                           jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "current_stream/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__current_stream$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            112
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "length/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__length$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            464
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "member/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
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
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$length_/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__$length_$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1312
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
