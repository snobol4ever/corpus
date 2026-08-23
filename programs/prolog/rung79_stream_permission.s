                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__$call$2F1:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rcx
                        mov              qword ptr [rsp + 144], rdx
                        mov              qword ptr [rsp + 152], rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 128
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
$call$2F1_α_body:
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
.Lbynamegenfn2:         .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn2]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        lea              rcx, [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    $call$2F1_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n2_suspend_α
n1_call_builtin_gen_β:  mov              r11, 2;                              jmp   .Lx5_60
#-----------------------------------------------------------------------------------------------------------------------
n2_suspend_α:           mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx7_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96];           jmp   rax
.Lx7_61:                mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n2_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   $call$2F1_γ
n2_suspend_β:           mov              r11, 3;                              jmp   n1_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_β:
                                                                              jmp   n1_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx7_50
                        mov              qword ptr [rsp + 96], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 96];           jmp   rax
.Lx7_50:                mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 136]
                        add              rsp, 160;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$call$2F1_ω:
                        mov              rcx, qword ptr [rsp + 144]
                        add              rsp, 160;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__t$2F2:
                        sub              rsp, 1664
                        mov              qword ptr [rsp + 1640], rcx
                        mov              qword ptr [rsp + 1648], rdx
                        mov              qword ptr [rsp + 1656], rsp
                        mov              rdi, rsp
                        mov              esi, 1488
                        mov              edx, 1632
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
t$2F2_α_body:
                        lea              rax, [rip + n52_suspend_β]
                        mov              qword ptr [rsp + 1488], rax
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 4
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx54_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx54_101
.Lx54_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx54_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx54_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx54_101
.Lx54_100:              lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx54_101:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    t$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   t$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              r11, 7
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1432], rax
                        lea              rdi, [rsp + 1424]
                        lea              r8, [rsp + 1424]
.Lx59_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx59_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx59_41
                        cmp              esi, 1;                              jne   .Lx59_55
                        mov              r8, rax;                             jmp   .Lx59_40
.Lx59_55:               cmp              esi, 2;                              jne   .Lx59_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx59_41
                        mov              r8, rax;                             jmp   .Lx59_40
.Lx59_56:               cmp              al, 72;                              jne   .Lx59_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx59_41
                        cmp              rax, r8;                             je    .Lx59_41
                        mov              r8, rax;                             jmp   .Lx59_40
.Lx59_41:               lea              r9, [rsp + 1440]
.Lx59_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx59_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx59_43
                        cmp              esi, 1;                              jne   .Lx59_57
                        mov              r9, rax;                             jmp   .Lx59_42
.Lx59_57:               cmp              esi, 2;                              jne   .Lx59_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx59_43
                        mov              r9, rax;                             jmp   .Lx59_42
.Lx59_58:               cmp              al, 72;                              jne   .Lx59_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx59_43
                        cmp              rax, r9;                             je    .Lx59_43
                        mov              r9, rax;                             jmp   .Lx59_42
.Lx59_43:               cmp              r8, r9;                              je    .Lx59_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx59_44
                        cmp              al, 104;                             je    .Lx59_44
                        cmp              al, 72;                              jne   .Lx59_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx59_44
                                                                              jmp   .Lx59_45
.Lx59_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx59_53
                        cmp              al, 104;                             je    .Lx59_53
                        cmp              al, 72;                              jne   .Lx59_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx59_53
                                                                              jmp   .Lx59_46
.Lx59_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx59_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx59_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx59_51
.Lx59_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx59_47
                        cmp              al, 104;                             je    .Lx59_47
                        cmp              al, 72;                              jne   .Lx59_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx59_47
                                                                              jmp   .Lx59_48
.Lx59_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx59_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx59_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx59_51
.Lx59_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx59_49
                        cmp              dl, 80;                              je    .Lx59_53
                                                                              jmp   .Lx59_52
.Lx59_49:               cmp              dl, 80;                              je    .Lx59_52
                        cmp              cl, 5;                               je    .Lx59_53
                        cmp              dl, 5;                               je    .Lx59_53
                        cmp              cl, 3;                               jne   .Lx59_50
                        cmp              dl, 3;                               jne   .Lx59_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx59_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx59_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx59_51
                                                                              jmp   .Lx59_52
.Lx59_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx59_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx59_53
.Lx59_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx59_54
.Lx59_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx59_54
.Lx59_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx59_54:               mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              r11, 10
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax
                        lea              rdi, [rsp + 1344]
                        lea              r8, [rsp + 1344]
.Lx64_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx64_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx64_41
                        cmp              esi, 1;                              jne   .Lx64_55
                        mov              r8, rax;                             jmp   .Lx64_40
.Lx64_55:               cmp              esi, 2;                              jne   .Lx64_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx64_41
                        mov              r8, rax;                             jmp   .Lx64_40
.Lx64_56:               cmp              al, 72;                              jne   .Lx64_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx64_41
                        cmp              rax, r8;                             je    .Lx64_41
                        mov              r8, rax;                             jmp   .Lx64_40
.Lx64_41:               lea              r9, [rsp + 1360]
.Lx64_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx64_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx64_43
                        cmp              esi, 1;                              jne   .Lx64_57
                        mov              r9, rax;                             jmp   .Lx64_42
.Lx64_57:               cmp              esi, 2;                              jne   .Lx64_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx64_43
                        mov              r9, rax;                             jmp   .Lx64_42
.Lx64_58:               cmp              al, 72;                              jne   .Lx64_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx64_43
                        cmp              rax, r9;                             je    .Lx64_43
                        mov              r9, rax;                             jmp   .Lx64_42
.Lx64_43:               cmp              r8, r9;                              je    .Lx64_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx64_44
                        cmp              al, 104;                             je    .Lx64_44
                        cmp              al, 72;                              jne   .Lx64_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx64_44
                                                                              jmp   .Lx64_45
.Lx64_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx64_53
                        cmp              al, 104;                             je    .Lx64_53
                        cmp              al, 72;                              jne   .Lx64_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx64_53
                                                                              jmp   .Lx64_46
.Lx64_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx64_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx64_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx64_51
.Lx64_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx64_47
                        cmp              al, 104;                             je    .Lx64_47
                        cmp              al, 72;                              jne   .Lx64_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx64_47
                                                                              jmp   .Lx64_48
.Lx64_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx64_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx64_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx64_51
.Lx64_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx64_49
                        cmp              dl, 80;                              je    .Lx64_53
                                                                              jmp   .Lx64_52
.Lx64_49:               cmp              dl, 80;                              je    .Lx64_52
                        cmp              cl, 5;                               je    .Lx64_53
                        cmp              dl, 5;                               je    .Lx64_53
                        cmp              cl, 3;                               jne   .Lx64_50
                        cmp              dl, 3;                               jne   .Lx64_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx64_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx64_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx64_51
                                                                              jmp   .Lx64_52
.Lx64_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx64_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx64_53
.Lx64_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx64_54
.Lx64_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx64_54
.Lx64_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx64_54:               mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_lit_string_α
n14_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 5
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n16_var_ref_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1096], rax
                        lea              rdi, [rsp + 1088]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n45_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_call_builtin_prolog_α
n18_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              r11, 15
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx71_102
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176];         jmp   .Lx71_101
.Lx71_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx71_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx71_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx71_101
.Lx71_100:              lea              rdi, [rsp + 1184]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx71_101:              mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n45_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_var_ref_α
n19_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n21_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_proc_staged_α: mov              r11, 17
                        mov              qword ptr [rsp + 1280], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx75_200
                        mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx75_201
.Lx75_200:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx75_201:              lea              rax, [rip + .Lx75_7]
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
                        test             rax, rax;                            je    .Lx75_1
                        lea              rcx, [rip + .Lx75_3]
                        lea              rdx, [rip + .Lx75_4];                jmp   rax
.Lx75_3:                mov              qword ptr [rsp + 1288], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1280]
                        test             rax, rax;                            jne   .Lx75_5
                        mov              qword ptr [rsp + 1280], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx75_2
.Lx75_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx75_2
.Lx75_4:                mov              rax, qword ptr [rsp + 1280]
                        test             rax, rax;                            jne   .Lx75_6
                        mov              qword ptr [rsp + 1280], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx75_2
.Lx75_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx75_2
.Lx75_1:                call             rt_faildescr@PLT
.Lx75_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx75_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
.Lx75_29:               mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n22_call_builtin_prolog_α
                                                                              jmp   n23_var_ref_α
n21_call_proc_staged_β: mov              r11, 17
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1280], 0
                        lea              rdi, [rsp + 1296]
                        lea              rsi, [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n22_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              ecx, 0
                        mov              r8d, 96
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
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
                        test             rax, rax;                            je    n22_call_builtin_prolog_α
                        lea              r8, [rip + .Lx75_7]
                        push             r8
                        lea              rcx, [rip + .Lx75_3]
                        lea              rdx, [rip + .Lx75_4];                jmp   rax
.Lx75_7:                add              rsp, 8
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n22_call_builtin_prolog_α
                                                                              jmp   n23_var_ref_α
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn77:               .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 786432
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n45_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_var_ref_α
n22_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn81:               .string          "$tt_var"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn81]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n30_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_lit_string_α
n24_call_builtin_prolog_β:
                        mov              r11, 20;                             jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n26_var_ref_α
.Lx82_0:                .quad            .Lx82_0_s
.Lx82_0_s:              .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 7
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n28_call_builtin_prolog_α
.Lx85_0:                .quad            .Lx85_0_s
.Lx85_0_s:              .string          "success"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_call_builtin_prolog_α
n28_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn88:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n50_lit_string_α
n29_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n31_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 16
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n32_var_ref_α
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "permission_error"
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1520]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n34_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 31
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n36_call_builtin_prolog_α
n35_call_builtin_prolog_β:
                        mov              r11, 31;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        lea              r8, [rsp + 624]
.Lx99_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx99_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx99_41
                        cmp              esi, 1;                              jne   .Lx99_55
                        mov              r8, rax;                             jmp   .Lx99_40
.Lx99_55:               cmp              esi, 2;                              jne   .Lx99_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx99_41
                        mov              r8, rax;                             jmp   .Lx99_40
.Lx99_56:               cmp              al, 72;                              jne   .Lx99_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx99_41
                        cmp              rax, r8;                             je    .Lx99_41
                        mov              r8, rax;                             jmp   .Lx99_40
.Lx99_41:               lea              r9, [rsp + 640]
.Lx99_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx99_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx99_43
                        cmp              esi, 1;                              jne   .Lx99_57
                        mov              r9, rax;                             jmp   .Lx99_42
.Lx99_57:               cmp              esi, 2;                              jne   .Lx99_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx99_43
                        mov              r9, rax;                             jmp   .Lx99_42
.Lx99_58:               cmp              al, 72;                              jne   .Lx99_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx99_43
                        cmp              rax, r9;                             je    .Lx99_43
                        mov              r9, rax;                             jmp   .Lx99_42
.Lx99_43:               cmp              r8, r9;                              je    .Lx99_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx99_44
                        cmp              al, 104;                             je    .Lx99_44
                        cmp              al, 72;                              jne   .Lx99_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx99_44
                                                                              jmp   .Lx99_45
.Lx99_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx99_53
                        cmp              al, 104;                             je    .Lx99_53
                        cmp              al, 72;                              jne   .Lx99_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx99_53
                                                                              jmp   .Lx99_46
.Lx99_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx99_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx99_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx99_51
.Lx99_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx99_47
                        cmp              al, 104;                             je    .Lx99_47
                        cmp              al, 72;                              jne   .Lx99_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx99_47
                                                                              jmp   .Lx99_48
.Lx99_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx99_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx99_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx99_51
.Lx99_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx99_49
                        cmp              dl, 80;                              je    .Lx99_53
                                                                              jmp   .Lx99_52
.Lx99_49:               cmp              dl, 80;                              je    .Lx99_52
                        cmp              cl, 5;                               je    .Lx99_53
                        cmp              dl, 5;                               je    .Lx99_53
                        cmp              cl, 3;                               jne   .Lx99_50
                        cmp              dl, 3;                               jne   .Lx99_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx99_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx99_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx99_51
                                                                              jmp   .Lx99_52
.Lx99_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx99_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx99_53
.Lx99_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx99_54
.Lx99_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx99_54
.Lx99_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx99_54:               mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_lit_string_α
n36_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 1
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n38_var_ref_α
.Lx100_0:               .quad            .Lx100_0_s
.Lx100_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n39_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 4
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n40_var_ref_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "perm"
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1520]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n41_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n42_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    t$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_call_builtin_prolog_α
n42_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   t$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 536], rax
                        lea              rdi, [rsp + 528]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_call_builtin_prolog_α
n43_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn111:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n50_lit_string_α
n44_call_builtin_prolog_β:
                        mov              r11, 40;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n46_var_ref_α
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 6
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n48_call_builtin_prolog_α
.Lx115_0:               .quad            .Lx115_0_s
.Lx115_0_s:             .string          "failed"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 968], rax
                        lea              rdi, [rsp + 960]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_call_builtin_prolog_α
n48_call_builtin_prolog_β:
                        mov              r11, 44;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn118:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rsp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n50_lit_string_α
n49_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 0
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n51_call_builtin_prolog_α
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn121:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n53_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_suspend_α
n51_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_suspend_α:          mov              r11, 48
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx123_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1488];         jmp   rax
.Lx123_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n52_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n52_suspend_β]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   t$2F2_γ
n52_suspend_β:          mov              r11, 48;                             jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              r11, 49
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
                        cmp              al, 104;                             je    t$2F2_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   t$2F2_ω
n53_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   t$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
t$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
t$2F2_β:
                                                                              jmp   n52_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
t$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx124_50
                        mov              qword ptr [rsp + 1488], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1488];         jmp   rax
.Lx124_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1640]
                        add              rsp, 1664;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
t$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1648]
                        add              rsp, 1664;                           jmp   rcx
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
                        sub              rsp, 2448
                        mov              qword ptr [rsp + 2424], rcx
                        mov              qword ptr [rsp + 2432], rdx
                        mov              qword ptr [rsp + 2440], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 2416
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 6
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
n125_call_builtin_prolog_α:
                        mov              r11, 50
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx193_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx193_101
.Lx193_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx193_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx193_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx193_101
.Lx193_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx193_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n126_lit_string_α
n125_call_builtin_prolog_β:
                        mov              r11, 50;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              r11, 51
                        mov              qword ptr [rsp + 2256], 2            # result
                        mov              dword ptr [rsp + 2260], 17
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n127_lit_string_α
.Lx194_0:               .quad            .Lx194_0_s
.Lx194_0_s:             .string          "/tmp/rung79_w.txt"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 52
                        mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 5
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n128_var_ref_α
.Lx195_0:               .quad            .Lx195_0_s
.Lx195_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_prolog_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2248], rax
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2232], rax
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2216], rax
                        .section         .rodata
.Lrkfn199:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rsp + 2208]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327680
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n192_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n130_lit_string_α
n129_call_builtin_prolog_β:
                        mov              r11, 54;                             jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              r11, 55
                        mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 16
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n131_lit_string_α
.Lx200_0:               .quad            .Lx200_0_s
.Lx200_0_s:             .string          "getchar_on_write"
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:      mov              r11, 56
                        mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 8
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n132_var_ref_α
.Lx201_0:               .quad            .Lx201_0_s
.Lx201_0_s:             .string          "get_char"
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n133_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2384]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n134_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
                        mov              r11, 59
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2152], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2120], rax
                        lea              rdi, [rsp + 2112]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    n192_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n135_call_proc_staged_α
n134_call_builtin_prolog_β:
                        mov              r11, 59;                             jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_proc_staged_α:
                        mov              r11, 60
                        mov              qword ptr [rsp + 2016], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx208_200
                        mov              rax, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx208_201
.Lx208_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx208_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx208_202
                        mov              rax, qword ptr [rsp + 2096]
                        mov              rdx, qword ptr [rsp + 2104]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx208_203
.Lx208_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2096]
                        mov              rdx, qword ptr [rsp + 2104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx208_203:             lea              rax, [rip + .Lx208_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx208_1
                        lea              rcx, [rip + .Lx208_3]
                        lea              rdx, [rip + .Lx208_4];               jmp   rax
.Lx208_3:               mov              qword ptr [rsp + 2024], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 2016]
                        test             rax, rax;                            jne   .Lx208_5
                        mov              qword ptr [rsp + 2016], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx208_2
.Lx208_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx208_2
.Lx208_4:               mov              rax, qword ptr [rsp + 2016]
                        test             rax, rax;                            jne   .Lx208_6
                        mov              qword ptr [rsp + 2016], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx208_2
.Lx208_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx208_2
.Lx208_1:               call             rt_faildescr@PLT
.Lx208_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx208_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1968]
                        mov              rdx, qword ptr [rsp + 1976]
.Lx208_29:              mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n192_call_builtin_prolog_α
                                                                              jmp   n136_lit_string_α
n135_call_proc_staged_β:
                        mov              r11, 60
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 2016], 0
                        lea              rdi, [rsp + 2032]
                        lea              rsi, [rsp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n192_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 2032]
                        mov              rdx, qword ptr [rsp + 2040]
                        mov              ecx, 48
                        mov              r8d, 1488
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 2048]
                        mov              rdx, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 2096]
                        mov              rdx, qword ptr [rsp + 2104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n192_call_builtin_prolog_α
                        lea              r8, [rip + .Lx208_7]
                        push             r8
                        lea              rcx, [rip + .Lx208_3]
                        lea              rdx, [rip + .Lx208_4];               jmp   rax
.Lx208_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n192_call_builtin_prolog_α
                                                                              jmp   n136_lit_string_α
.Lx208_0:               .quad            .Lx208_0_s
.Lx208_0_s:             .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              r11, 61
                        mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 16
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n137_lit_string_α
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "getcode_on_write"
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              r11, 62
                        mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 8
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n138_var_ref_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "get_code"
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n139_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2368]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n140_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_builtin_prolog_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n192_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n141_call_proc_staged_α
n140_call_builtin_prolog_β:
                        mov              r11, 65;                             jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_proc_staged_α:
                        mov              r11, 66
                        mov              qword ptr [rsp + 1792], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx217_200
                        mov              rax, qword ptr [rsp + 1824]
                        mov              rdx, qword ptr [rsp + 1832]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx217_201
.Lx217_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1824]
                        mov              rdx, qword ptr [rsp + 1832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx217_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx217_202
                        mov              rax, qword ptr [rsp + 1872]
                        mov              rdx, qword ptr [rsp + 1880]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx217_203
.Lx217_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1872]
                        mov              rdx, qword ptr [rsp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx217_203:             lea              rax, [rip + .Lx217_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx217_1
                        lea              rcx, [rip + .Lx217_3]
                        lea              rdx, [rip + .Lx217_4];               jmp   rax
.Lx217_3:               mov              qword ptr [rsp + 1800], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1792]
                        test             rax, rax;                            jne   .Lx217_5
                        mov              qword ptr [rsp + 1792], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx217_2
.Lx217_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx217_2
.Lx217_4:               mov              rax, qword ptr [rsp + 1792]
                        test             rax, rax;                            jne   .Lx217_6
                        mov              qword ptr [rsp + 1792], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx217_2
.Lx217_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx217_2
.Lx217_1:               call             rt_faildescr@PLT
.Lx217_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx217_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1744]
                        mov              rdx, qword ptr [rsp + 1752]
.Lx217_29:              mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n135_call_proc_staged_β
                                                                              jmp   n142_lit_string_α
n141_call_proc_staged_β:
                        mov              r11, 66
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1792], 0
                        lea              rdi, [rsp + 1808]
                        lea              rsi, [rsp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n135_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1808]
                        mov              rdx, qword ptr [rsp + 1816]
                        mov              ecx, 48
                        mov              r8d, 1488
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1824]
                        mov              rdx, qword ptr [rsp + 1832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1872]
                        mov              rdx, qword ptr [rsp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n135_call_proc_staged_β
                        lea              r8, [rip + .Lx217_7]
                        push             r8
                        lea              rcx, [rip + .Lx217_3]
                        lea              rdx, [rip + .Lx217_4];               jmp   rax
.Lx217_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n135_call_proc_staged_β
                                                                              jmp   n142_lit_string_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      mov              r11, 67
                        mov              qword ptr [rsp + 1600], 2            # result
                        mov              dword ptr [rsp + 1604], 17
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n143_lit_string_α
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "peekchar_on_write"
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              r11, 68
                        mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 9
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n144_var_ref_α
.Lx219_0:               .quad            .Lx219_0_s
.Lx219_0_s:             .string          "peek_char"
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2352]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n146_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
                        mov              r11, 71
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1672], rax
                        lea              rdi, [rsp + 1664]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n192_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n147_call_proc_staged_α
n146_call_builtin_prolog_β:
                        mov              r11, 71;                             jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_proc_staged_α:
                        mov              r11, 72
                        mov              qword ptr [rsp + 1568], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx226_200
                        mov              rax, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx226_201
.Lx226_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx226_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx226_202
                        mov              rax, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx226_203
.Lx226_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx226_203:             lea              rax, [rip + .Lx226_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx226_1
                        lea              rcx, [rip + .Lx226_3]
                        lea              rdx, [rip + .Lx226_4];               jmp   rax
.Lx226_3:               mov              qword ptr [rsp + 1576], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1568]
                        test             rax, rax;                            jne   .Lx226_5
                        mov              qword ptr [rsp + 1568], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx226_2
.Lx226_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx226_2
.Lx226_4:               mov              rax, qword ptr [rsp + 1568]
                        test             rax, rax;                            jne   .Lx226_6
                        mov              qword ptr [rsp + 1568], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx226_2
.Lx226_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx226_2
.Lx226_1:               call             rt_faildescr@PLT
.Lx226_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx226_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1520]
                        mov              rdx, qword ptr [rsp + 1528]
.Lx226_29:              mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n141_call_proc_staged_β
                                                                              jmp   n148_lit_string_α
n147_call_proc_staged_β:
                        mov              r11, 72
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1568], 0
                        lea              rdi, [rsp + 1584]
                        lea              rsi, [rsp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n141_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1584]
                        mov              rdx, qword ptr [rsp + 1592]
                        mov              ecx, 48
                        mov              r8d, 1488
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1600]
                        mov              rdx, qword ptr [rsp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n141_call_proc_staged_β
                        lea              r8, [rip + .Lx226_7]
                        push             r8
                        lea              rcx, [rip + .Lx226_3]
                        lea              rdx, [rip + .Lx226_4];               jmp   rax
.Lx226_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n141_call_proc_staged_β
                                                                              jmp   n148_lit_string_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              r11, 73
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 16
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n149_lit_string_α
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "getbyte_on_write"
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:      mov              r11, 74
                        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 8
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n150_var_ref_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          "get_byte"
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n151_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2336]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n152_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_prolog_α:
                        mov              r11, 77
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n192_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_call_proc_staged_α
n152_call_builtin_prolog_β:
                        mov              r11, 77;                             jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_proc_staged_α:
                        mov              r11, 78
                        mov              qword ptr [rsp + 1344], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx235_200
                        mov              rax, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx235_201
.Lx235_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx235_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx235_202
                        mov              rax, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx235_203
.Lx235_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx235_203:             lea              rax, [rip + .Lx235_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx235_1
                        lea              rcx, [rip + .Lx235_3]
                        lea              rdx, [rip + .Lx235_4];               jmp   rax
.Lx235_3:               mov              qword ptr [rsp + 1352], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1344]
                        test             rax, rax;                            jne   .Lx235_5
                        mov              qword ptr [rsp + 1344], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx235_2
.Lx235_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx235_2
.Lx235_4:               mov              rax, qword ptr [rsp + 1344]
                        test             rax, rax;                            jne   .Lx235_6
                        mov              qword ptr [rsp + 1344], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx235_2
.Lx235_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx235_2
.Lx235_1:               call             rt_faildescr@PLT
.Lx235_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx235_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
.Lx235_29:              mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n147_call_proc_staged_β
                                                                              jmp   n154_lit_string_α
n153_call_proc_staged_β:
                        mov              r11, 78
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1344], 0
                        lea              rdi, [rsp + 1360]
                        lea              rsi, [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n147_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1360]
                        mov              rdx, qword ptr [rsp + 1368]
                        mov              ecx, 48
                        mov              r8d, 1488
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1376]
                        mov              rdx, qword ptr [rsp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n147_call_proc_staged_β
                        lea              r8, [rip + .Lx235_7]
                        push             r8
                        lea              rcx, [rip + .Lx235_3]
                        lea              rdx, [rip + .Lx235_4];               jmp   rax
.Lx235_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n147_call_proc_staged_β
                                                                              jmp   n154_lit_string_α
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      mov              r11, 79
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 14
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n155_lit_string_α
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "ateof_on_write"
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      mov              r11, 80
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 16
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n156_var_ref_α
.Lx237_0:               .quad            .Lx237_0_s
.Lx237_0_s:             .string          "at_end_of_stream"
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_prolog_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n192_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n158_call_proc_staged_α
n157_call_builtin_prolog_β:
                        mov              r11, 82;                             jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_proc_staged_α:
                        mov              r11, 83
                        mov              qword ptr [rsp + 1152], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx242_200
                        mov              rax, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx242_201
.Lx242_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx242_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx242_202
                        mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx242_203
.Lx242_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx242_203:             lea              rax, [rip + .Lx242_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx242_1
                        lea              rcx, [rip + .Lx242_3]
                        lea              rdx, [rip + .Lx242_4];               jmp   rax
.Lx242_3:               mov              qword ptr [rsp + 1160], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1152]
                        test             rax, rax;                            jne   .Lx242_5
                        mov              qword ptr [rsp + 1152], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx242_2
.Lx242_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx242_2
.Lx242_4:               mov              rax, qword ptr [rsp + 1152]
                        test             rax, rax;                            jne   .Lx242_6
                        mov              qword ptr [rsp + 1152], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx242_2
.Lx242_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx242_2
.Lx242_1:               call             rt_faildescr@PLT
.Lx242_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx242_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
.Lx242_29:              mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n153_call_proc_staged_β
                                                                              jmp   n159_var_ref_α
n158_call_proc_staged_β:
                        mov              r11, 83
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1152], 0
                        lea              rdi, [rsp + 1168]
                        lea              rsi, [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n153_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              ecx, 48
                        mov              r8d, 1488
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1184]
                        mov              rdx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n153_call_proc_staged_β
                        lea              r8, [rip + .Lx242_7]
                        push             r8
                        lea              rcx, [rip + .Lx242_3]
                        lea              rdx, [rip + .Lx242_4];               jmp   rax
.Lx242_7:               add              rsp, 8
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n153_call_proc_staged_β
                                                                              jmp   n159_var_ref_α
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n160_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
                        mov              r11, 85
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn246:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n158_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n161_lit_string_α
n160_call_builtin_prolog_β:
                        mov              r11, 85;                             jmp   n158_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      mov              r11, 86
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 17
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n162_lit_string_α
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          "/tmp/rung79_w.txt"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 4
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n163_var_ref_α
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2304]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n164_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_prolog_α:
                        mov              r11, 89
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn252:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn252]
                        lea              rsi, [rsp + 960]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327680
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n158_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n165_lit_string_α
n164_call_builtin_prolog_β:
                        mov              r11, 89;                             jmp   n158_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      mov              r11, 90
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 15
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n166_lit_string_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "putchar_on_read"
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 8
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n167_var_ref_α
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          "put_char"
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2304]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n168_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n169_call_builtin_prolog_α
.Lx257_0:               .quad            .Lx257_0_s
.Lx257_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_prolog_α:
                        mov              r11, 94
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 872], rax
                        lea              rdi, [rsp + 864]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n192_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n170_call_proc_staged_α
n169_call_builtin_prolog_β:
                        mov              r11, 94;                             jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        mov              r11, 95
                        mov              qword ptr [rsp + 768], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx260_200
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx260_201
.Lx260_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx260_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx260_202
                        mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx260_203
.Lx260_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx260_203:             lea              rax, [rip + .Lx260_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx260_1
                        lea              rcx, [rip + .Lx260_3]
                        lea              rdx, [rip + .Lx260_4];               jmp   rax
.Lx260_3:               mov              qword ptr [rsp + 776], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 768]
                        test             rax, rax;                            jne   .Lx260_5
                        mov              qword ptr [rsp + 768], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx260_2
.Lx260_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx260_2
.Lx260_4:               mov              rax, qword ptr [rsp + 768]
                        test             rax, rax;                            jne   .Lx260_6
                        mov              qword ptr [rsp + 768], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx260_2
.Lx260_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx260_2
.Lx260_1:               call             rt_faildescr@PLT
.Lx260_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx260_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
.Lx260_29:              mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n158_call_proc_staged_β
                                                                              jmp   n171_lit_string_α
n170_call_proc_staged_β:
                        mov              r11, 95
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 768], 0
                        lea              rdi, [rsp + 784]
                        lea              rsi, [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n158_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              ecx, 48
                        mov              r8d, 1488
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n158_call_proc_staged_β
                        lea              r8, [rip + .Lx260_7]
                        push             r8
                        lea              rcx, [rip + .Lx260_3]
                        lea              rdx, [rip + .Lx260_4];               jmp   rax
.Lx260_7:               add              rsp, 8
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n158_call_proc_staged_β
                                                                              jmp   n171_lit_string_α
.Lx260_0:               .quad            .Lx260_0_s
.Lx260_0_s:             .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 15
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n172_lit_string_α
.Lx261_0:               .quad            .Lx261_0_s
.Lx261_0_s:             .string          "putcode_on_read"
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              r11, 97
                        mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 8
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n173_var_ref_α
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          "put_code"
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2304]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     mov              r11, 99
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n175_call_builtin_prolog_α
.Lx265_0:               .quad            121
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_prolog_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n192_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n176_call_proc_staged_α
n175_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n176_call_proc_staged_α:
                        mov              r11, 101
                        mov              qword ptr [rsp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx268_200
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx268_201
.Lx268_200:             mov              edi, 0
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
.Lx268_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx268_202
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx268_203
.Lx268_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx268_203:             lea              rax, [rip + .Lx268_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx268_1
                        lea              rcx, [rip + .Lx268_3]
                        lea              rdx, [rip + .Lx268_4];               jmp   rax
.Lx268_3:               mov              qword ptr [rsp + 552], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 544]
                        test             rax, rax;                            jne   .Lx268_5
                        mov              qword ptr [rsp + 544], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx268_2
.Lx268_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx268_2
.Lx268_4:               mov              rax, qword ptr [rsp + 544]
                        test             rax, rax;                            jne   .Lx268_6
                        mov              qword ptr [rsp + 544], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx268_2
.Lx268_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx268_2
.Lx268_1:               call             rt_faildescr@PLT
.Lx268_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx268_29
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
.Lx268_29:              mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n170_call_proc_staged_β
                                                                              jmp   n177_lit_string_α
n176_call_proc_staged_β:
                        mov              r11, 101
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
                        test             rax, rax;                            je    n170_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              ecx, 48
                        mov              r8d, 1488
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
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n170_call_proc_staged_β
                        lea              r8, [rip + .Lx268_7]
                        push             r8
                        lea              rcx, [rip + .Lx268_3]
                        lea              rdx, [rip + .Lx268_4];               jmp   rax
.Lx268_7:               add              rsp, 8
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n170_call_proc_staged_β
                                                                              jmp   n177_lit_string_α
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 15
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n178_lit_string_α
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "putbyte_on_read"
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 8
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n179_var_ref_α
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "put_byte"
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2304]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n180_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:     mov              r11, 105
                        mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n181_call_builtin_prolog_α
.Lx273_0:               .quad            65
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_prolog_α:
                        mov              r11, 106
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n192_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n182_call_proc_staged_α
n181_call_builtin_prolog_β:
                        mov              r11, 106;                            jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n182_call_proc_staged_α:
                        mov              r11, 107
                        mov              qword ptr [rsp + 320], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx276_200
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx276_201
.Lx276_200:             mov              edi, 0
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
.Lx276_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx276_202
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx276_203
.Lx276_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx276_203:             lea              rax, [rip + .Lx276_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx276_1
                        lea              rcx, [rip + .Lx276_3]
                        lea              rdx, [rip + .Lx276_4];               jmp   rax
.Lx276_3:               mov              qword ptr [rsp + 328], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 320]
                        test             rax, rax;                            jne   .Lx276_5
                        mov              qword ptr [rsp + 320], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx276_2
.Lx276_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx276_2
.Lx276_4:               mov              rax, qword ptr [rsp + 320]
                        test             rax, rax;                            jne   .Lx276_6
                        mov              qword ptr [rsp + 320], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx276_2
.Lx276_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx276_2
.Lx276_1:               call             rt_faildescr@PLT
.Lx276_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx276_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
.Lx276_29:              mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n176_call_proc_staged_β
                                                                              jmp   n183_var_ref_α
n182_call_proc_staged_β:
                        mov              r11, 107
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 320], 0
                        lea              rdi, [rsp + 336]
                        lea              rsi, [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n176_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              ecx, 48
                        mov              r8d, 1488
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n176_call_proc_staged_β
                        lea              r8, [rip + .Lx276_7]
                        push             r8
                        lea              rcx, [rip + .Lx276_3]
                        lea              rdx, [rip + .Lx276_4];               jmp   rax
.Lx276_7:               add              rsp, 8
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n176_call_proc_staged_β
                                                                              jmp   n183_var_ref_α
.Lx276_0:               .quad            .Lx276_0_s
.Lx276_0_s:             .string          "t/2"
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2304]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
                        mov              r11, 109
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn280:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n182_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_lit_string_α
n184_call_builtin_prolog_β:
                        mov              r11, 109;                            jmp   n182_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 4
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n186_call_builtin_prolog_α
.Lx281_0:               .quad            .Lx281_0_s
.Lx281_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n186_call_builtin_prolog_α:
                        mov              r11, 111
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn283:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn283]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n182_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n187_lit_string_α
n186_call_builtin_prolog_β:
                        mov              r11, 111;                            jmp   n182_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 0
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n188_call_builtin_prolog_α
.Lx284_0:               .quad            .Lx284_0_s
.Lx284_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_prolog_α:
                        mov              r11, 113
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn286:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn286]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n182_call_proc_staged_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n189_call_proc_staged_α
n188_call_builtin_prolog_β:
                        mov              r11, 113;                            jmp   n182_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n189_call_proc_staged_α:
                        mov              r11, 114
                        mov              rdi, qword ptr [rip + .Lx288_0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx288_1
                        mov              rdi, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rcx, [rip + .Lx288_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx288_3]
                        push             rcx
                        lea              rcx, [rip + .Lx288_3]
                        lea              rdx, [rip + .Lx288_4];               jmp   rax
.Lx288_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx288_2
.Lx288_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx288_2
.Lx288_1:               call             rt_faildescr@PLT
.Lx288_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx288_29
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
.Lx288_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n182_call_proc_staged_β
                                                                              jmp   n190_move_label_α
n189_call_proc_staged_β:
                        mov              r11, 114;                            jmp   n182_call_proc_staged_β
.Lx288_0:               .quad            .Lx288_0_s
.Lx288_0_s:             .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n190_move_label_α:      mov              r11, 115
                        lea              rax, [rip + n189_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n191_disjunction_α:     mov              r11, 116
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
n191_disjunction_β:     mov              r11, 116;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_prolog_α:
                        mov              r11, 117
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
n192_call_builtin_prolog_β:
                        mov              r11, 117;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n191_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2424]
                        add              rsp, 2448;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 2432]
                        add              rsp, 2448;                           jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$call/1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__$call$2F1
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
.Lstartup_pname1:       .string          "t/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__t$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1616
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
