                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__reverse$2F2:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
reverse$2F2_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 416], rax
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lreverse$2F2_α_13_102
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lreverse$2F2_α_13_101
.Lreverse$2F2_α_13_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lreverse$2F2_α_13_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lreverse$2F2_α_13_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lreverse$2F2_α_13_101
.Lreverse$2F2_α_13_100: lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lreverse$2F2_α_13_101: mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    reverse$2F2_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   reverse$2F2_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n2_var_ref_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n3_call_prolog_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_call_prolog_bx, @function
n3_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_prolog_α:       mov              r11, 4
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
.Lreverse$2F2_α_18_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lreverse$2F2_α_18_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_18_41
                        cmp              esi, 1;                              jne   .Lreverse$2F2_α_18_55
                        mov              r8, rax;                             jmp   .Lreverse$2F2_α_18_40
.Lreverse$2F2_α_18_55:  cmp              esi, 2;                              jne   .Lreverse$2F2_α_18_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lreverse$2F2_α_18_41
                        mov              r8, rax;                             jmp   .Lreverse$2F2_α_18_40
.Lreverse$2F2_α_18_56:  cmp              al, 72;                              jne   .Lreverse$2F2_α_18_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_18_41
                        cmp              rax, r8;                             je    .Lreverse$2F2_α_18_41
                        mov              r8, rax;                             jmp   .Lreverse$2F2_α_18_40
.Lreverse$2F2_α_18_41:  lea              r9, [rsp + 368]
.Lreverse$2F2_α_18_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lreverse$2F2_α_18_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_18_43
                        cmp              esi, 1;                              jne   .Lreverse$2F2_α_18_57
                        mov              r9, rax;                             jmp   .Lreverse$2F2_α_18_42
.Lreverse$2F2_α_18_57:  cmp              esi, 2;                              jne   .Lreverse$2F2_α_18_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lreverse$2F2_α_18_43
                        mov              r9, rax;                             jmp   .Lreverse$2F2_α_18_42
.Lreverse$2F2_α_18_58:  cmp              al, 72;                              jne   .Lreverse$2F2_α_18_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_18_43
                        cmp              rax, r9;                             je    .Lreverse$2F2_α_18_43
                        mov              r9, rax;                             jmp   .Lreverse$2F2_α_18_42
.Lreverse$2F2_α_18_43:  cmp              r8, r9;                              je    .Lreverse$2F2_α_18_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lreverse$2F2_α_18_44
                        cmp              al, 104;                             je    .Lreverse$2F2_α_18_44
                        cmp              al, 72;                              jne   .Lreverse$2F2_α_18_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lreverse$2F2_α_18_44
                                                                              jmp   .Lreverse$2F2_α_18_45
.Lreverse$2F2_α_18_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lreverse$2F2_α_18_53
                        cmp              al, 104;                             je    .Lreverse$2F2_α_18_53
                        cmp              al, 72;                              jne   .Lreverse$2F2_α_18_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lreverse$2F2_α_18_53
                                                                              jmp   .Lreverse$2F2_α_18_46
.Lreverse$2F2_α_18_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lreverse$2F2_α_18_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lreverse$2F2_α_18_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lreverse$2F2_α_18_51
.Lreverse$2F2_α_18_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lreverse$2F2_α_18_47
                        cmp              al, 104;                             je    .Lreverse$2F2_α_18_47
                        cmp              al, 72;                              jne   .Lreverse$2F2_α_18_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lreverse$2F2_α_18_47
                                                                              jmp   .Lreverse$2F2_α_18_48
.Lreverse$2F2_α_18_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lreverse$2F2_α_18_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lreverse$2F2_α_18_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lreverse$2F2_α_18_51
.Lreverse$2F2_α_18_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lreverse$2F2_α_18_49
                        cmp              dl, 80;                              je    .Lreverse$2F2_α_18_53
                                                                              jmp   .Lreverse$2F2_α_18_52
.Lreverse$2F2_α_18_49:  cmp              dl, 80;                              je    .Lreverse$2F2_α_18_52
                        cmp              cl, 5;                               je    .Lreverse$2F2_α_18_53
                        cmp              dl, 5;                               je    .Lreverse$2F2_α_18_53
                        cmp              cl, 3;                               jne   .Lreverse$2F2_α_18_50
                        cmp              dl, 3;                               jne   .Lreverse$2F2_α_18_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lreverse$2F2_α_18_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lreverse$2F2_α_18_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lreverse$2F2_α_18_51
                                                                              jmp   .Lreverse$2F2_α_18_52
.Lreverse$2F2_α_18_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lreverse$2F2_α_18_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lreverse$2F2_α_18_53
.Lreverse$2F2_α_18_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lreverse$2F2_α_18_54
.Lreverse$2F2_α_18_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lreverse$2F2_α_18_54
.Lreverse$2F2_α_18_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lreverse$2F2_α_18_54:  mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n12_call_prolog_α
                                                                              jmp   n4_var_ref_α
n3_call_prolog_β:       mov              r11, 4;                              jmp   n12_call_prolog_α
                        .size            n3_call_prolog_bx, .-n3_call_prolog_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n5_var_ref_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n6_call_prolog_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_call_prolog_bx, @function
n6_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_call_prolog_α:       mov              r11, 7
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
.Lreverse$2F2_α_23_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lreverse$2F2_α_23_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_23_41
                        cmp              esi, 1;                              jne   .Lreverse$2F2_α_23_55
                        mov              r8, rax;                             jmp   .Lreverse$2F2_α_23_40
.Lreverse$2F2_α_23_55:  cmp              esi, 2;                              jne   .Lreverse$2F2_α_23_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lreverse$2F2_α_23_41
                        mov              r8, rax;                             jmp   .Lreverse$2F2_α_23_40
.Lreverse$2F2_α_23_56:  cmp              al, 72;                              jne   .Lreverse$2F2_α_23_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_23_41
                        cmp              rax, r8;                             je    .Lreverse$2F2_α_23_41
                        mov              r8, rax;                             jmp   .Lreverse$2F2_α_23_40
.Lreverse$2F2_α_23_41:  lea              r9, [rsp + 288]
.Lreverse$2F2_α_23_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lreverse$2F2_α_23_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_23_43
                        cmp              esi, 1;                              jne   .Lreverse$2F2_α_23_57
                        mov              r9, rax;                             jmp   .Lreverse$2F2_α_23_42
.Lreverse$2F2_α_23_57:  cmp              esi, 2;                              jne   .Lreverse$2F2_α_23_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lreverse$2F2_α_23_43
                        mov              r9, rax;                             jmp   .Lreverse$2F2_α_23_42
.Lreverse$2F2_α_23_58:  cmp              al, 72;                              jne   .Lreverse$2F2_α_23_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_23_43
                        cmp              rax, r9;                             je    .Lreverse$2F2_α_23_43
                        mov              r9, rax;                             jmp   .Lreverse$2F2_α_23_42
.Lreverse$2F2_α_23_43:  cmp              r8, r9;                              je    .Lreverse$2F2_α_23_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lreverse$2F2_α_23_44
                        cmp              al, 104;                             je    .Lreverse$2F2_α_23_44
                        cmp              al, 72;                              jne   .Lreverse$2F2_α_23_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lreverse$2F2_α_23_44
                                                                              jmp   .Lreverse$2F2_α_23_45
.Lreverse$2F2_α_23_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lreverse$2F2_α_23_53
                        cmp              al, 104;                             je    .Lreverse$2F2_α_23_53
                        cmp              al, 72;                              jne   .Lreverse$2F2_α_23_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lreverse$2F2_α_23_53
                                                                              jmp   .Lreverse$2F2_α_23_46
.Lreverse$2F2_α_23_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lreverse$2F2_α_23_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lreverse$2F2_α_23_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lreverse$2F2_α_23_51
.Lreverse$2F2_α_23_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lreverse$2F2_α_23_47
                        cmp              al, 104;                             je    .Lreverse$2F2_α_23_47
                        cmp              al, 72;                              jne   .Lreverse$2F2_α_23_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lreverse$2F2_α_23_47
                                                                              jmp   .Lreverse$2F2_α_23_48
.Lreverse$2F2_α_23_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lreverse$2F2_α_23_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lreverse$2F2_α_23_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lreverse$2F2_α_23_51
.Lreverse$2F2_α_23_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lreverse$2F2_α_23_49
                        cmp              dl, 80;                              je    .Lreverse$2F2_α_23_53
                                                                              jmp   .Lreverse$2F2_α_23_52
.Lreverse$2F2_α_23_49:  cmp              dl, 80;                              je    .Lreverse$2F2_α_23_52
                        cmp              cl, 5;                               je    .Lreverse$2F2_α_23_53
                        cmp              dl, 5;                               je    .Lreverse$2F2_α_23_53
                        cmp              cl, 3;                               jne   .Lreverse$2F2_α_23_50
                        cmp              dl, 3;                               jne   .Lreverse$2F2_α_23_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lreverse$2F2_α_23_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lreverse$2F2_α_23_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lreverse$2F2_α_23_51
                                                                              jmp   .Lreverse$2F2_α_23_52
.Lreverse$2F2_α_23_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lreverse$2F2_α_23_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lreverse$2F2_α_23_53
.Lreverse$2F2_α_23_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lreverse$2F2_α_23_54
.Lreverse$2F2_α_23_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lreverse$2F2_α_23_54
.Lreverse$2F2_α_23_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lreverse$2F2_α_23_54:  mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n12_call_prolog_α
                                                                              jmp   n7_var_ref_α
n6_call_prolog_β:       mov              r11, 7;                              jmp   n12_call_prolog_α
                        .size            n6_call_prolog_bx, .-n6_call_prolog_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n8_lit_string_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lreverse$2F2_α_26_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n9_var_ref_α
.Lreverse$2F2_α_26_0:   .quad            .Lreverse$2F2_α_26_0_s
.Lreverse$2F2_α_26_0_s: .string          "[]"
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n10_call_proc_staged_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_call_proc_staged_bx, @function
n10_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_call_proc_staged_α: mov              r11, 11
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lreverse$2F2_α_30_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lreverse$2F2_α_30_201
.Lreverse$2F2_α_30_200: mov              edi, 0
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
.Lreverse$2F2_α_30_201: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lreverse$2F2_α_30_202
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lreverse$2F2_α_30_203
.Lreverse$2F2_α_30_202: mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lreverse$2F2_α_30_203: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lreverse$2F2_α_30_204
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lreverse$2F2_α_30_205
.Lreverse$2F2_α_30_204: mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lreverse$2F2_α_30_205: sub              rsp, 8
                        lea              rax, [rip + .Lreverse$2F2_α_30_7]    # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lreverse$2F2_α_30_1
                        lea              rcx, [rip + .Lreverse$2F2_α_30_4]
                        push             rcx
                        lea              rcx, [rip + .Lreverse$2F2_α_30_3]
                        push             rcx
                        lea              rdx, [rip + .Lreverse$2F2_α_30_4];   jmp   rax
.Lreverse$2F2_α_30_3:   add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lreverse$2F2_α_30_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lreverse$2F2_α_30_2
.Lreverse$2F2_α_30_5:   call             rt_gen_spine_pass_γ@PLT;             jmp   .Lreverse$2F2_α_30_2
.Lreverse$2F2_α_30_4:   add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lreverse$2F2_α_30_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lreverse$2F2_α_30_2
.Lreverse$2F2_α_30_6:   call             rt_gen_spine_pass_ω@PLT;             jmp   .Lreverse$2F2_α_30_2
.Lreverse$2F2_α_30_1:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lreverse$2F2_α_30_2:   mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lreverse$2F2_α_30_29
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
.Lreverse$2F2_α_30_29:  mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n12_call_prolog_α
                                                                              jmp   n11_suspend_α
n10_call_proc_staged_β: mov              r11, 11
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 176], 0
                        lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n12_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 64
                        mov              r8d, 1168
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n12_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lreverse$2F2_α_30_7]
                        push             r8
                        lea              rcx, [rip + .Lreverse$2F2_α_30_4]    # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lreverse$2F2_α_30_3]
                        push             rcx
                        lea              rdx, [rip + .Lreverse$2F2_α_30_4];   jmp   rax
.Lreverse$2F2_α_30_7:   add              rsp, 16
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n12_call_prolog_α
                                                                              jmp   n11_suspend_α
.Lreverse$2F2_β_30_0:   .quad            .Lreverse$2F2_β_30_0_s
.Lreverse$2F2_β_30_0_s: .string          "$reverse_/3"
                        .size            n10_call_proc_staged_bx, .-n10_call_proc_staged_bx
                        .type            n11_suspend_bx, @function
n11_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:          mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lreverse$2F2_α_32_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lreverse$2F2_α_32_61:  mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n11_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   reverse$2F2_γ
n11_suspend_β:          mov              r11, 12;                             jmp   n10_call_proc_staged_β
                        .size            n11_suspend_bx, .-n11_suspend_bx
                        .type            n12_call_prolog_bx, @function
n12_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_prolog_α:      mov              r11, 13
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
                        cmp              al, 104;                             je    reverse$2F2_ω
                                                                              jmp   reverse$2F2_ω
n12_call_prolog_β:      mov              r11, 13;                             jmp   reverse$2F2_ω
                        .size            n12_call_prolog_bx, .-n12_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_β:
                                                                              jmp   n11_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lreverse$2F2_α_33_50
                        mov              qword ptr [rsp + 416], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lreverse$2F2_α_33_50:  mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$reverse_$2F3:
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1272], rcx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              qword ptr [rsp + 1288], rsp
                        mov              rdi, rsp
                        mov              esi, 1168
                        mov              edx, 1264
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
$reverse_$2F3_α_body:
                        lea              rax, [rip + n48_suspend_β]
                        mov              qword ptr [rsp + 1168], rax
                        .type            n34_call_prolog_bx, @function
n34_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_prolog_α:      mov              r11, 14
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_73_102
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .L$reverse_$2F3_α_73_101
.L$reverse_$2F3_α_73_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .L$reverse_$2F3_α_73_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .L$reverse_$2F3_α_73_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .L$reverse_$2F3_α_73_101
.L$reverse_$2F3_α_73_100:
                        lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_73_101:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    $reverse_$2F3_ω
                                                                              jmp   n35_var_ref_α
n34_call_prolog_β:      mov              r11, 14;                             jmp   $reverse_$2F3_ω
                        .size            n34_call_prolog_bx, .-n34_call_prolog_bx
                        .type            n35_var_ref_bx, @function
n35_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n36_lit_integer_α
                        .size            n35_var_ref_bx, .-n35_var_ref_bx
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .L$reverse_$2F3_α_76_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n37_lit_string_α
.L$reverse_$2F3_α_76_0: .quad            2
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_lit_string_bx, @function
n37_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 2
                        mov              rax, qword ptr [rip + .L$reverse_$2F3_α_77_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n38_call_prolog_α
.L$reverse_$2F3_α_77_0: .quad            .L$reverse_$2F3_α_77_0_s
.L$reverse_$2F3_α_77_0_s:
                        .string          "[]"
                        .size            n37_lit_string_bx, .-n37_lit_string_bx
                        .type            n38_call_prolog_bx, @function
n38_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_prolog_α:      mov              r11, 18
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        lea              r8, [rsp + 1072]
.L$reverse_$2F3_α_78_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_78_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_78_111
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_78_112
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_78_110
.L$reverse_$2F3_α_78_112:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_78_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_78_111
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_78_110
.L$reverse_$2F3_α_78_113:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_78_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_78_111
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_78_111
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_78_110
.L$reverse_$2F3_α_78_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_78_114
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_78_114
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_78_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_78_114
                                                                              jmp   .L$reverse_$2F3_α_78_118
.L$reverse_$2F3_α_78_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .L$reverse_$2F3_α_78_115
                        cmp              al, 3;                               je    .L$reverse_$2F3_α_78_114
                        cmp              al, 2;                               jne   .L$reverse_$2F3_α_78_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .L$reverse_$2F3_α_78_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .L$reverse_$2F3_α_78_114
                                                                              jmp   .L$reverse_$2F3_α_78_116
.L$reverse_$2F3_α_78_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .L$reverse_$2F3_α_78_117
.L$reverse_$2F3_α_78_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_78_117
.L$reverse_$2F3_α_78_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_78_117:
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n50_var_ref_α
                                                                              jmp   n39_var_ref_α
n38_call_prolog_β:      mov              r11, 18;                             jmp   n50_var_ref_α
                        .size            n38_call_prolog_bx, .-n38_call_prolog_bx
                        .type            n39_var_ref_bx, @function
n39_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n40_lit_string_α
                        .size            n39_var_ref_bx, .-n39_var_ref_bx
                        .type            n40_lit_string_bx, @function
n40_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 2
                        mov              rax, qword ptr [rip + .L$reverse_$2F3_α_81_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n41_call_prolog_α
.L$reverse_$2F3_α_81_0: .quad            .L$reverse_$2F3_α_81_0_s
.L$reverse_$2F3_α_81_0_s:
                        .string          "[]"
                        .size            n40_lit_string_bx, .-n40_lit_string_bx
                        .type            n41_call_prolog_bx, @function
n41_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_prolog_α:      mov              r11, 21
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        mov              rsi, qword ptr [rip + .L$reverse_$2F3_α_82_2]
                                                                              jmp   .L$reverse_$2F3_α_82_3
.L$reverse_$2F3_α_82_2: .quad            .L$reverse_$2F3_α_82_2_s
.L$reverse_$2F3_α_82_2_s:
                        .string          "[]"
.L$reverse_$2F3_α_82_3: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n49_call_prolog_α
                                                                              jmp   n42_var_ref_α
n41_call_prolog_β:      mov              r11, 21;                             jmp   n49_call_prolog_α
                        .size            n41_call_prolog_bx, .-n41_call_prolog_bx
                        .type            n42_var_ref_bx, @function
n42_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n43_var_ref_α
                        .size            n42_var_ref_bx, .-n42_var_ref_bx
                        .type            n43_var_ref_bx, @function
n43_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n44_call_prolog_α
                        .size            n43_var_ref_bx, .-n43_var_ref_bx
                        .type            n44_call_prolog_bx, @function
n44_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_call_prolog_α:      mov              r11, 24
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
.L$reverse_$2F3_α_87_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_87_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_87_41
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_87_55
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_87_40
.L$reverse_$2F3_α_87_55:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_87_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_87_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_87_40
.L$reverse_$2F3_α_87_56:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_87_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_87_41
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_87_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_87_40
.L$reverse_$2F3_α_87_41:
                        lea              r9, [rsp + 928]
.L$reverse_$2F3_α_87_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_87_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_87_43
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_87_57
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_87_42
.L$reverse_$2F3_α_87_57:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_87_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_87_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_87_42
.L$reverse_$2F3_α_87_58:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_87_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_87_43
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_87_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_87_42
.L$reverse_$2F3_α_87_43:
                        cmp              r8, r9;                              je    .L$reverse_$2F3_α_87_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_87_44
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_87_44
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_87_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_87_44
                                                                              jmp   .L$reverse_$2F3_α_87_45
.L$reverse_$2F3_α_87_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_87_53
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_87_53
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_87_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_87_53
                                                                              jmp   .L$reverse_$2F3_α_87_46
.L$reverse_$2F3_α_87_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_87_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_87_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .L$reverse_$2F3_α_87_51
.L$reverse_$2F3_α_87_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_87_47
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_87_47
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_87_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_87_47
                                                                              jmp   .L$reverse_$2F3_α_87_48
.L$reverse_$2F3_α_87_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_87_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_87_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .L$reverse_$2F3_α_87_51
.L$reverse_$2F3_α_87_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .L$reverse_$2F3_α_87_49
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_87_53
                                                                              jmp   .L$reverse_$2F3_α_87_52
.L$reverse_$2F3_α_87_49:
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_87_52
                        cmp              cl, 5;                               je    .L$reverse_$2F3_α_87_53
                        cmp              dl, 5;                               je    .L$reverse_$2F3_α_87_53
                        cmp              cl, 3;                               jne   .L$reverse_$2F3_α_87_50
                        cmp              dl, 3;                               jne   .L$reverse_$2F3_α_87_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_87_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .L$reverse_$2F3_α_87_51
                                                                              jmp   .L$reverse_$2F3_α_87_52
.L$reverse_$2F3_α_87_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_87_53
.L$reverse_$2F3_α_87_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .L$reverse_$2F3_α_87_54
.L$reverse_$2F3_α_87_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_87_54
.L$reverse_$2F3_α_87_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_87_54:
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n49_call_prolog_α
                                                                              jmp   n45_var_ref_α
n44_call_prolog_β:      mov              r11, 24;                             jmp   n49_call_prolog_α
                        .size            n44_call_prolog_bx, .-n44_call_prolog_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n46_var_ref_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n47_call_prolog_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_call_prolog_bx, @function
n47_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_prolog_α:      mov              r11, 27
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        lea              r8, [rsp + 832]
.L$reverse_$2F3_α_92_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_92_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_92_41
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_92_55
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_92_40
.L$reverse_$2F3_α_92_55:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_92_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_92_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_92_40
.L$reverse_$2F3_α_92_56:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_92_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_92_41
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_92_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_92_40
.L$reverse_$2F3_α_92_41:
                        lea              r9, [rsp + 848]
.L$reverse_$2F3_α_92_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_92_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_92_43
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_92_57
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_92_42
.L$reverse_$2F3_α_92_57:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_92_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_92_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_92_42
.L$reverse_$2F3_α_92_58:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_92_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_92_43
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_92_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_92_42
.L$reverse_$2F3_α_92_43:
                        cmp              r8, r9;                              je    .L$reverse_$2F3_α_92_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_92_44
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_92_44
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_92_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_92_44
                                                                              jmp   .L$reverse_$2F3_α_92_45
.L$reverse_$2F3_α_92_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_92_53
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_92_53
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_92_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_92_53
                                                                              jmp   .L$reverse_$2F3_α_92_46
.L$reverse_$2F3_α_92_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_92_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_92_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .L$reverse_$2F3_α_92_51
.L$reverse_$2F3_α_92_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_92_47
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_92_47
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_92_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_92_47
                                                                              jmp   .L$reverse_$2F3_α_92_48
.L$reverse_$2F3_α_92_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_92_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_92_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .L$reverse_$2F3_α_92_51
.L$reverse_$2F3_α_92_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .L$reverse_$2F3_α_92_49
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_92_53
                                                                              jmp   .L$reverse_$2F3_α_92_52
.L$reverse_$2F3_α_92_49:
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_92_52
                        cmp              cl, 5;                               je    .L$reverse_$2F3_α_92_53
                        cmp              dl, 5;                               je    .L$reverse_$2F3_α_92_53
                        cmp              cl, 3;                               jne   .L$reverse_$2F3_α_92_50
                        cmp              dl, 3;                               jne   .L$reverse_$2F3_α_92_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_92_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_92_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .L$reverse_$2F3_α_92_51
                                                                              jmp   .L$reverse_$2F3_α_92_52
.L$reverse_$2F3_α_92_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_92_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_92_53
.L$reverse_$2F3_α_92_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .L$reverse_$2F3_α_92_54
.L$reverse_$2F3_α_92_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_92_54
.L$reverse_$2F3_α_92_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_92_54:
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n49_call_prolog_α
                                                                              jmp   n48_suspend_α
n47_call_prolog_β:      mov              r11, 27;                             jmp   n49_call_prolog_α
                        .size            n47_call_prolog_bx, .-n47_call_prolog_bx
                        .type            n48_suspend_bx, @function
n48_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_suspend_α:          mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_94_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1168];         jmp   rax
.L$reverse_$2F3_α_94_61:
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n48_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n48_suspend_β]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   $reverse_$2F3_γ
n48_suspend_β:          mov              r11, 28;                             jmp   n49_call_prolog_α
                        .size            n48_suspend_bx, .-n48_suspend_bx
                        .type            n49_call_prolog_bx, @function
n49_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_prolog_α:      mov              r11, 29
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    $reverse_$2F3_ω
                                                                              jmp   n50_var_ref_α
n49_call_prolog_β:      mov              r11, 29;                             jmp   $reverse_$2F3_ω
                        .size            n49_call_prolog_bx, .-n49_call_prolog_bx
                        .type            n50_var_ref_bx, @function
n50_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n51_lit_integer_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .L$reverse_$2F3_α_98_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n52_lit_integer_α
.L$reverse_$2F3_α_98_0: .quad            3
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .L$reverse_$2F3_α_99_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n53_call_prolog_α
.L$reverse_$2F3_α_99_0: .quad            0
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_call_prolog_bx, @function
n53_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_call_prolog_α:      mov              r11, 33
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        lea              r8, [rsp + 672]
.L$reverse_$2F3_α_100_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_100_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_100_111
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_100_112
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_100_110
.L$reverse_$2F3_α_100_112:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_100_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_100_111
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_100_110
.L$reverse_$2F3_α_100_113:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_100_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_100_111
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_100_111
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_100_110
.L$reverse_$2F3_α_100_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_100_114
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_100_114
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_100_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_100_114
                                                                              jmp   .L$reverse_$2F3_α_100_118
.L$reverse_$2F3_α_100_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .L$reverse_$2F3_α_100_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .L$reverse_$2F3_α_100_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .L$reverse_$2F3_α_100_115
                                                                              jmp   .L$reverse_$2F3_α_100_114
.L$reverse_$2F3_α_100_119:
                        cmp              al, 3;                               jne   .L$reverse_$2F3_α_100_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .L$reverse_$2F3_α_100_114
                                                                              jmp   .L$reverse_$2F3_α_100_115
.L$reverse_$2F3_α_100_120:
                        cmp              al, 2;                               jne   .L$reverse_$2F3_α_100_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .L$reverse_$2F3_α_100_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .L$reverse_$2F3_α_100_114
                                                                              jmp   .L$reverse_$2F3_α_100_115
.L$reverse_$2F3_α_100_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .L$reverse_$2F3_α_100_117
.L$reverse_$2F3_α_100_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_100_117
.L$reverse_$2F3_α_100_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_100_117:
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n54_var_ref_α
n53_call_prolog_β:      mov              r11, 33;                             jmp   n72_call_prolog_α
                        .size            n53_call_prolog_bx, .-n53_call_prolog_bx
                        .type            n54_var_ref_bx, @function
n54_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n55_var_ref_α
                        .size            n54_var_ref_bx, .-n54_var_ref_bx
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n56_var_ref_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n57_call_prolog_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_call_prolog_bx, @function
n57_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_call_prolog_α:      mov              r11, 37
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        lea              r8, [rsp + 576]
.L$reverse_$2F3_α_107_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_107_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_61
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_107_62
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_107_60
.L$reverse_$2F3_α_107_62:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_107_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_61
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_107_60
.L$reverse_$2F3_α_107_63:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_107_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_61
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_107_61
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_107_60
.L$reverse_$2F3_α_107_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_107_80
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_107_80
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_107_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_107_80
                                                                              jmp   .L$reverse_$2F3_α_107_74
.L$reverse_$2F3_α_107_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .L$reverse_$2F3_α_107_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .L$reverse_$2F3_α_107_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .L$reverse_$2F3_α_107_73
                        lea              r9, [rsp + 592]
.L$reverse_$2F3_α_107_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_107_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_65
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_107_66
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_107_64
.L$reverse_$2F3_α_107_66:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_107_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_65
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_107_64
.L$reverse_$2F3_α_107_67:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_107_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_65
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_107_65
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_107_64
.L$reverse_$2F3_α_107_65:
                        lea              rcx, [rsp + 608]
.L$reverse_$2F3_α_107_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_107_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_69
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_107_70
                        mov              rcx, rax;                            jmp   .L$reverse_$2F3_α_107_68
.L$reverse_$2F3_α_107_70:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_107_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_69
                        mov              rcx, rax;                            jmp   .L$reverse_$2F3_α_107_68
.L$reverse_$2F3_α_107_71:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_107_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_69
                        cmp              rax, rcx;                            je    .L$reverse_$2F3_α_107_69
                        mov              rcx, rax;                            jmp   .L$reverse_$2F3_α_107_68
.L$reverse_$2F3_α_107_69:
                        cmp              r9, rcx;                             je    .L$reverse_$2F3_α_107_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_107_75
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_107_75
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_107_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_107_75
                                                                              jmp   .L$reverse_$2F3_α_107_72
.L$reverse_$2F3_α_107_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_107_76
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_107_76
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_107_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .L$reverse_$2F3_α_107_76
                                                                              jmp   .L$reverse_$2F3_α_107_72
.L$reverse_$2F3_α_107_76:
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .L$reverse_$2F3_α_107_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_107_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .L$reverse_$2F3_α_107_77
.L$reverse_$2F3_α_107_80:
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .L$reverse_$2F3_α_107_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .L$reverse_$2F3_α_107_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .L$reverse_$2F3_α_107_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .L$reverse_$2F3_α_107_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_107_72
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
                        lea              r9, [rsp + 592]
.L$reverse_$2F3_α_107_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_107_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_82
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_107_83
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_107_81
.L$reverse_$2F3_α_107_83:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_107_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_82
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_107_81
.L$reverse_$2F3_α_107_84:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_107_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_82
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_107_82
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_107_81
.L$reverse_$2F3_α_107_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_107_85
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_107_85
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_107_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_107_85
                                                                              jmp   .L$reverse_$2F3_α_107_86
.L$reverse_$2F3_α_107_85:
                        mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .L$reverse_$2F3_α_107_87
.L$reverse_$2F3_α_107_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.L$reverse_$2F3_α_107_87:
                        lea              rcx, [rsp + 608]
.L$reverse_$2F3_α_107_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_107_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_89
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_107_90
                        mov              rcx, rax;                            jmp   .L$reverse_$2F3_α_107_88
.L$reverse_$2F3_α_107_90:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_107_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_89
                        mov              rcx, rax;                            jmp   .L$reverse_$2F3_α_107_88
.L$reverse_$2F3_α_107_91:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_107_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_107_89
                        cmp              rax, rcx;                            je    .L$reverse_$2F3_α_107_89
                        mov              rcx, rax;                            jmp   .L$reverse_$2F3_α_107_88
.L$reverse_$2F3_α_107_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_107_92
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_107_92
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_107_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .L$reverse_$2F3_α_107_92
                                                                              jmp   .L$reverse_$2F3_α_107_93
.L$reverse_$2F3_α_107_92:
                        mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .L$reverse_$2F3_α_107_94
.L$reverse_$2F3_α_107_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.L$reverse_$2F3_α_107_94:
                        lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .L$reverse_$2F3_α_107_77
.L$reverse_$2F3_α_107_73:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_107_77
.L$reverse_$2F3_α_107_72:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_107_77:
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n58_var_ref_α
n57_call_prolog_β:      mov              r11, 37;                             jmp   n72_call_prolog_α
                        .size            n57_call_prolog_bx, .-n57_call_prolog_bx
                        .type            n58_var_ref_bx, @function
n58_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n59_var_ref_α
                        .size            n58_var_ref_bx, .-n58_var_ref_bx
                        .type            n59_var_ref_bx, @function
n59_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n60_call_prolog_α
                        .size            n59_var_ref_bx, .-n59_var_ref_bx
                        .type            n60_call_prolog_bx, @function
n60_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_prolog_α:      mov              r11, 40
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
.L$reverse_$2F3_α_112_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_112_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_112_41
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_112_55
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_112_40
.L$reverse_$2F3_α_112_55:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_112_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_112_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_112_40
.L$reverse_$2F3_α_112_56:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_112_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_112_41
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_112_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_112_40
.L$reverse_$2F3_α_112_41:
                        lea              r9, [rsp + 496]
.L$reverse_$2F3_α_112_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_112_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_112_43
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_112_57
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_112_42
.L$reverse_$2F3_α_112_57:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_112_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_112_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_112_42
.L$reverse_$2F3_α_112_58:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_112_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_112_43
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_112_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_112_42
.L$reverse_$2F3_α_112_43:
                        cmp              r8, r9;                              je    .L$reverse_$2F3_α_112_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_112_44
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_112_44
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_112_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_112_44
                                                                              jmp   .L$reverse_$2F3_α_112_45
.L$reverse_$2F3_α_112_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_112_53
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_112_53
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_112_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_112_53
                                                                              jmp   .L$reverse_$2F3_α_112_46
.L$reverse_$2F3_α_112_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_112_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_112_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .L$reverse_$2F3_α_112_51
.L$reverse_$2F3_α_112_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_112_47
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_112_47
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_112_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_112_47
                                                                              jmp   .L$reverse_$2F3_α_112_48
.L$reverse_$2F3_α_112_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_112_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_112_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .L$reverse_$2F3_α_112_51
.L$reverse_$2F3_α_112_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .L$reverse_$2F3_α_112_49
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_112_53
                                                                              jmp   .L$reverse_$2F3_α_112_52
.L$reverse_$2F3_α_112_49:
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_112_52
                        cmp              cl, 5;                               je    .L$reverse_$2F3_α_112_53
                        cmp              dl, 5;                               je    .L$reverse_$2F3_α_112_53
                        cmp              cl, 3;                               jne   .L$reverse_$2F3_α_112_50
                        cmp              dl, 3;                               jne   .L$reverse_$2F3_α_112_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_112_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .L$reverse_$2F3_α_112_51
                                                                              jmp   .L$reverse_$2F3_α_112_52
.L$reverse_$2F3_α_112_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_112_53
.L$reverse_$2F3_α_112_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .L$reverse_$2F3_α_112_54
.L$reverse_$2F3_α_112_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_112_54
.L$reverse_$2F3_α_112_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_112_54:
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n61_var_ref_α
n60_call_prolog_β:      mov              r11, 40;                             jmp   n72_call_prolog_α
                        .size            n60_call_prolog_bx, .-n60_call_prolog_bx
                        .type            n61_var_ref_bx, @function
n61_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n62_var_ref_α
                        .size            n61_var_ref_bx, .-n61_var_ref_bx
                        .type            n62_var_ref_bx, @function
n62_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n63_call_prolog_α
                        .size            n62_var_ref_bx, .-n62_var_ref_bx
                        .type            n63_call_prolog_bx, @function
n63_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_prolog_α:      mov              r11, 43
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
.L$reverse_$2F3_α_117_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_117_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_117_41
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_117_55
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_117_40
.L$reverse_$2F3_α_117_55:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_117_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_117_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_117_40
.L$reverse_$2F3_α_117_56:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_117_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_117_41
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_117_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_117_40
.L$reverse_$2F3_α_117_41:
                        lea              r9, [rsp + 416]
.L$reverse_$2F3_α_117_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_117_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_117_43
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_117_57
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_117_42
.L$reverse_$2F3_α_117_57:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_117_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_117_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_117_42
.L$reverse_$2F3_α_117_58:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_117_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_117_43
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_117_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_117_42
.L$reverse_$2F3_α_117_43:
                        cmp              r8, r9;                              je    .L$reverse_$2F3_α_117_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_117_44
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_117_44
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_117_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_117_44
                                                                              jmp   .L$reverse_$2F3_α_117_45
.L$reverse_$2F3_α_117_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_117_53
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_117_53
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_117_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_117_53
                                                                              jmp   .L$reverse_$2F3_α_117_46
.L$reverse_$2F3_α_117_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_117_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_117_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .L$reverse_$2F3_α_117_51
.L$reverse_$2F3_α_117_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_117_47
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_117_47
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_117_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_117_47
                                                                              jmp   .L$reverse_$2F3_α_117_48
.L$reverse_$2F3_α_117_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_117_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_117_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .L$reverse_$2F3_α_117_51
.L$reverse_$2F3_α_117_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .L$reverse_$2F3_α_117_49
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_117_53
                                                                              jmp   .L$reverse_$2F3_α_117_52
.L$reverse_$2F3_α_117_49:
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_117_52
                        cmp              cl, 5;                               je    .L$reverse_$2F3_α_117_53
                        cmp              dl, 5;                               je    .L$reverse_$2F3_α_117_53
                        cmp              cl, 3;                               jne   .L$reverse_$2F3_α_117_50
                        cmp              dl, 3;                               jne   .L$reverse_$2F3_α_117_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_117_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_117_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .L$reverse_$2F3_α_117_51
                                                                              jmp   .L$reverse_$2F3_α_117_52
.L$reverse_$2F3_α_117_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_117_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_117_53
.L$reverse_$2F3_α_117_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .L$reverse_$2F3_α_117_54
.L$reverse_$2F3_α_117_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_117_54
.L$reverse_$2F3_α_117_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_117_54:
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n64_var_ref_α
n63_call_prolog_β:      mov              r11, 43;                             jmp   n72_call_prolog_α
                        .size            n63_call_prolog_bx, .-n63_call_prolog_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n65_lit_string_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_lit_string_bx, @function
n65_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .L$reverse_$2F3_α_120_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n66_var_ref_α
.L$reverse_$2F3_α_120_0:
                        .quad            .L$reverse_$2F3_α_120_0_s
.L$reverse_$2F3_α_120_0_s:
                        .string          "."
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_var_ref_bx, @function
n66_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n67_var_ref_α
                        .size            n66_var_ref_bx, .-n66_var_ref_bx
                        .type            n67_var_ref_bx, @function
n67_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n68_call_prolog_α
                        .size            n67_var_ref_bx, .-n67_var_ref_bx
                        .type            n68_call_prolog_bx, @function
n68_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_prolog_α:      mov              r11, 48
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n69_var_ref_α
n68_call_prolog_β:      mov              r11, 48;                             jmp   n72_call_prolog_α
                        .size            n68_call_prolog_bx, .-n68_call_prolog_bx
                        .type            n69_var_ref_bx, @function
n69_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n70_call_proc_staged_α
                        .size            n69_var_ref_bx, .-n69_var_ref_bx
                        .type            n70_call_proc_staged_bx, @function
n70_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_call_proc_staged_α: mov              r11, 50
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .L$reverse_$2F3_α_129_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .L$reverse_$2F3_α_129_201
.L$reverse_$2F3_α_129_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_129_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .L$reverse_$2F3_α_129_202
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .L$reverse_$2F3_α_129_203
.L$reverse_$2F3_α_129_202:
                        mov              edi, 1
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
.L$reverse_$2F3_α_129_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .L$reverse_$2F3_α_129_204
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .L$reverse_$2F3_α_129_205
.L$reverse_$2F3_α_129_204:
                        mov              edi, 2
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
.L$reverse_$2F3_α_129_205:
                        sub              rsp, 8
                        lea              rax, [rip + .L$reverse_$2F3_α_129_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_129_1
                        lea              rcx, [rip + .L$reverse_$2F3_α_129_4]
                        push             rcx
                        lea              rcx, [rip + .L$reverse_$2F3_α_129_3]
                        push             rcx
                        lea              rdx, [rip + .L$reverse_$2F3_α_129_4]
                                                                              jmp   rax
.L$reverse_$2F3_α_129_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .L$reverse_$2F3_α_129_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .L$reverse_$2F3_α_129_2
.L$reverse_$2F3_α_129_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .L$reverse_$2F3_α_129_2
.L$reverse_$2F3_α_129_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .L$reverse_$2F3_α_129_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .L$reverse_$2F3_α_129_2
.L$reverse_$2F3_α_129_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .L$reverse_$2F3_α_129_2
.L$reverse_$2F3_α_129_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_129_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .L$reverse_$2F3_α_129_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.L$reverse_$2F3_α_129_29:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n71_suspend_α
n70_call_proc_staged_β: mov              r11, 50
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n72_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1168
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
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
                        mov              edi, 2
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
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n72_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .L$reverse_$2F3_α_129_7]
                        push             r8
                        lea              rcx, [rip + .L$reverse_$2F3_α_129_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .L$reverse_$2F3_α_129_3]
                        push             rcx
                        lea              rdx, [rip + .L$reverse_$2F3_α_129_4]
                                                                              jmp   rax
.L$reverse_$2F3_α_129_7:
                        add              rsp, 16
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n71_suspend_α
.L$reverse_$2F3_β_129_0:
                        .quad            .L$reverse_$2F3_β_129_0_s
.L$reverse_$2F3_β_129_0_s:
                        .string          "$reverse_/3"
                        .size            n70_call_proc_staged_bx, .-n70_call_proc_staged_bx
                        .type            n71_suspend_bx, @function
n71_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_suspend_α:          mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_131_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1168];         jmp   rax
.L$reverse_$2F3_α_131_61:
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n71_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n71_suspend_β]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   $reverse_$2F3_γ
n71_suspend_β:          mov              r11, 51;                             jmp   n70_call_proc_staged_β
                        .size            n71_suspend_bx, .-n71_suspend_bx
                        .type            n72_call_prolog_bx, @function
n72_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_prolog_α:      mov              r11, 52
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
                        cmp              al, 104;                             je    $reverse_$2F3_ω
                                                                              jmp   $reverse_$2F3_ω
n72_call_prolog_β:      mov              r11, 52;                             jmp   $reverse_$2F3_ω
                        .size            n72_call_prolog_bx, .-n72_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_β:
                                                                              jmp   n48_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .L$reverse_$2F3_α_132_50
                        mov              qword ptr [rsp + 1168], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1168];         jmp   rax
.L$reverse_$2F3_α_132_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1272]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1280]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__append$2F3:
                        sub              rsp, 1216
                        mov              qword ptr [rsp + 1192], rcx
                        mov              qword ptr [rsp + 1200], rdx
                        mov              qword ptr [rsp + 1208], rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1184
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
append$2F3_α_body:
                        lea              rax, [rip + n147_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        .type            n133_call_prolog_bx, @function
n133_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_call_prolog_α:     mov              r11, 53
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lappend$2F3_α_170_102
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lappend$2F3_α_170_101
.Lappend$2F3_α_170_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lappend$2F3_α_170_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lappend$2F3_α_170_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lappend$2F3_α_170_101
.Lappend$2F3_α_170_100: lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lappend$2F3_α_170_101: mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    append$2F3_ω
                                                                              jmp   n134_var_ref_α
n133_call_prolog_β:     mov              r11, 53;                             jmp   append$2F3_ω
                        .size            n133_call_prolog_bx, .-n133_call_prolog_bx
                        .type            n134_var_ref_bx, @function
n134_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n135_lit_integer_α
                        .size            n134_var_ref_bx, .-n134_var_ref_bx
                        .type            n135_lit_integer_bx, @function
n135_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     mov              r11, 55
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lappend$2F3_α_173_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n136_lit_string_α
.Lappend$2F3_α_173_0:   .quad            2
                        .size            n135_lit_integer_bx, .-n135_lit_integer_bx
                        .type            n136_lit_string_bx, @function
n136_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              r11, 56
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 2
                        mov              rax, qword ptr [rip + .Lappend$2F3_α_174_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n137_call_prolog_α
.Lappend$2F3_α_174_0:   .quad            .Lappend$2F3_α_174_0_s
.Lappend$2F3_α_174_0_s: .string          "[]"
                        .size            n136_lit_string_bx, .-n136_lit_string_bx
                        .type            n137_call_prolog_bx, @function
n137_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_call_prolog_α:     mov              r11, 57
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        lea              r8, [rsp + 992]
.Lappend$2F3_α_175_110: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_175_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_175_111
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_175_112
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_175_110
.Lappend$2F3_α_175_112: cmp              esi, 2;                              jne   .Lappend$2F3_α_175_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_175_111
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_175_110
.Lappend$2F3_α_175_113: cmp              al, 72;                              jne   .Lappend$2F3_α_175_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_175_111
                        cmp              rax, r8;                             je    .Lappend$2F3_α_175_111
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_175_110
.Lappend$2F3_α_175_111: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_175_114
                        cmp              al, 104;                             je    .Lappend$2F3_α_175_114
                        cmp              al, 72;                              jne   .Lappend$2F3_α_175_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lappend$2F3_α_175_114
                                                                              jmp   .Lappend$2F3_α_175_118
.Lappend$2F3_α_175_118: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lappend$2F3_α_175_115
                        cmp              al, 3;                               je    .Lappend$2F3_α_175_114
                        cmp              al, 2;                               jne   .Lappend$2F3_α_175_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lappend$2F3_α_175_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lappend$2F3_α_175_114
                                                                              jmp   .Lappend$2F3_α_175_116
.Lappend$2F3_α_175_114: mov              eax, 3
                        mov              edx, 1;                              jmp   .Lappend$2F3_α_175_117
.Lappend$2F3_α_175_115: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lappend$2F3_α_175_117
.Lappend$2F3_α_175_116: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lappend$2F3_α_175_117: mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n149_var_ref_α
                                                                              jmp   n138_var_ref_α
n137_call_prolog_β:     mov              r11, 57;                             jmp   n149_var_ref_α
                        .size            n137_call_prolog_bx, .-n137_call_prolog_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n139_lit_string_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_lit_string_bx, @function
n139_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              r11, 59
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lappend$2F3_α_178_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n140_call_prolog_α
.Lappend$2F3_α_178_0:   .quad            .Lappend$2F3_α_178_0_s
.Lappend$2F3_α_178_0_s: .string          "[]"
                        .size            n139_lit_string_bx, .-n139_lit_string_bx
                        .type            n140_call_prolog_bx, @function
n140_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_call_prolog_α:     mov              r11, 60
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        mov              rsi, qword ptr [rip + .Lappend$2F3_α_179_2]
                                                                              jmp   .Lappend$2F3_α_179_3
.Lappend$2F3_α_179_2:   .quad            .Lappend$2F3_α_179_2_s
.Lappend$2F3_α_179_2_s: .string          "[]"
.Lappend$2F3_α_179_3:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n148_call_prolog_α
                                                                              jmp   n141_var_ref_α
n140_call_prolog_β:     mov              r11, 60;                             jmp   n148_call_prolog_α
                        .size            n140_call_prolog_bx, .-n140_call_prolog_bx
                        .type            n141_var_ref_bx, @function
n141_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n142_var_ref_α
                        .size            n141_var_ref_bx, .-n141_var_ref_bx
                        .type            n142_var_ref_bx, @function
n142_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n143_call_prolog_α
                        .size            n142_var_ref_bx, .-n142_var_ref_bx
                        .type            n143_call_prolog_bx, @function
n143_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_call_prolog_α:     mov              r11, 63
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        lea              r8, [rsp + 832]
.Lappend$2F3_α_184_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_184_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_184_41
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_184_55
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_184_40
.Lappend$2F3_α_184_55:  cmp              esi, 2;                              jne   .Lappend$2F3_α_184_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_184_41
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_184_40
.Lappend$2F3_α_184_56:  cmp              al, 72;                              jne   .Lappend$2F3_α_184_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_184_41
                        cmp              rax, r8;                             je    .Lappend$2F3_α_184_41
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_184_40
.Lappend$2F3_α_184_41:  lea              r9, [rsp + 848]
.Lappend$2F3_α_184_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_184_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_184_43
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_184_57
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_184_42
.Lappend$2F3_α_184_57:  cmp              esi, 2;                              jne   .Lappend$2F3_α_184_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_184_43
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_184_42
.Lappend$2F3_α_184_58:  cmp              al, 72;                              jne   .Lappend$2F3_α_184_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_184_43
                        cmp              rax, r9;                             je    .Lappend$2F3_α_184_43
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_184_42
.Lappend$2F3_α_184_43:  cmp              r8, r9;                              je    .Lappend$2F3_α_184_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_184_44
                        cmp              al, 104;                             je    .Lappend$2F3_α_184_44
                        cmp              al, 72;                              jne   .Lappend$2F3_α_184_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lappend$2F3_α_184_44
                                                                              jmp   .Lappend$2F3_α_184_45
.Lappend$2F3_α_184_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_184_53
                        cmp              al, 104;                             je    .Lappend$2F3_α_184_53
                        cmp              al, 72;                              jne   .Lappend$2F3_α_184_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lappend$2F3_α_184_53
                                                                              jmp   .Lappend$2F3_α_184_46
.Lappend$2F3_α_184_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lappend$2F3_α_184_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lappend$2F3_α_184_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lappend$2F3_α_184_51
.Lappend$2F3_α_184_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_184_47
                        cmp              al, 104;                             je    .Lappend$2F3_α_184_47
                        cmp              al, 72;                              jne   .Lappend$2F3_α_184_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lappend$2F3_α_184_47
                                                                              jmp   .Lappend$2F3_α_184_48
.Lappend$2F3_α_184_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lappend$2F3_α_184_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lappend$2F3_α_184_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lappend$2F3_α_184_51
.Lappend$2F3_α_184_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lappend$2F3_α_184_49
                        cmp              dl, 80;                              je    .Lappend$2F3_α_184_53
                                                                              jmp   .Lappend$2F3_α_184_52
.Lappend$2F3_α_184_49:  cmp              dl, 80;                              je    .Lappend$2F3_α_184_52
                        cmp              cl, 5;                               je    .Lappend$2F3_α_184_53
                        cmp              dl, 5;                               je    .Lappend$2F3_α_184_53
                        cmp              cl, 3;                               jne   .Lappend$2F3_α_184_50
                        cmp              dl, 3;                               jne   .Lappend$2F3_α_184_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lappend$2F3_α_184_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lappend$2F3_α_184_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lappend$2F3_α_184_51
                                                                              jmp   .Lappend$2F3_α_184_52
.Lappend$2F3_α_184_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lappend$2F3_α_184_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lappend$2F3_α_184_53
.Lappend$2F3_α_184_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lappend$2F3_α_184_54
.Lappend$2F3_α_184_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lappend$2F3_α_184_54
.Lappend$2F3_α_184_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lappend$2F3_α_184_54:  mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n148_call_prolog_α
                                                                              jmp   n144_var_ref_α
n143_call_prolog_β:     mov              r11, 63;                             jmp   n148_call_prolog_α
                        .size            n143_call_prolog_bx, .-n143_call_prolog_bx
                        .type            n144_var_ref_bx, @function
n144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n145_var_ref_α
                        .size            n144_var_ref_bx, .-n144_var_ref_bx
                        .type            n145_var_ref_bx, @function
n145_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n146_call_prolog_α
                        .size            n145_var_ref_bx, .-n145_var_ref_bx
                        .type            n146_call_prolog_bx, @function
n146_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_call_prolog_α:     mov              r11, 66
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        lea              rdi, [rsp + 752]
                        lea              r8, [rsp + 752]
.Lappend$2F3_α_189_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_189_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_189_41
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_189_55
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_189_40
.Lappend$2F3_α_189_55:  cmp              esi, 2;                              jne   .Lappend$2F3_α_189_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_189_41
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_189_40
.Lappend$2F3_α_189_56:  cmp              al, 72;                              jne   .Lappend$2F3_α_189_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_189_41
                        cmp              rax, r8;                             je    .Lappend$2F3_α_189_41
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_189_40
.Lappend$2F3_α_189_41:  lea              r9, [rsp + 768]
.Lappend$2F3_α_189_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_189_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_189_43
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_189_57
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_189_42
.Lappend$2F3_α_189_57:  cmp              esi, 2;                              jne   .Lappend$2F3_α_189_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_189_43
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_189_42
.Lappend$2F3_α_189_58:  cmp              al, 72;                              jne   .Lappend$2F3_α_189_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_189_43
                        cmp              rax, r9;                             je    .Lappend$2F3_α_189_43
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_189_42
.Lappend$2F3_α_189_43:  cmp              r8, r9;                              je    .Lappend$2F3_α_189_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_189_44
                        cmp              al, 104;                             je    .Lappend$2F3_α_189_44
                        cmp              al, 72;                              jne   .Lappend$2F3_α_189_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lappend$2F3_α_189_44
                                                                              jmp   .Lappend$2F3_α_189_45
.Lappend$2F3_α_189_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_189_53
                        cmp              al, 104;                             je    .Lappend$2F3_α_189_53
                        cmp              al, 72;                              jne   .Lappend$2F3_α_189_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lappend$2F3_α_189_53
                                                                              jmp   .Lappend$2F3_α_189_46
.Lappend$2F3_α_189_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lappend$2F3_α_189_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lappend$2F3_α_189_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lappend$2F3_α_189_51
.Lappend$2F3_α_189_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_189_47
                        cmp              al, 104;                             je    .Lappend$2F3_α_189_47
                        cmp              al, 72;                              jne   .Lappend$2F3_α_189_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lappend$2F3_α_189_47
                                                                              jmp   .Lappend$2F3_α_189_48
.Lappend$2F3_α_189_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lappend$2F3_α_189_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lappend$2F3_α_189_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lappend$2F3_α_189_51
.Lappend$2F3_α_189_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lappend$2F3_α_189_49
                        cmp              dl, 80;                              je    .Lappend$2F3_α_189_53
                                                                              jmp   .Lappend$2F3_α_189_52
.Lappend$2F3_α_189_49:  cmp              dl, 80;                              je    .Lappend$2F3_α_189_52
                        cmp              cl, 5;                               je    .Lappend$2F3_α_189_53
                        cmp              dl, 5;                               je    .Lappend$2F3_α_189_53
                        cmp              cl, 3;                               jne   .Lappend$2F3_α_189_50
                        cmp              dl, 3;                               jne   .Lappend$2F3_α_189_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lappend$2F3_α_189_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lappend$2F3_α_189_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lappend$2F3_α_189_51
                                                                              jmp   .Lappend$2F3_α_189_52
.Lappend$2F3_α_189_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lappend$2F3_α_189_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lappend$2F3_α_189_53
.Lappend$2F3_α_189_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lappend$2F3_α_189_54
.Lappend$2F3_α_189_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lappend$2F3_α_189_54
.Lappend$2F3_α_189_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lappend$2F3_α_189_54:  mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n148_call_prolog_α
                                                                              jmp   n147_suspend_α
n146_call_prolog_β:     mov              r11, 66;                             jmp   n148_call_prolog_α
                        .size            n146_call_prolog_bx, .-n146_call_prolog_bx
                        .type            n147_suspend_bx, @function
n147_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_suspend_α:         mov              r11, 67
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_191_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lappend$2F3_α_191_61:  mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n147_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n147_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   append$2F3_γ
n147_suspend_β:         mov              r11, 67;                             jmp   n148_call_prolog_α
                        .size            n147_suspend_bx, .-n147_suspend_bx
                        .type            n148_call_prolog_bx, @function
n148_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_call_prolog_α:     mov              r11, 68
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    append$2F3_ω
                                                                              jmp   n149_var_ref_α
n148_call_prolog_β:     mov              r11, 68;                             jmp   append$2F3_ω
                        .size            n148_call_prolog_bx, .-n148_call_prolog_bx
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n150_lit_integer_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_lit_integer_bx, @function
n150_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     mov              r11, 70
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lappend$2F3_α_195_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n151_lit_integer_α
.Lappend$2F3_α_195_0:   .quad            3
                        .size            n150_lit_integer_bx, .-n150_lit_integer_bx
                        .type            n151_lit_integer_bx, @function
n151_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:     mov              r11, 71
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lappend$2F3_α_196_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n152_call_prolog_α
.Lappend$2F3_α_196_0:   .quad            0
                        .size            n151_lit_integer_bx, .-n151_lit_integer_bx
                        .type            n152_call_prolog_bx, @function
n152_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_call_prolog_α:     mov              r11, 72
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        lea              r8, [rsp + 592]
.Lappend$2F3_α_197_110: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_197_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_197_111
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_197_112
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_197_110
.Lappend$2F3_α_197_112: cmp              esi, 2;                              jne   .Lappend$2F3_α_197_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_197_111
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_197_110
.Lappend$2F3_α_197_113: cmp              al, 72;                              jne   .Lappend$2F3_α_197_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_197_111
                        cmp              rax, r8;                             je    .Lappend$2F3_α_197_111
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_197_110
.Lappend$2F3_α_197_111: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_197_114
                        cmp              al, 104;                             je    .Lappend$2F3_α_197_114
                        cmp              al, 72;                              jne   .Lappend$2F3_α_197_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lappend$2F3_α_197_114
                                                                              jmp   .Lappend$2F3_α_197_118
.Lappend$2F3_α_197_118: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lappend$2F3_α_197_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lappend$2F3_α_197_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lappend$2F3_α_197_115
                                                                              jmp   .Lappend$2F3_α_197_114
.Lappend$2F3_α_197_119: cmp              al, 3;                               jne   .Lappend$2F3_α_197_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lappend$2F3_α_197_114
                                                                              jmp   .Lappend$2F3_α_197_115
.Lappend$2F3_α_197_120: cmp              al, 2;                               jne   .Lappend$2F3_α_197_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lappend$2F3_α_197_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lappend$2F3_α_197_114
                                                                              jmp   .Lappend$2F3_α_197_115
.Lappend$2F3_α_197_114: mov              eax, 3
                        mov              edx, 1;                              jmp   .Lappend$2F3_α_197_117
.Lappend$2F3_α_197_115: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lappend$2F3_α_197_117
.Lappend$2F3_α_197_116: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lappend$2F3_α_197_117: mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n153_var_ref_α
n152_call_prolog_β:     mov              r11, 72;                             jmp   n169_call_prolog_α
                        .size            n152_call_prolog_bx, .-n152_call_prolog_bx
                        .type            n153_var_ref_bx, @function
n153_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n154_var_ref_α
                        .size            n153_var_ref_bx, .-n153_var_ref_bx
                        .type            n154_var_ref_bx, @function
n154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n155_var_ref_α
                        .size            n154_var_ref_bx, .-n154_var_ref_bx
                        .type            n155_var_ref_bx, @function
n155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n156_call_prolog_α
                        .size            n155_var_ref_bx, .-n155_var_ref_bx
                        .type            n156_call_prolog_bx, @function
n156_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_call_prolog_α:     mov              r11, 76
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
.Lappend$2F3_α_204_60:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_204_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_61
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_204_62
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_204_60
.Lappend$2F3_α_204_62:  cmp              esi, 2;                              jne   .Lappend$2F3_α_204_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_61
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_204_60
.Lappend$2F3_α_204_63:  cmp              al, 72;                              jne   .Lappend$2F3_α_204_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_61
                        cmp              rax, r8;                             je    .Lappend$2F3_α_204_61
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_204_60
.Lappend$2F3_α_204_61:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_204_80
                        cmp              al, 104;                             je    .Lappend$2F3_α_204_80
                        cmp              al, 72;                              jne   .Lappend$2F3_α_204_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lappend$2F3_α_204_80
                                                                              jmp   .Lappend$2F3_α_204_74
.Lappend$2F3_α_204_74:  mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lappend$2F3_α_204_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lappend$2F3_α_204_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lappend$2F3_α_204_73
                        lea              r9, [rsp + 512]
.Lappend$2F3_α_204_64:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_204_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_65
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_204_66
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_204_64
.Lappend$2F3_α_204_66:  cmp              esi, 2;                              jne   .Lappend$2F3_α_204_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_65
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_204_64
.Lappend$2F3_α_204_67:  cmp              al, 72;                              jne   .Lappend$2F3_α_204_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_65
                        cmp              rax, r9;                             je    .Lappend$2F3_α_204_65
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_204_64
.Lappend$2F3_α_204_65:  lea              rcx, [rsp + 528]
.Lappend$2F3_α_204_68:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_204_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_69
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_204_70
                        mov              rcx, rax;                            jmp   .Lappend$2F3_α_204_68
.Lappend$2F3_α_204_70:  cmp              esi, 2;                              jne   .Lappend$2F3_α_204_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_69
                        mov              rcx, rax;                            jmp   .Lappend$2F3_α_204_68
.Lappend$2F3_α_204_71:  cmp              al, 72;                              jne   .Lappend$2F3_α_204_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_69
                        cmp              rax, rcx;                            je    .Lappend$2F3_α_204_69
                        mov              rcx, rax;                            jmp   .Lappend$2F3_α_204_68
.Lappend$2F3_α_204_69:  cmp              r9, rcx;                             je    .Lappend$2F3_α_204_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_204_75
                        cmp              al, 104;                             je    .Lappend$2F3_α_204_75
                        cmp              al, 72;                              jne   .Lappend$2F3_α_204_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lappend$2F3_α_204_75
                                                                              jmp   .Lappend$2F3_α_204_72
.Lappend$2F3_α_204_75:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_204_76
                        cmp              al, 104;                             je    .Lappend$2F3_α_204_76
                        cmp              al, 72;                              jne   .Lappend$2F3_α_204_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lappend$2F3_α_204_76
                                                                              jmp   .Lappend$2F3_α_204_72
.Lappend$2F3_α_204_76:  lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lappend$2F3_α_204_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lappend$2F3_α_204_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lappend$2F3_α_204_77
.Lappend$2F3_α_204_80:  lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lappend$2F3_α_204_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lappend$2F3_α_204_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lappend$2F3_α_204_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lappend$2F3_α_204_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lappend$2F3_α_204_72
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
.Lappend$2F3_α_204_81:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_204_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_82
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_204_83
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_204_81
.Lappend$2F3_α_204_83:  cmp              esi, 2;                              jne   .Lappend$2F3_α_204_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_82
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_204_81
.Lappend$2F3_α_204_84:  cmp              al, 72;                              jne   .Lappend$2F3_α_204_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_82
                        cmp              rax, r9;                             je    .Lappend$2F3_α_204_82
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_204_81
.Lappend$2F3_α_204_82:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_204_85
                        cmp              al, 104;                             je    .Lappend$2F3_α_204_85
                        cmp              al, 72;                              jne   .Lappend$2F3_α_204_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lappend$2F3_α_204_85
                                                                              jmp   .Lappend$2F3_α_204_86
.Lappend$2F3_α_204_85:  mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lappend$2F3_α_204_87
.Lappend$2F3_α_204_86:  mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lappend$2F3_α_204_87:  lea              rcx, [rsp + 528]
.Lappend$2F3_α_204_88:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_204_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_89
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_204_90
                        mov              rcx, rax;                            jmp   .Lappend$2F3_α_204_88
.Lappend$2F3_α_204_90:  cmp              esi, 2;                              jne   .Lappend$2F3_α_204_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_89
                        mov              rcx, rax;                            jmp   .Lappend$2F3_α_204_88
.Lappend$2F3_α_204_91:  cmp              al, 72;                              jne   .Lappend$2F3_α_204_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_204_89
                        cmp              rax, rcx;                            je    .Lappend$2F3_α_204_89
                        mov              rcx, rax;                            jmp   .Lappend$2F3_α_204_88
.Lappend$2F3_α_204_89:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_204_92
                        cmp              al, 104;                             je    .Lappend$2F3_α_204_92
                        cmp              al, 72;                              jne   .Lappend$2F3_α_204_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lappend$2F3_α_204_92
                                                                              jmp   .Lappend$2F3_α_204_93
.Lappend$2F3_α_204_92:  mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lappend$2F3_α_204_94
.Lappend$2F3_α_204_93:  mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lappend$2F3_α_204_94:  lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lappend$2F3_α_204_77
.Lappend$2F3_α_204_73:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lappend$2F3_α_204_77
.Lappend$2F3_α_204_72:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lappend$2F3_α_204_77:  mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n157_var_ref_α
n156_call_prolog_β:     mov              r11, 76;                             jmp   n169_call_prolog_α
                        .size            n156_call_prolog_bx, .-n156_call_prolog_bx
                        .type            n157_var_ref_bx, @function
n157_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n158_var_ref_α
                        .size            n157_var_ref_bx, .-n157_var_ref_bx
                        .type            n158_var_ref_bx, @function
n158_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n159_call_prolog_α
                        .size            n158_var_ref_bx, .-n158_var_ref_bx
                        .type            n159_call_prolog_bx, @function
n159_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_prolog_α:     mov              r11, 79
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
.Lappend$2F3_α_209_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_209_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_209_41
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_209_55
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_209_40
.Lappend$2F3_α_209_55:  cmp              esi, 2;                              jne   .Lappend$2F3_α_209_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_209_41
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_209_40
.Lappend$2F3_α_209_56:  cmp              al, 72;                              jne   .Lappend$2F3_α_209_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_209_41
                        cmp              rax, r8;                             je    .Lappend$2F3_α_209_41
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_209_40
.Lappend$2F3_α_209_41:  lea              r9, [rsp + 416]
.Lappend$2F3_α_209_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_209_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_209_43
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_209_57
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_209_42
.Lappend$2F3_α_209_57:  cmp              esi, 2;                              jne   .Lappend$2F3_α_209_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_209_43
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_209_42
.Lappend$2F3_α_209_58:  cmp              al, 72;                              jne   .Lappend$2F3_α_209_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_209_43
                        cmp              rax, r9;                             je    .Lappend$2F3_α_209_43
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_209_42
.Lappend$2F3_α_209_43:  cmp              r8, r9;                              je    .Lappend$2F3_α_209_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_209_44
                        cmp              al, 104;                             je    .Lappend$2F3_α_209_44
                        cmp              al, 72;                              jne   .Lappend$2F3_α_209_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lappend$2F3_α_209_44
                                                                              jmp   .Lappend$2F3_α_209_45
.Lappend$2F3_α_209_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_209_53
                        cmp              al, 104;                             je    .Lappend$2F3_α_209_53
                        cmp              al, 72;                              jne   .Lappend$2F3_α_209_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lappend$2F3_α_209_53
                                                                              jmp   .Lappend$2F3_α_209_46
.Lappend$2F3_α_209_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lappend$2F3_α_209_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lappend$2F3_α_209_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lappend$2F3_α_209_51
.Lappend$2F3_α_209_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_209_47
                        cmp              al, 104;                             je    .Lappend$2F3_α_209_47
                        cmp              al, 72;                              jne   .Lappend$2F3_α_209_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lappend$2F3_α_209_47
                                                                              jmp   .Lappend$2F3_α_209_48
.Lappend$2F3_α_209_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lappend$2F3_α_209_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lappend$2F3_α_209_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lappend$2F3_α_209_51
.Lappend$2F3_α_209_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lappend$2F3_α_209_49
                        cmp              dl, 80;                              je    .Lappend$2F3_α_209_53
                                                                              jmp   .Lappend$2F3_α_209_52
.Lappend$2F3_α_209_49:  cmp              dl, 80;                              je    .Lappend$2F3_α_209_52
                        cmp              cl, 5;                               je    .Lappend$2F3_α_209_53
                        cmp              dl, 5;                               je    .Lappend$2F3_α_209_53
                        cmp              cl, 3;                               jne   .Lappend$2F3_α_209_50
                        cmp              dl, 3;                               jne   .Lappend$2F3_α_209_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lappend$2F3_α_209_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lappend$2F3_α_209_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lappend$2F3_α_209_51
                                                                              jmp   .Lappend$2F3_α_209_52
.Lappend$2F3_α_209_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lappend$2F3_α_209_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lappend$2F3_α_209_53
.Lappend$2F3_α_209_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lappend$2F3_α_209_54
.Lappend$2F3_α_209_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lappend$2F3_α_209_54
.Lappend$2F3_α_209_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lappend$2F3_α_209_54:  mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n160_var_ref_α
n159_call_prolog_β:     mov              r11, 79;                             jmp   n169_call_prolog_α
                        .size            n159_call_prolog_bx, .-n159_call_prolog_bx
                        .type            n160_var_ref_bx, @function
n160_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n161_var_ref_α
                        .size            n160_var_ref_bx, .-n160_var_ref_bx
                        .type            n161_var_ref_bx, @function
n161_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n162_var_ref_α
                        .size            n161_var_ref_bx, .-n161_var_ref_bx
                        .type            n162_var_ref_bx, @function
n162_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n163_call_prolog_α
                        .size            n162_var_ref_bx, .-n162_var_ref_bx
                        .type            n163_call_prolog_bx, @function
n163_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_call_prolog_α:     mov              r11, 83
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        lea              r8, [rsp + 304]
.Lappend$2F3_α_216_60:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_216_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_61
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_216_62
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_216_60
.Lappend$2F3_α_216_62:  cmp              esi, 2;                              jne   .Lappend$2F3_α_216_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_61
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_216_60
.Lappend$2F3_α_216_63:  cmp              al, 72;                              jne   .Lappend$2F3_α_216_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_61
                        cmp              rax, r8;                             je    .Lappend$2F3_α_216_61
                        mov              r8, rax;                             jmp   .Lappend$2F3_α_216_60
.Lappend$2F3_α_216_61:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_216_80
                        cmp              al, 104;                             je    .Lappend$2F3_α_216_80
                        cmp              al, 72;                              jne   .Lappend$2F3_α_216_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lappend$2F3_α_216_80
                                                                              jmp   .Lappend$2F3_α_216_74
.Lappend$2F3_α_216_74:  mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lappend$2F3_α_216_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lappend$2F3_α_216_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lappend$2F3_α_216_73
                        lea              r9, [rsp + 320]
.Lappend$2F3_α_216_64:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_216_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_65
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_216_66
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_216_64
.Lappend$2F3_α_216_66:  cmp              esi, 2;                              jne   .Lappend$2F3_α_216_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_65
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_216_64
.Lappend$2F3_α_216_67:  cmp              al, 72;                              jne   .Lappend$2F3_α_216_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_65
                        cmp              rax, r9;                             je    .Lappend$2F3_α_216_65
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_216_64
.Lappend$2F3_α_216_65:  lea              rcx, [rsp + 336]
.Lappend$2F3_α_216_68:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_216_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_69
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_216_70
                        mov              rcx, rax;                            jmp   .Lappend$2F3_α_216_68
.Lappend$2F3_α_216_70:  cmp              esi, 2;                              jne   .Lappend$2F3_α_216_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_69
                        mov              rcx, rax;                            jmp   .Lappend$2F3_α_216_68
.Lappend$2F3_α_216_71:  cmp              al, 72;                              jne   .Lappend$2F3_α_216_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_69
                        cmp              rax, rcx;                            je    .Lappend$2F3_α_216_69
                        mov              rcx, rax;                            jmp   .Lappend$2F3_α_216_68
.Lappend$2F3_α_216_69:  cmp              r9, rcx;                             je    .Lappend$2F3_α_216_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_216_75
                        cmp              al, 104;                             je    .Lappend$2F3_α_216_75
                        cmp              al, 72;                              jne   .Lappend$2F3_α_216_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lappend$2F3_α_216_75
                                                                              jmp   .Lappend$2F3_α_216_72
.Lappend$2F3_α_216_75:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_216_76
                        cmp              al, 104;                             je    .Lappend$2F3_α_216_76
                        cmp              al, 72;                              jne   .Lappend$2F3_α_216_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lappend$2F3_α_216_76
                                                                              jmp   .Lappend$2F3_α_216_72
.Lappend$2F3_α_216_76:  lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lappend$2F3_α_216_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lappend$2F3_α_216_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lappend$2F3_α_216_77
.Lappend$2F3_α_216_80:  lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lappend$2F3_α_216_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lappend$2F3_α_216_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lappend$2F3_α_216_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lappend$2F3_α_216_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lappend$2F3_α_216_72
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
                        lea              r9, [rsp + 320]
.Lappend$2F3_α_216_81:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_216_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_82
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_216_83
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_216_81
.Lappend$2F3_α_216_83:  cmp              esi, 2;                              jne   .Lappend$2F3_α_216_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_82
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_216_81
.Lappend$2F3_α_216_84:  cmp              al, 72;                              jne   .Lappend$2F3_α_216_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_82
                        cmp              rax, r9;                             je    .Lappend$2F3_α_216_82
                        mov              r9, rax;                             jmp   .Lappend$2F3_α_216_81
.Lappend$2F3_α_216_82:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_216_85
                        cmp              al, 104;                             je    .Lappend$2F3_α_216_85
                        cmp              al, 72;                              jne   .Lappend$2F3_α_216_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lappend$2F3_α_216_85
                                                                              jmp   .Lappend$2F3_α_216_86
.Lappend$2F3_α_216_85:  mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lappend$2F3_α_216_87
.Lappend$2F3_α_216_86:  mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lappend$2F3_α_216_87:  lea              rcx, [rsp + 336]
.Lappend$2F3_α_216_88:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lappend$2F3_α_216_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_89
                        cmp              esi, 1;                              jne   .Lappend$2F3_α_216_90
                        mov              rcx, rax;                            jmp   .Lappend$2F3_α_216_88
.Lappend$2F3_α_216_90:  cmp              esi, 2;                              jne   .Lappend$2F3_α_216_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_89
                        mov              rcx, rax;                            jmp   .Lappend$2F3_α_216_88
.Lappend$2F3_α_216_91:  cmp              al, 72;                              jne   .Lappend$2F3_α_216_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lappend$2F3_α_216_89
                        cmp              rax, rcx;                            je    .Lappend$2F3_α_216_89
                        mov              rcx, rax;                            jmp   .Lappend$2F3_α_216_88
.Lappend$2F3_α_216_89:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lappend$2F3_α_216_92
                        cmp              al, 104;                             je    .Lappend$2F3_α_216_92
                        cmp              al, 72;                              jne   .Lappend$2F3_α_216_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lappend$2F3_α_216_92
                                                                              jmp   .Lappend$2F3_α_216_93
.Lappend$2F3_α_216_92:  mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lappend$2F3_α_216_94
.Lappend$2F3_α_216_93:  mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lappend$2F3_α_216_94:  lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lappend$2F3_α_216_77
.Lappend$2F3_α_216_73:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lappend$2F3_α_216_77
.Lappend$2F3_α_216_72:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lappend$2F3_α_216_77:  mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n164_var_ref_α
n163_call_prolog_β:     mov              r11, 83;                             jmp   n169_call_prolog_α
                        .size            n163_call_prolog_bx, .-n163_call_prolog_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n165_var_ref_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_var_ref_bx, @function
n165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n166_var_ref_α
                        .size            n165_var_ref_bx, .-n165_var_ref_bx
                        .type            n166_var_ref_bx, @function
n166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n167_call_proc_staged_α
                        .size            n166_var_ref_bx, .-n166_var_ref_bx
                        .type            n167_call_proc_staged_bx, @function
n167_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        mov              r11, 87
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lappend$2F3_α_224_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lappend$2F3_α_224_201
.Lappend$2F3_α_224_200: mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lappend$2F3_α_224_201: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lappend$2F3_α_224_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lappend$2F3_α_224_203
.Lappend$2F3_α_224_202: mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lappend$2F3_α_224_203: lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lappend$2F3_α_224_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lappend$2F3_α_224_205
.Lappend$2F3_α_224_204: mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lappend$2F3_α_224_205: sub              rsp, 8
                        lea              rax, [rip + .Lappend$2F3_α_224_7]    # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lappend$2F3_α_224_1
                        lea              rcx, [rip + .Lappend$2F3_α_224_4]
                        push             rcx
                        lea              rcx, [rip + .Lappend$2F3_α_224_3]
                        push             rcx
                        lea              rdx, [rip + .Lappend$2F3_α_224_4];   jmp   rax
.Lappend$2F3_α_224_3:   add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lappend$2F3_α_224_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lappend$2F3_α_224_2
.Lappend$2F3_α_224_5:   call             rt_gen_spine_pass_γ@PLT;             jmp   .Lappend$2F3_α_224_2
.Lappend$2F3_α_224_4:   add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lappend$2F3_α_224_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lappend$2F3_α_224_2
.Lappend$2F3_α_224_6:   call             rt_gen_spine_pass_ω@PLT;             jmp   .Lappend$2F3_α_224_2
.Lappend$2F3_α_224_1:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lappend$2F3_α_224_2:   mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lappend$2F3_α_224_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lappend$2F3_α_224_29:  mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n168_suspend_α
n167_call_proc_staged_β:
                        mov              r11, 87
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n169_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1088
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n169_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lappend$2F3_α_224_7]
                        push             r8
                        lea              rcx, [rip + .Lappend$2F3_α_224_4]    # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lappend$2F3_α_224_3]
                        push             rcx
                        lea              rdx, [rip + .Lappend$2F3_α_224_4];   jmp   rax
.Lappend$2F3_α_224_7:   add              rsp, 16
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n168_suspend_α
.Lappend$2F3_β_224_0:   .quad            .Lappend$2F3_β_224_0_s
.Lappend$2F3_β_224_0_s: .string          "append/3"
                        .size            n167_call_proc_staged_bx, .-n167_call_proc_staged_bx
                        .type            n168_suspend_bx, @function
n168_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_suspend_α:         mov              r11, 88
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lappend$2F3_α_226_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lappend$2F3_α_226_61:  mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n168_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n168_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   append$2F3_γ
n168_suspend_β:         mov              r11, 88;                             jmp   n167_call_proc_staged_β
                        .size            n168_suspend_bx, .-n168_suspend_bx
                        .type            n169_call_prolog_bx, @function
n169_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_call_prolog_α:     mov              r11, 89
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
                        cmp              al, 104;                             je    append$2F3_ω
                                                                              jmp   append$2F3_ω
n169_call_prolog_β:     mov              r11, 89;                             jmp   append$2F3_ω
                        .size            n169_call_prolog_bx, .-n169_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_β:
                                                                              jmp   n147_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lappend$2F3_α_227_50
                        mov              qword ptr [rsp + 1088], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lappend$2F3_α_227_50:  mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1192]
                        add              rsp, 1216;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1200]
                        add              rsp, 1216;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__nrev$2F2:
                        sub              rsp, 1232
                        mov              qword ptr [rsp + 1208], rcx
                        mov              qword ptr [rsp + 1216], rdx
                        mov              qword ptr [rsp + 1224], rsp
                        mov              rdi, rsp
                        mov              esi, 1104
                        mov              edx, 1200
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
nrev$2F2_α_body:
                        lea              rax, [rip + n239_suspend_β]
                        mov              qword ptr [rsp + 1104], rax
                        .type            n228_call_prolog_bx, @function
n228_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_call_prolog_α:     mov              r11, 90
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lnrev$2F2_α_264_102
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lnrev$2F2_α_264_101
.Lnrev$2F2_α_264_102:   lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lnrev$2F2_α_264_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lnrev$2F2_α_264_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lnrev$2F2_α_264_101
.Lnrev$2F2_α_264_100:   lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnrev$2F2_α_264_101:   mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    nrev$2F2_ω
                                                                              jmp   n229_var_ref_α
n228_call_prolog_β:     mov              r11, 90;                             jmp   nrev$2F2_ω
                        .size            n228_call_prolog_bx, .-n228_call_prolog_bx
                        .type            n229_var_ref_bx, @function
n229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n230_lit_integer_α
                        .size            n229_var_ref_bx, .-n229_var_ref_bx
                        .type            n230_lit_integer_bx, @function
n230_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     mov              r11, 92
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lnrev$2F2_α_267_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n231_lit_string_α
.Lnrev$2F2_α_267_0:     .quad            2
                        .size            n230_lit_integer_bx, .-n230_lit_integer_bx
                        .type            n231_lit_string_bx, @function
n231_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 2
                        mov              rax, qword ptr [rip + .Lnrev$2F2_α_268_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n232_call_prolog_α
.Lnrev$2F2_α_268_0:     .quad            .Lnrev$2F2_α_268_0_s
.Lnrev$2F2_α_268_0_s:   .string          "[]"
                        .size            n231_lit_string_bx, .-n231_lit_string_bx
                        .type            n232_call_prolog_bx, @function
n232_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_call_prolog_α:     mov              r11, 94
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        lea              r8, [rsp + 1008]
.Lnrev$2F2_α_269_110:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lnrev$2F2_α_269_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_269_111
                        cmp              esi, 1;                              jne   .Lnrev$2F2_α_269_112
                        mov              r8, rax;                             jmp   .Lnrev$2F2_α_269_110
.Lnrev$2F2_α_269_112:   cmp              esi, 2;                              jne   .Lnrev$2F2_α_269_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnrev$2F2_α_269_111
                        mov              r8, rax;                             jmp   .Lnrev$2F2_α_269_110
.Lnrev$2F2_α_269_113:   cmp              al, 72;                              jne   .Lnrev$2F2_α_269_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_269_111
                        cmp              rax, r8;                             je    .Lnrev$2F2_α_269_111
                        mov              r8, rax;                             jmp   .Lnrev$2F2_α_269_110
.Lnrev$2F2_α_269_111:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lnrev$2F2_α_269_114
                        cmp              al, 104;                             je    .Lnrev$2F2_α_269_114
                        cmp              al, 72;                              jne   .Lnrev$2F2_α_269_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lnrev$2F2_α_269_114
                                                                              jmp   .Lnrev$2F2_α_269_118
.Lnrev$2F2_α_269_118:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lnrev$2F2_α_269_115
                        cmp              al, 3;                               je    .Lnrev$2F2_α_269_114
                        cmp              al, 2;                               jne   .Lnrev$2F2_α_269_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lnrev$2F2_α_269_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lnrev$2F2_α_269_114
                                                                              jmp   .Lnrev$2F2_α_269_116
.Lnrev$2F2_α_269_114:   mov              eax, 3
                        mov              edx, 1;                              jmp   .Lnrev$2F2_α_269_117
.Lnrev$2F2_α_269_115:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lnrev$2F2_α_269_117
.Lnrev$2F2_α_269_116:   mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnrev$2F2_α_269_117:   mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n241_var_ref_α
                                                                              jmp   n233_var_ref_α
n232_call_prolog_β:     mov              r11, 94;                             jmp   n241_var_ref_α
                        .size            n232_call_prolog_bx, .-n232_call_prolog_bx
                        .type            n233_var_ref_bx, @function
n233_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n234_lit_string_α
                        .size            n233_var_ref_bx, .-n233_var_ref_bx
                        .type            n234_lit_string_bx, @function
n234_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 2
                        mov              rax, qword ptr [rip + .Lnrev$2F2_α_272_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n235_call_prolog_α
.Lnrev$2F2_α_272_0:     .quad            .Lnrev$2F2_α_272_0_s
.Lnrev$2F2_α_272_0_s:   .string          "[]"
                        .size            n234_lit_string_bx, .-n234_lit_string_bx
                        .type            n235_call_prolog_bx, @function
n235_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_call_prolog_α:     mov              r11, 97
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              rsi, qword ptr [rip + .Lnrev$2F2_α_273_2]
                                                                              jmp   .Lnrev$2F2_α_273_3
.Lnrev$2F2_α_273_2:     .quad            .Lnrev$2F2_α_273_2_s
.Lnrev$2F2_α_273_2_s:   .string          "[]"
.Lnrev$2F2_α_273_3:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n240_call_prolog_α
                                                                              jmp   n236_var_ref_α
n235_call_prolog_β:     mov              r11, 97;                             jmp   n240_call_prolog_α
                        .size            n235_call_prolog_bx, .-n235_call_prolog_bx
                        .type            n236_var_ref_bx, @function
n236_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n237_lit_string_α
                        .size            n236_var_ref_bx, .-n236_var_ref_bx
                        .type            n237_lit_string_bx, @function
n237_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:      mov              r11, 99
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 2
                        mov              rax, qword ptr [rip + .Lnrev$2F2_α_276_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n238_call_prolog_α
.Lnrev$2F2_α_276_0:     .quad            .Lnrev$2F2_α_276_0_s
.Lnrev$2F2_α_276_0_s:   .string          "[]"
                        .size            n237_lit_string_bx, .-n237_lit_string_bx
                        .type            n238_call_prolog_bx, @function
n238_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_call_prolog_α:     mov              r11, 100
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              rsi, qword ptr [rip + .Lnrev$2F2_α_277_2]
                                                                              jmp   .Lnrev$2F2_α_277_3
.Lnrev$2F2_α_277_2:     .quad            .Lnrev$2F2_α_277_2_s
.Lnrev$2F2_α_277_2_s:   .string          "[]"
.Lnrev$2F2_α_277_3:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n240_call_prolog_α
                                                                              jmp   n239_suspend_α
n238_call_prolog_β:     mov              r11, 100;                            jmp   n240_call_prolog_α
                        .size            n238_call_prolog_bx, .-n238_call_prolog_bx
                        .type            n239_suspend_bx, @function
n239_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_suspend_α:         mov              r11, 101
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lnrev$2F2_α_279_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1104];         jmp   rax
.Lnrev$2F2_α_279_61:    mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n239_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n239_suspend_β]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   nrev$2F2_γ
n239_suspend_β:         mov              r11, 101;                            jmp   n240_call_prolog_α
                        .size            n239_suspend_bx, .-n239_suspend_bx
                        .type            n240_call_prolog_bx, @function
n240_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_call_prolog_α:     mov              r11, 102
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    nrev$2F2_ω
                                                                              jmp   n241_var_ref_α
n240_call_prolog_β:     mov              r11, 102;                            jmp   nrev$2F2_ω
                        .size            n240_call_prolog_bx, .-n240_call_prolog_bx
                        .type            n241_var_ref_bx, @function
n241_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n242_lit_integer_α
                        .size            n241_var_ref_bx, .-n241_var_ref_bx
                        .type            n242_lit_integer_bx, @function
n242_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     mov              r11, 104
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lnrev$2F2_α_283_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n243_lit_integer_α
.Lnrev$2F2_α_283_0:     .quad            3
                        .size            n242_lit_integer_bx, .-n242_lit_integer_bx
                        .type            n243_lit_integer_bx, @function
n243_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:     mov              r11, 105
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lnrev$2F2_α_284_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n244_call_prolog_α
.Lnrev$2F2_α_284_0:     .quad            0
                        .size            n243_lit_integer_bx, .-n243_lit_integer_bx
                        .type            n244_call_prolog_bx, @function
n244_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_call_prolog_α:     mov              r11, 106
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        lea              r8, [rsp + 688]
.Lnrev$2F2_α_285_110:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lnrev$2F2_α_285_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_285_111
                        cmp              esi, 1;                              jne   .Lnrev$2F2_α_285_112
                        mov              r8, rax;                             jmp   .Lnrev$2F2_α_285_110
.Lnrev$2F2_α_285_112:   cmp              esi, 2;                              jne   .Lnrev$2F2_α_285_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnrev$2F2_α_285_111
                        mov              r8, rax;                             jmp   .Lnrev$2F2_α_285_110
.Lnrev$2F2_α_285_113:   cmp              al, 72;                              jne   .Lnrev$2F2_α_285_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_285_111
                        cmp              rax, r8;                             je    .Lnrev$2F2_α_285_111
                        mov              r8, rax;                             jmp   .Lnrev$2F2_α_285_110
.Lnrev$2F2_α_285_111:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lnrev$2F2_α_285_114
                        cmp              al, 104;                             je    .Lnrev$2F2_α_285_114
                        cmp              al, 72;                              jne   .Lnrev$2F2_α_285_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lnrev$2F2_α_285_114
                                                                              jmp   .Lnrev$2F2_α_285_118
.Lnrev$2F2_α_285_118:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lnrev$2F2_α_285_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lnrev$2F2_α_285_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lnrev$2F2_α_285_115
                                                                              jmp   .Lnrev$2F2_α_285_114
.Lnrev$2F2_α_285_119:   cmp              al, 3;                               jne   .Lnrev$2F2_α_285_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lnrev$2F2_α_285_114
                                                                              jmp   .Lnrev$2F2_α_285_115
.Lnrev$2F2_α_285_120:   cmp              al, 2;                               jne   .Lnrev$2F2_α_285_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lnrev$2F2_α_285_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lnrev$2F2_α_285_114
                                                                              jmp   .Lnrev$2F2_α_285_115
.Lnrev$2F2_α_285_114:   mov              eax, 3
                        mov              edx, 1;                              jmp   .Lnrev$2F2_α_285_117
.Lnrev$2F2_α_285_115:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lnrev$2F2_α_285_117
.Lnrev$2F2_α_285_116:   mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnrev$2F2_α_285_117:   mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n263_call_prolog_α
                                                                              jmp   n245_var_ref_α
n244_call_prolog_β:     mov              r11, 106;                            jmp   n263_call_prolog_α
                        .size            n244_call_prolog_bx, .-n244_call_prolog_bx
                        .type            n245_var_ref_bx, @function
n245_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n246_var_ref_α
                        .size            n245_var_ref_bx, .-n245_var_ref_bx
                        .type            n246_var_ref_bx, @function
n246_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n247_var_ref_α
                        .size            n246_var_ref_bx, .-n246_var_ref_bx
                        .type            n247_var_ref_bx, @function
n247_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n248_call_prolog_α
                        .size            n247_var_ref_bx, .-n247_var_ref_bx
                        .type            n248_call_prolog_bx, @function
n248_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_call_prolog_α:     mov              r11, 110
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        lea              r8, [rsp + 592]
.Lnrev$2F2_α_292_60:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lnrev$2F2_α_292_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_61
                        cmp              esi, 1;                              jne   .Lnrev$2F2_α_292_62
                        mov              r8, rax;                             jmp   .Lnrev$2F2_α_292_60
.Lnrev$2F2_α_292_62:    cmp              esi, 2;                              jne   .Lnrev$2F2_α_292_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_61
                        mov              r8, rax;                             jmp   .Lnrev$2F2_α_292_60
.Lnrev$2F2_α_292_63:    cmp              al, 72;                              jne   .Lnrev$2F2_α_292_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_61
                        cmp              rax, r8;                             je    .Lnrev$2F2_α_292_61
                        mov              r8, rax;                             jmp   .Lnrev$2F2_α_292_60
.Lnrev$2F2_α_292_61:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lnrev$2F2_α_292_80
                        cmp              al, 104;                             je    .Lnrev$2F2_α_292_80
                        cmp              al, 72;                              jne   .Lnrev$2F2_α_292_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lnrev$2F2_α_292_80
                                                                              jmp   .Lnrev$2F2_α_292_74
.Lnrev$2F2_α_292_74:    mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lnrev$2F2_α_292_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lnrev$2F2_α_292_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lnrev$2F2_α_292_73
                        lea              r9, [rsp + 608]
.Lnrev$2F2_α_292_64:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lnrev$2F2_α_292_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_65
                        cmp              esi, 1;                              jne   .Lnrev$2F2_α_292_66
                        mov              r9, rax;                             jmp   .Lnrev$2F2_α_292_64
.Lnrev$2F2_α_292_66:    cmp              esi, 2;                              jne   .Lnrev$2F2_α_292_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_65
                        mov              r9, rax;                             jmp   .Lnrev$2F2_α_292_64
.Lnrev$2F2_α_292_67:    cmp              al, 72;                              jne   .Lnrev$2F2_α_292_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_65
                        cmp              rax, r9;                             je    .Lnrev$2F2_α_292_65
                        mov              r9, rax;                             jmp   .Lnrev$2F2_α_292_64
.Lnrev$2F2_α_292_65:    lea              rcx, [rsp + 624]
.Lnrev$2F2_α_292_68:    mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lnrev$2F2_α_292_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_69
                        cmp              esi, 1;                              jne   .Lnrev$2F2_α_292_70
                        mov              rcx, rax;                            jmp   .Lnrev$2F2_α_292_68
.Lnrev$2F2_α_292_70:    cmp              esi, 2;                              jne   .Lnrev$2F2_α_292_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_69
                        mov              rcx, rax;                            jmp   .Lnrev$2F2_α_292_68
.Lnrev$2F2_α_292_71:    cmp              al, 72;                              jne   .Lnrev$2F2_α_292_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_69
                        cmp              rax, rcx;                            je    .Lnrev$2F2_α_292_69
                        mov              rcx, rax;                            jmp   .Lnrev$2F2_α_292_68
.Lnrev$2F2_α_292_69:    cmp              r9, rcx;                             je    .Lnrev$2F2_α_292_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lnrev$2F2_α_292_75
                        cmp              al, 104;                             je    .Lnrev$2F2_α_292_75
                        cmp              al, 72;                              jne   .Lnrev$2F2_α_292_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lnrev$2F2_α_292_75
                                                                              jmp   .Lnrev$2F2_α_292_72
.Lnrev$2F2_α_292_75:    mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lnrev$2F2_α_292_76
                        cmp              al, 104;                             je    .Lnrev$2F2_α_292_76
                        cmp              al, 72;                              jne   .Lnrev$2F2_α_292_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lnrev$2F2_α_292_76
                                                                              jmp   .Lnrev$2F2_α_292_72
.Lnrev$2F2_α_292_76:    lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lnrev$2F2_α_292_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lnrev$2F2_α_292_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lnrev$2F2_α_292_77
.Lnrev$2F2_α_292_80:    lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lnrev$2F2_α_292_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lnrev$2F2_α_292_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lnrev$2F2_α_292_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lnrev$2F2_α_292_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lnrev$2F2_α_292_72
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
                        lea              r9, [rsp + 608]
.Lnrev$2F2_α_292_81:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lnrev$2F2_α_292_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_82
                        cmp              esi, 1;                              jne   .Lnrev$2F2_α_292_83
                        mov              r9, rax;                             jmp   .Lnrev$2F2_α_292_81
.Lnrev$2F2_α_292_83:    cmp              esi, 2;                              jne   .Lnrev$2F2_α_292_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_82
                        mov              r9, rax;                             jmp   .Lnrev$2F2_α_292_81
.Lnrev$2F2_α_292_84:    cmp              al, 72;                              jne   .Lnrev$2F2_α_292_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_82
                        cmp              rax, r9;                             je    .Lnrev$2F2_α_292_82
                        mov              r9, rax;                             jmp   .Lnrev$2F2_α_292_81
.Lnrev$2F2_α_292_82:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lnrev$2F2_α_292_85
                        cmp              al, 104;                             je    .Lnrev$2F2_α_292_85
                        cmp              al, 72;                              jne   .Lnrev$2F2_α_292_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lnrev$2F2_α_292_85
                                                                              jmp   .Lnrev$2F2_α_292_86
.Lnrev$2F2_α_292_85:    mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lnrev$2F2_α_292_87
.Lnrev$2F2_α_292_86:    mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lnrev$2F2_α_292_87:    lea              rcx, [rsp + 624]
.Lnrev$2F2_α_292_88:    mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lnrev$2F2_α_292_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_89
                        cmp              esi, 1;                              jne   .Lnrev$2F2_α_292_90
                        mov              rcx, rax;                            jmp   .Lnrev$2F2_α_292_88
.Lnrev$2F2_α_292_90:    cmp              esi, 2;                              jne   .Lnrev$2F2_α_292_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_89
                        mov              rcx, rax;                            jmp   .Lnrev$2F2_α_292_88
.Lnrev$2F2_α_292_91:    cmp              al, 72;                              jne   .Lnrev$2F2_α_292_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_292_89
                        cmp              rax, rcx;                            je    .Lnrev$2F2_α_292_89
                        mov              rcx, rax;                            jmp   .Lnrev$2F2_α_292_88
.Lnrev$2F2_α_292_89:    mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lnrev$2F2_α_292_92
                        cmp              al, 104;                             je    .Lnrev$2F2_α_292_92
                        cmp              al, 72;                              jne   .Lnrev$2F2_α_292_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lnrev$2F2_α_292_92
                                                                              jmp   .Lnrev$2F2_α_292_93
.Lnrev$2F2_α_292_92:    mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lnrev$2F2_α_292_94
.Lnrev$2F2_α_292_93:    mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lnrev$2F2_α_292_94:    lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lnrev$2F2_α_292_77
.Lnrev$2F2_α_292_73:    mov              eax, 104
                        mov              edx, 0;                              jmp   .Lnrev$2F2_α_292_77
.Lnrev$2F2_α_292_72:    mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnrev$2F2_α_292_77:    mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n263_call_prolog_α
                                                                              jmp   n249_var_ref_α
n248_call_prolog_β:     mov              r11, 110;                            jmp   n263_call_prolog_α
                        .size            n248_call_prolog_bx, .-n248_call_prolog_bx
                        .type            n249_var_ref_bx, @function
n249_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n250_var_ref_α
                        .size            n249_var_ref_bx, .-n249_var_ref_bx
                        .type            n250_var_ref_bx, @function
n250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n251_call_prolog_α
                        .size            n250_var_ref_bx, .-n250_var_ref_bx
                        .type            n251_call_prolog_bx, @function
n251_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_call_prolog_α:     mov              r11, 113
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        lea              r8, [rsp + 496]
.Lnrev$2F2_α_297_40:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lnrev$2F2_α_297_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_297_41
                        cmp              esi, 1;                              jne   .Lnrev$2F2_α_297_55
                        mov              r8, rax;                             jmp   .Lnrev$2F2_α_297_40
.Lnrev$2F2_α_297_55:    cmp              esi, 2;                              jne   .Lnrev$2F2_α_297_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnrev$2F2_α_297_41
                        mov              r8, rax;                             jmp   .Lnrev$2F2_α_297_40
.Lnrev$2F2_α_297_56:    cmp              al, 72;                              jne   .Lnrev$2F2_α_297_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_297_41
                        cmp              rax, r8;                             je    .Lnrev$2F2_α_297_41
                        mov              r8, rax;                             jmp   .Lnrev$2F2_α_297_40
.Lnrev$2F2_α_297_41:    lea              r9, [rsp + 512]
.Lnrev$2F2_α_297_42:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lnrev$2F2_α_297_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_297_43
                        cmp              esi, 1;                              jne   .Lnrev$2F2_α_297_57
                        mov              r9, rax;                             jmp   .Lnrev$2F2_α_297_42
.Lnrev$2F2_α_297_57:    cmp              esi, 2;                              jne   .Lnrev$2F2_α_297_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnrev$2F2_α_297_43
                        mov              r9, rax;                             jmp   .Lnrev$2F2_α_297_42
.Lnrev$2F2_α_297_58:    cmp              al, 72;                              jne   .Lnrev$2F2_α_297_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lnrev$2F2_α_297_43
                        cmp              rax, r9;                             je    .Lnrev$2F2_α_297_43
                        mov              r9, rax;                             jmp   .Lnrev$2F2_α_297_42
.Lnrev$2F2_α_297_43:    cmp              r8, r9;                              je    .Lnrev$2F2_α_297_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lnrev$2F2_α_297_44
                        cmp              al, 104;                             je    .Lnrev$2F2_α_297_44
                        cmp              al, 72;                              jne   .Lnrev$2F2_α_297_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lnrev$2F2_α_297_44
                                                                              jmp   .Lnrev$2F2_α_297_45
.Lnrev$2F2_α_297_44:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lnrev$2F2_α_297_53
                        cmp              al, 104;                             je    .Lnrev$2F2_α_297_53
                        cmp              al, 72;                              jne   .Lnrev$2F2_α_297_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lnrev$2F2_α_297_53
                                                                              jmp   .Lnrev$2F2_α_297_46
.Lnrev$2F2_α_297_46:    lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lnrev$2F2_α_297_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lnrev$2F2_α_297_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lnrev$2F2_α_297_51
.Lnrev$2F2_α_297_45:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lnrev$2F2_α_297_47
                        cmp              al, 104;                             je    .Lnrev$2F2_α_297_47
                        cmp              al, 72;                              jne   .Lnrev$2F2_α_297_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lnrev$2F2_α_297_47
                                                                              jmp   .Lnrev$2F2_α_297_48
.Lnrev$2F2_α_297_47:    lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lnrev$2F2_α_297_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lnrev$2F2_α_297_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lnrev$2F2_α_297_51
.Lnrev$2F2_α_297_48:    mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lnrev$2F2_α_297_49
                        cmp              dl, 80;                              je    .Lnrev$2F2_α_297_53
                                                                              jmp   .Lnrev$2F2_α_297_52
.Lnrev$2F2_α_297_49:    cmp              dl, 80;                              je    .Lnrev$2F2_α_297_52
                        cmp              cl, 5;                               je    .Lnrev$2F2_α_297_53
                        cmp              dl, 5;                               je    .Lnrev$2F2_α_297_53
                        cmp              cl, 3;                               jne   .Lnrev$2F2_α_297_50
                        cmp              dl, 3;                               jne   .Lnrev$2F2_α_297_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lnrev$2F2_α_297_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lnrev$2F2_α_297_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lnrev$2F2_α_297_51
                                                                              jmp   .Lnrev$2F2_α_297_52
.Lnrev$2F2_α_297_50:    mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lnrev$2F2_α_297_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lnrev$2F2_α_297_53
.Lnrev$2F2_α_297_51:    mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lnrev$2F2_α_297_54
.Lnrev$2F2_α_297_52:    mov              eax, 104
                        mov              edx, 0;                              jmp   .Lnrev$2F2_α_297_54
.Lnrev$2F2_α_297_53:    mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnrev$2F2_α_297_54:    mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n263_call_prolog_α
                                                                              jmp   n252_var_ref_α
n251_call_prolog_β:     mov              r11, 113;                            jmp   n263_call_prolog_α
                        .size            n251_call_prolog_bx, .-n251_call_prolog_bx
                        .type            n252_var_ref_bx, @function
n252_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n253_var_ref_α
                        .size            n252_var_ref_bx, .-n252_var_ref_bx
                        .type            n253_var_ref_bx, @function
n253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n254_call_proc_staged_α
                        .size            n253_var_ref_bx, .-n253_var_ref_bx
                        .type            n254_call_proc_staged_bx, @function
n254_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_call_proc_staged_α:
                        mov              r11, 116
                        mov              qword ptr [rsp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lnrev$2F2_α_303_200
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lnrev$2F2_α_303_201
.Lnrev$2F2_α_303_200:   mov              edi, 0
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnrev$2F2_α_303_201:   lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lnrev$2F2_α_303_202
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lnrev$2F2_α_303_203
.Lnrev$2F2_α_303_202:   mov              edi, 1
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnrev$2F2_α_303_203:   sub              rsp, 8
                        lea              rax, [rip + .Lnrev$2F2_α_303_7]      # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lnrev$2F2_α_303_1
                        lea              rcx, [rip + .Lnrev$2F2_α_303_4]
                        push             rcx
                        lea              rcx, [rip + .Lnrev$2F2_α_303_3]
                        push             rcx
                        lea              rdx, [rip + .Lnrev$2F2_α_303_4];     jmp   rax
.Lnrev$2F2_α_303_3:     add              rsp, 16
                        mov              qword ptr [rsp + 424], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 416]
                        test             rax, rax;                            jne   .Lnrev$2F2_α_303_5
                        mov              qword ptr [rsp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lnrev$2F2_α_303_2
.Lnrev$2F2_α_303_5:     call             rt_gen_spine_pass_γ@PLT;             jmp   .Lnrev$2F2_α_303_2
.Lnrev$2F2_α_303_4:     add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 416]
                        test             rax, rax;                            jne   .Lnrev$2F2_α_303_6
                        mov              qword ptr [rsp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lnrev$2F2_α_303_2
.Lnrev$2F2_α_303_6:     call             rt_gen_spine_pass_ω@PLT;             jmp   .Lnrev$2F2_α_303_2
.Lnrev$2F2_α_303_1:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnrev$2F2_α_303_2:     mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lnrev$2F2_α_303_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
.Lnrev$2F2_α_303_29:    mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n263_call_prolog_α
                                                                              jmp   n255_var_ref_α
n254_call_proc_staged_β:
                        mov              r11, 116
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 416], 0
                        lea              rdi, [rsp + 432]
                        lea              rsi, [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n263_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              ecx, 48
                        mov              r8d, 1104
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
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
                        test             rax, rax;                            je    n263_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lnrev$2F2_α_303_7]
                        push             r8
                        lea              rcx, [rip + .Lnrev$2F2_α_303_4]      # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lnrev$2F2_α_303_3]
                        push             rcx
                        lea              rdx, [rip + .Lnrev$2F2_α_303_4];     jmp   rax
.Lnrev$2F2_α_303_7:     add              rsp, 16
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n263_call_prolog_α
                                                                              jmp   n255_var_ref_α
.Lnrev$2F2_β_303_0:     .quad            .Lnrev$2F2_β_303_0_s
.Lnrev$2F2_β_303_0_s:   .string          "nrev/2"
                        .size            n254_call_proc_staged_bx, .-n254_call_proc_staged_bx
                        .type            n255_var_ref_bx, @function
n255_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n256_lit_string_α
                        .size            n255_var_ref_bx, .-n255_var_ref_bx
                        .type            n256_lit_string_bx, @function
n256_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 1
                        mov              rax, qword ptr [rip + .Lnrev$2F2_α_306_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n257_var_ref_α
.Lnrev$2F2_α_306_0:     .quad            .Lnrev$2F2_α_306_0_s
.Lnrev$2F2_α_306_0_s:   .string          "."
                        .size            n256_lit_string_bx, .-n256_lit_string_bx
                        .type            n257_var_ref_bx, @function
n257_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n258_lit_string_α
                        .size            n257_var_ref_bx, .-n257_var_ref_bx
                        .type            n258_lit_string_bx, @function
n258_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lnrev$2F2_α_309_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n259_call_prolog_α
.Lnrev$2F2_α_309_0:     .quad            .Lnrev$2F2_α_309_0_s
.Lnrev$2F2_α_309_0_s:   .string          "[]"
                        .size            n258_lit_string_bx, .-n258_lit_string_bx
                        .type            n259_call_prolog_bx, @function
n259_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_call_prolog_α:     mov              r11, 121
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 280], rax
                        lea              rdi, [rsp + 272]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n263_call_prolog_α
                                                                              jmp   n260_var_ref_α
n259_call_prolog_β:     mov              r11, 121;                            jmp   n263_call_prolog_α
                        .size            n259_call_prolog_bx, .-n259_call_prolog_bx
                        .type            n260_var_ref_bx, @function
n260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n261_call_proc_staged_α
                        .size            n260_var_ref_bx, .-n260_var_ref_bx
                        .type            n261_call_proc_staged_bx, @function
n261_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_call_proc_staged_α:
                        mov              r11, 123
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lnrev$2F2_α_314_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lnrev$2F2_α_314_201
.Lnrev$2F2_α_314_200:   mov              edi, 0
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
.Lnrev$2F2_α_314_201:   lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lnrev$2F2_α_314_202
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lnrev$2F2_α_314_203
.Lnrev$2F2_α_314_202:   mov              edi, 1
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnrev$2F2_α_314_203:   lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lnrev$2F2_α_314_204
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lnrev$2F2_α_314_205
.Lnrev$2F2_α_314_204:   mov              edi, 2
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
.Lnrev$2F2_α_314_205:   sub              rsp, 8
                        lea              rax, [rip + .Lnrev$2F2_α_314_7]      # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 6
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lnrev$2F2_α_314_1
                        lea              rcx, [rip + .Lnrev$2F2_α_314_4]
                        push             rcx
                        lea              rcx, [rip + .Lnrev$2F2_α_314_3]
                        push             rcx
                        lea              rdx, [rip + .Lnrev$2F2_α_314_4];     jmp   rax
.Lnrev$2F2_α_314_3:     add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lnrev$2F2_α_314_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lnrev$2F2_α_314_2
.Lnrev$2F2_α_314_5:     call             rt_gen_spine_pass_γ@PLT;             jmp   .Lnrev$2F2_α_314_2
.Lnrev$2F2_α_314_4:     add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lnrev$2F2_α_314_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lnrev$2F2_α_314_2
.Lnrev$2F2_α_314_6:     call             rt_gen_spine_pass_ω@PLT;             jmp   .Lnrev$2F2_α_314_2
.Lnrev$2F2_α_314_1:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnrev$2F2_α_314_2:     mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lnrev$2F2_α_314_29
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
.Lnrev$2F2_α_314_29:    mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n254_call_proc_staged_β
                                                                              jmp   n262_suspend_α
n261_call_proc_staged_β:
                        mov              r11, 123
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 176], 0
                        lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n254_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 64
                        mov              r8d, 1088
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
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
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n254_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lnrev$2F2_α_314_7]
                        push             r8
                        lea              rcx, [rip + .Lnrev$2F2_α_314_4]      # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lnrev$2F2_α_314_3]
                        push             rcx
                        lea              rdx, [rip + .Lnrev$2F2_α_314_4];     jmp   rax
.Lnrev$2F2_α_314_7:     add              rsp, 16
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n254_call_proc_staged_β
                                                                              jmp   n262_suspend_α
.Lnrev$2F2_β_314_0:     .quad            .Lnrev$2F2_β_314_0_s
.Lnrev$2F2_β_314_0_s:   .string          "app/3"
                        .size            n261_call_proc_staged_bx, .-n261_call_proc_staged_bx
                        .type            n262_suspend_bx, @function
n262_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_suspend_α:         mov              r11, 124
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lnrev$2F2_α_316_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1104];         jmp   rax
.Lnrev$2F2_α_316_61:    mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n262_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n262_suspend_β]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   nrev$2F2_γ
n262_suspend_β:         mov              r11, 124;                            jmp   n261_call_proc_staged_β
                        .size            n262_suspend_bx, .-n262_suspend_bx
                        .type            n263_call_prolog_bx, @function
n263_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_call_prolog_α:     mov              r11, 125
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
                        cmp              al, 104;                             je    nrev$2F2_ω
                                                                              jmp   nrev$2F2_ω
n263_call_prolog_β:     mov              r11, 125;                            jmp   nrev$2F2_ω
                        .size            n263_call_prolog_bx, .-n263_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
nrev$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
nrev$2F2_β:
                                                                              jmp   n239_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
nrev$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lnrev$2F2_α_317_50
                        mov              qword ptr [rsp + 1104], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1104];         jmp   rax
.Lnrev$2F2_α_317_50:    mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1208]
                        add              rsp, 1232;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
nrev$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1216]
                        add              rsp, 1232;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__data$2F2:
                        sub              rsp, 1200
                        mov              qword ptr [rsp + 1176], rcx
                        mov              qword ptr [rsp + 1184], rdx
                        mov              qword ptr [rsp + 1192], rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1168
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
data$2F2_α_body:
                        lea              rax, [rip + n329_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        .type            n318_call_prolog_bx, @function
n318_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_call_prolog_α:     mov              r11, 126
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Ldata$2F2_α_355_102
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Ldata$2F2_α_355_101
.Ldata$2F2_α_355_102:   lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Ldata$2F2_α_355_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Ldata$2F2_α_355_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Ldata$2F2_α_355_101
.Ldata$2F2_α_355_100:   lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldata$2F2_α_355_101:   mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    data$2F2_ω
                                                                              jmp   n319_var_ref_α
n318_call_prolog_β:     mov              r11, 126;                            jmp   data$2F2_ω
                        .size            n318_call_prolog_bx, .-n318_call_prolog_bx
                        .type            n319_var_ref_bx, @function
n319_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n320_lit_integer_α
                        .size            n319_var_ref_bx, .-n319_var_ref_bx
                        .type            n320_lit_integer_bx, @function
n320_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:     mov              r11, 128
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Ldata$2F2_α_358_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n321_lit_string_α
.Ldata$2F2_α_358_0:     .quad            2
                        .size            n320_lit_integer_bx, .-n320_lit_integer_bx
                        .type            n321_lit_string_bx, @function
n321_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 2
                        mov              rax, qword ptr [rip + .Ldata$2F2_α_359_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n322_call_prolog_α
.Ldata$2F2_α_359_0:     .quad            .Ldata$2F2_α_359_0_s
.Ldata$2F2_α_359_0_s:   .string          "[]"
                        .size            n321_lit_string_bx, .-n321_lit_string_bx
                        .type            n322_call_prolog_bx, @function
n322_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_call_prolog_α:     mov              r11, 130
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        lea              r8, [rsp + 992]
.Ldata$2F2_α_360_110:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldata$2F2_α_360_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_360_111
                        cmp              esi, 1;                              jne   .Ldata$2F2_α_360_112
                        mov              r8, rax;                             jmp   .Ldata$2F2_α_360_110
.Ldata$2F2_α_360_112:   cmp              esi, 2;                              jne   .Ldata$2F2_α_360_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldata$2F2_α_360_111
                        mov              r8, rax;                             jmp   .Ldata$2F2_α_360_110
.Ldata$2F2_α_360_113:   cmp              al, 72;                              jne   .Ldata$2F2_α_360_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_360_111
                        cmp              rax, r8;                             je    .Ldata$2F2_α_360_111
                        mov              r8, rax;                             jmp   .Ldata$2F2_α_360_110
.Ldata$2F2_α_360_111:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldata$2F2_α_360_114
                        cmp              al, 104;                             je    .Ldata$2F2_α_360_114
                        cmp              al, 72;                              jne   .Ldata$2F2_α_360_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldata$2F2_α_360_114
                                                                              jmp   .Ldata$2F2_α_360_118
.Ldata$2F2_α_360_118:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Ldata$2F2_α_360_115
                        cmp              al, 3;                               je    .Ldata$2F2_α_360_114
                        cmp              al, 2;                               jne   .Ldata$2F2_α_360_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldata$2F2_α_360_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Ldata$2F2_α_360_114
                                                                              jmp   .Ldata$2F2_α_360_116
.Ldata$2F2_α_360_114:   mov              eax, 3
                        mov              edx, 1;                              jmp   .Ldata$2F2_α_360_117
.Ldata$2F2_α_360_115:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldata$2F2_α_360_117
.Ldata$2F2_α_360_116:   mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldata$2F2_α_360_117:   mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n331_var_ref_α
                                                                              jmp   n323_var_ref_α
n322_call_prolog_β:     mov              r11, 130;                            jmp   n331_var_ref_α
                        .size            n322_call_prolog_bx, .-n322_call_prolog_bx
                        .type            n323_var_ref_bx, @function
n323_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n324_lit_string_α
                        .size            n323_var_ref_bx, .-n323_var_ref_bx
                        .type            n324_lit_string_bx, @function
n324_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Ldata$2F2_α_363_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n325_call_prolog_α
.Ldata$2F2_α_363_0:     .quad            .Ldata$2F2_α_363_0_s
.Ldata$2F2_α_363_0_s:   .string          "[]"
                        .size            n324_lit_string_bx, .-n324_lit_string_bx
                        .type            n325_call_prolog_bx, @function
n325_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_call_prolog_α:     mov              r11, 133
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        mov              rsi, qword ptr [rip + .Ldata$2F2_α_364_2]
                                                                              jmp   .Ldata$2F2_α_364_3
.Ldata$2F2_α_364_2:     .quad            .Ldata$2F2_α_364_2_s
.Ldata$2F2_α_364_2_s:   .string          "[]"
.Ldata$2F2_α_364_3:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n330_call_prolog_α
                                                                              jmp   n326_var_ref_α
n325_call_prolog_β:     mov              r11, 133;                            jmp   n330_call_prolog_α
                        .size            n325_call_prolog_bx, .-n325_call_prolog_bx
                        .type            n326_var_ref_bx, @function
n326_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n327_lit_integer_α
                        .size            n326_var_ref_bx, .-n326_var_ref_bx
                        .type            n327_lit_integer_bx, @function
n327_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_integer_α:     mov              r11, 135
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Ldata$2F2_α_367_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n328_call_prolog_α
.Ldata$2F2_α_367_0:     .quad            0
                        .size            n327_lit_integer_bx, .-n327_lit_integer_bx
                        .type            n328_call_prolog_bx, @function
n328_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_call_prolog_α:     mov              r11, 136
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n330_call_prolog_α
                                                                              jmp   n329_suspend_α
n328_call_prolog_β:     mov              r11, 136;                            jmp   n330_call_prolog_α
                        .size            n328_call_prolog_bx, .-n328_call_prolog_bx
                        .type            n329_suspend_bx, @function
n329_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_suspend_α:         mov              r11, 137
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldata$2F2_α_370_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Ldata$2F2_α_370_61:    mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n329_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n329_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   data$2F2_γ
n329_suspend_β:         mov              r11, 137;                            jmp   n330_call_prolog_α
                        .size            n329_suspend_bx, .-n329_suspend_bx
                        .type            n330_call_prolog_bx, @function
n330_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_call_prolog_α:     mov              r11, 138
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    data$2F2_ω
                                                                              jmp   n331_var_ref_α
n330_call_prolog_β:     mov              r11, 138;                            jmp   data$2F2_ω
                        .size            n330_call_prolog_bx, .-n330_call_prolog_bx
                        .type            n331_var_ref_bx, @function
n331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n332_lit_integer_α
                        .size            n331_var_ref_bx, .-n331_var_ref_bx
                        .type            n332_lit_integer_bx, @function
n332_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_integer_α:     mov              r11, 140
                        mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Ldata$2F2_α_374_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n333_lit_integer_α
.Ldata$2F2_α_374_0:     .quad            3
                        .size            n332_lit_integer_bx, .-n332_lit_integer_bx
                        .type            n333_lit_integer_bx, @function
n333_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Ldata$2F2_α_375_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n334_call_prolog_α
.Ldata$2F2_α_375_0:     .quad            0
                        .size            n333_lit_integer_bx, .-n333_lit_integer_bx
                        .type            n334_call_prolog_bx, @function
n334_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_call_prolog_α:     mov              r11, 142
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        lea              r8, [rsp + 672]
.Ldata$2F2_α_376_110:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldata$2F2_α_376_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_376_111
                        cmp              esi, 1;                              jne   .Ldata$2F2_α_376_112
                        mov              r8, rax;                             jmp   .Ldata$2F2_α_376_110
.Ldata$2F2_α_376_112:   cmp              esi, 2;                              jne   .Ldata$2F2_α_376_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldata$2F2_α_376_111
                        mov              r8, rax;                             jmp   .Ldata$2F2_α_376_110
.Ldata$2F2_α_376_113:   cmp              al, 72;                              jne   .Ldata$2F2_α_376_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_376_111
                        cmp              rax, r8;                             je    .Ldata$2F2_α_376_111
                        mov              r8, rax;                             jmp   .Ldata$2F2_α_376_110
.Ldata$2F2_α_376_111:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldata$2F2_α_376_114
                        cmp              al, 104;                             je    .Ldata$2F2_α_376_114
                        cmp              al, 72;                              jne   .Ldata$2F2_α_376_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldata$2F2_α_376_114
                                                                              jmp   .Ldata$2F2_α_376_118
.Ldata$2F2_α_376_118:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Ldata$2F2_α_376_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Ldata$2F2_α_376_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Ldata$2F2_α_376_115
                                                                              jmp   .Ldata$2F2_α_376_114
.Ldata$2F2_α_376_119:   cmp              al, 3;                               jne   .Ldata$2F2_α_376_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldata$2F2_α_376_114
                                                                              jmp   .Ldata$2F2_α_376_115
.Ldata$2F2_α_376_120:   cmp              al, 2;                               jne   .Ldata$2F2_α_376_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Ldata$2F2_α_376_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Ldata$2F2_α_376_114
                                                                              jmp   .Ldata$2F2_α_376_115
.Ldata$2F2_α_376_114:   mov              eax, 3
                        mov              edx, 1;                              jmp   .Ldata$2F2_α_376_117
.Ldata$2F2_α_376_115:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldata$2F2_α_376_117
.Ldata$2F2_α_376_116:   mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldata$2F2_α_376_117:   mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n354_call_prolog_α
                                                                              jmp   n335_var_ref_α
n334_call_prolog_β:     mov              r11, 142;                            jmp   n354_call_prolog_α
                        .size            n334_call_prolog_bx, .-n334_call_prolog_bx
                        .type            n335_var_ref_bx, @function
n335_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n336_lit_string_α
                        .size            n335_var_ref_bx, .-n335_var_ref_bx
                        .type            n336_lit_string_bx, @function
n336_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Ldata$2F2_α_379_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n337_var_ref_α
.Ldata$2F2_α_379_0:     .quad            .Ldata$2F2_α_379_0_s
.Ldata$2F2_α_379_0_s:   .string          "a"
                        .size            n336_lit_string_bx, .-n336_lit_string_bx
                        .type            n337_var_ref_bx, @function
n337_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n338_call_prolog_α
                        .size            n337_var_ref_bx, .-n337_var_ref_bx
                        .type            n338_call_prolog_bx, @function
n338_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_call_prolog_α:     mov              r11, 146
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        lea              r8, [rsp + 576]
.Ldata$2F2_α_382_60:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldata$2F2_α_382_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_61
                        cmp              esi, 1;                              jne   .Ldata$2F2_α_382_62
                        mov              r8, rax;                             jmp   .Ldata$2F2_α_382_60
.Ldata$2F2_α_382_62:    cmp              esi, 2;                              jne   .Ldata$2F2_α_382_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_61
                        mov              r8, rax;                             jmp   .Ldata$2F2_α_382_60
.Ldata$2F2_α_382_63:    cmp              al, 72;                              jne   .Ldata$2F2_α_382_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_61
                        cmp              rax, r8;                             je    .Ldata$2F2_α_382_61
                        mov              r8, rax;                             jmp   .Ldata$2F2_α_382_60
.Ldata$2F2_α_382_61:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldata$2F2_α_382_80
                        cmp              al, 104;                             je    .Ldata$2F2_α_382_80
                        cmp              al, 72;                              jne   .Ldata$2F2_α_382_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldata$2F2_α_382_80
                                                                              jmp   .Ldata$2F2_α_382_74
.Ldata$2F2_α_382_74:    mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Ldata$2F2_α_382_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Ldata$2F2_α_382_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Ldata$2F2_α_382_73
                        lea              r9, [rsp + 592]
.Ldata$2F2_α_382_64:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Ldata$2F2_α_382_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_65
                        cmp              esi, 1;                              jne   .Ldata$2F2_α_382_66
                        mov              r9, rax;                             jmp   .Ldata$2F2_α_382_64
.Ldata$2F2_α_382_66:    cmp              esi, 2;                              jne   .Ldata$2F2_α_382_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_65
                        mov              r9, rax;                             jmp   .Ldata$2F2_α_382_64
.Ldata$2F2_α_382_67:    cmp              al, 72;                              jne   .Ldata$2F2_α_382_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_65
                        cmp              rax, r9;                             je    .Ldata$2F2_α_382_65
                        mov              r9, rax;                             jmp   .Ldata$2F2_α_382_64
.Ldata$2F2_α_382_65:    lea              rcx, [rsp + 608]
.Ldata$2F2_α_382_68:    mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Ldata$2F2_α_382_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_69
                        cmp              esi, 1;                              jne   .Ldata$2F2_α_382_70
                        mov              rcx, rax;                            jmp   .Ldata$2F2_α_382_68
.Ldata$2F2_α_382_70:    cmp              esi, 2;                              jne   .Ldata$2F2_α_382_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_69
                        mov              rcx, rax;                            jmp   .Ldata$2F2_α_382_68
.Ldata$2F2_α_382_71:    cmp              al, 72;                              jne   .Ldata$2F2_α_382_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_69
                        cmp              rax, rcx;                            je    .Ldata$2F2_α_382_69
                        mov              rcx, rax;                            jmp   .Ldata$2F2_α_382_68
.Ldata$2F2_α_382_69:    cmp              r9, rcx;                             je    .Ldata$2F2_α_382_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Ldata$2F2_α_382_75
                        cmp              al, 104;                             je    .Ldata$2F2_α_382_75
                        cmp              al, 72;                              jne   .Ldata$2F2_α_382_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Ldata$2F2_α_382_75
                                                                              jmp   .Ldata$2F2_α_382_72
.Ldata$2F2_α_382_75:    mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Ldata$2F2_α_382_76
                        cmp              al, 104;                             je    .Ldata$2F2_α_382_76
                        cmp              al, 72;                              jne   .Ldata$2F2_α_382_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Ldata$2F2_α_382_76
                                                                              jmp   .Ldata$2F2_α_382_72
.Ldata$2F2_α_382_76:    lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Ldata$2F2_α_382_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Ldata$2F2_α_382_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Ldata$2F2_α_382_77
.Ldata$2F2_α_382_80:    lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Ldata$2F2_α_382_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Ldata$2F2_α_382_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Ldata$2F2_α_382_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Ldata$2F2_α_382_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Ldata$2F2_α_382_72
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
                        lea              r9, [rsp + 592]
.Ldata$2F2_α_382_81:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Ldata$2F2_α_382_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_82
                        cmp              esi, 1;                              jne   .Ldata$2F2_α_382_83
                        mov              r9, rax;                             jmp   .Ldata$2F2_α_382_81
.Ldata$2F2_α_382_83:    cmp              esi, 2;                              jne   .Ldata$2F2_α_382_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_82
                        mov              r9, rax;                             jmp   .Ldata$2F2_α_382_81
.Ldata$2F2_α_382_84:    cmp              al, 72;                              jne   .Ldata$2F2_α_382_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_82
                        cmp              rax, r9;                             je    .Ldata$2F2_α_382_82
                        mov              r9, rax;                             jmp   .Ldata$2F2_α_382_81
.Ldata$2F2_α_382_82:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Ldata$2F2_α_382_85
                        cmp              al, 104;                             je    .Ldata$2F2_α_382_85
                        cmp              al, 72;                              jne   .Ldata$2F2_α_382_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Ldata$2F2_α_382_85
                                                                              jmp   .Ldata$2F2_α_382_86
.Ldata$2F2_α_382_85:    mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Ldata$2F2_α_382_87
.Ldata$2F2_α_382_86:    mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Ldata$2F2_α_382_87:    lea              rcx, [rsp + 608]
.Ldata$2F2_α_382_88:    mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Ldata$2F2_α_382_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_89
                        cmp              esi, 1;                              jne   .Ldata$2F2_α_382_90
                        mov              rcx, rax;                            jmp   .Ldata$2F2_α_382_88
.Ldata$2F2_α_382_90:    cmp              esi, 2;                              jne   .Ldata$2F2_α_382_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_89
                        mov              rcx, rax;                            jmp   .Ldata$2F2_α_382_88
.Ldata$2F2_α_382_91:    cmp              al, 72;                              jne   .Ldata$2F2_α_382_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_382_89
                        cmp              rax, rcx;                            je    .Ldata$2F2_α_382_89
                        mov              rcx, rax;                            jmp   .Ldata$2F2_α_382_88
.Ldata$2F2_α_382_89:    mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Ldata$2F2_α_382_92
                        cmp              al, 104;                             je    .Ldata$2F2_α_382_92
                        cmp              al, 72;                              jne   .Ldata$2F2_α_382_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Ldata$2F2_α_382_92
                                                                              jmp   .Ldata$2F2_α_382_93
.Ldata$2F2_α_382_92:    mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Ldata$2F2_α_382_94
.Ldata$2F2_α_382_93:    mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Ldata$2F2_α_382_94:    lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Ldata$2F2_α_382_77
.Ldata$2F2_α_382_73:    mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldata$2F2_α_382_77
.Ldata$2F2_α_382_72:    mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldata$2F2_α_382_77:    mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n354_call_prolog_α
                                                                              jmp   n339_var_ref_α
n338_call_prolog_β:     mov              r11, 146;                            jmp   n354_call_prolog_α
                        .size            n338_call_prolog_bx, .-n338_call_prolog_bx
                        .type            n339_var_ref_bx, @function
n339_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n340_var_ref_α
                        .size            n339_var_ref_bx, .-n339_var_ref_bx
                        .type            n340_var_ref_bx, @function
n340_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n341_call_prolog_α
                        .size            n340_var_ref_bx, .-n340_var_ref_bx
                        .type            n341_call_prolog_bx, @function
n341_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_call_prolog_α:     mov              r11, 149
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
.Ldata$2F2_α_387_40:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldata$2F2_α_387_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_387_41
                        cmp              esi, 1;                              jne   .Ldata$2F2_α_387_55
                        mov              r8, rax;                             jmp   .Ldata$2F2_α_387_40
.Ldata$2F2_α_387_55:    cmp              esi, 2;                              jne   .Ldata$2F2_α_387_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldata$2F2_α_387_41
                        mov              r8, rax;                             jmp   .Ldata$2F2_α_387_40
.Ldata$2F2_α_387_56:    cmp              al, 72;                              jne   .Ldata$2F2_α_387_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_387_41
                        cmp              rax, r8;                             je    .Ldata$2F2_α_387_41
                        mov              r8, rax;                             jmp   .Ldata$2F2_α_387_40
.Ldata$2F2_α_387_41:    lea              r9, [rsp + 496]
.Ldata$2F2_α_387_42:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Ldata$2F2_α_387_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_387_43
                        cmp              esi, 1;                              jne   .Ldata$2F2_α_387_57
                        mov              r9, rax;                             jmp   .Ldata$2F2_α_387_42
.Ldata$2F2_α_387_57:    cmp              esi, 2;                              jne   .Ldata$2F2_α_387_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldata$2F2_α_387_43
                        mov              r9, rax;                             jmp   .Ldata$2F2_α_387_42
.Ldata$2F2_α_387_58:    cmp              al, 72;                              jne   .Ldata$2F2_α_387_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Ldata$2F2_α_387_43
                        cmp              rax, r9;                             je    .Ldata$2F2_α_387_43
                        mov              r9, rax;                             jmp   .Ldata$2F2_α_387_42
.Ldata$2F2_α_387_43:    cmp              r8, r9;                              je    .Ldata$2F2_α_387_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldata$2F2_α_387_44
                        cmp              al, 104;                             je    .Ldata$2F2_α_387_44
                        cmp              al, 72;                              jne   .Ldata$2F2_α_387_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldata$2F2_α_387_44
                                                                              jmp   .Ldata$2F2_α_387_45
.Ldata$2F2_α_387_44:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Ldata$2F2_α_387_53
                        cmp              al, 104;                             je    .Ldata$2F2_α_387_53
                        cmp              al, 72;                              jne   .Ldata$2F2_α_387_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Ldata$2F2_α_387_53
                                                                              jmp   .Ldata$2F2_α_387_46
.Ldata$2F2_α_387_46:    lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Ldata$2F2_α_387_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Ldata$2F2_α_387_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Ldata$2F2_α_387_51
.Ldata$2F2_α_387_45:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Ldata$2F2_α_387_47
                        cmp              al, 104;                             je    .Ldata$2F2_α_387_47
                        cmp              al, 72;                              jne   .Ldata$2F2_α_387_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Ldata$2F2_α_387_47
                                                                              jmp   .Ldata$2F2_α_387_48
.Ldata$2F2_α_387_47:    lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Ldata$2F2_α_387_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Ldata$2F2_α_387_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Ldata$2F2_α_387_51
.Ldata$2F2_α_387_48:    mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Ldata$2F2_α_387_49
                        cmp              dl, 80;                              je    .Ldata$2F2_α_387_53
                                                                              jmp   .Ldata$2F2_α_387_52
.Ldata$2F2_α_387_49:    cmp              dl, 80;                              je    .Ldata$2F2_α_387_52
                        cmp              cl, 5;                               je    .Ldata$2F2_α_387_53
                        cmp              dl, 5;                               je    .Ldata$2F2_α_387_53
                        cmp              cl, 3;                               jne   .Ldata$2F2_α_387_50
                        cmp              dl, 3;                               jne   .Ldata$2F2_α_387_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Ldata$2F2_α_387_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Ldata$2F2_α_387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Ldata$2F2_α_387_51
                                                                              jmp   .Ldata$2F2_α_387_52
.Ldata$2F2_α_387_50:    mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Ldata$2F2_α_387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Ldata$2F2_α_387_53
.Ldata$2F2_α_387_51:    mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Ldata$2F2_α_387_54
.Ldata$2F2_α_387_52:    mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldata$2F2_α_387_54
.Ldata$2F2_α_387_53:    mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldata$2F2_α_387_54:    mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n354_call_prolog_α
                                                                              jmp   n342_var_α
n341_call_prolog_β:     mov              r11, 149;                            jmp   n354_call_prolog_α
                        .size            n341_call_prolog_bx, .-n341_call_prolog_bx
                        .type            n342_var_bx, @function
n342_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:             mov              r11, 150
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 440], rax;          jmp   n343_lit_integer_α
                        .size            n342_var_bx, .-n342_var_bx
                        .type            n343_lit_integer_bx, @function
n343_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Ldata$2F2_α_390_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n344_call_prolog_α
.Ldata$2F2_α_390_0:     .quad            0
                        .size            n343_lit_integer_bx, .-n343_lit_integer_bx
                        .type            n344_call_prolog_bx, @function
n344_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_call_prolog_α:     mov              r11, 152
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n354_call_prolog_α
                                                                              jmp   n345_var_ref_α
n344_call_prolog_β:     mov              r11, 152;                            jmp   n354_call_prolog_α
                        .size            n344_call_prolog_bx, .-n344_call_prolog_bx
                        .type            n345_var_ref_bx, @function
n345_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n346_var_α
                        .size            n345_var_ref_bx, .-n345_var_ref_bx
                        .type            n346_var_bx, @function
n346_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 360], rax;          jmp   n347_lit_integer_α
                        .size            n346_var_bx, .-n346_var_bx
                        .type            n347_lit_integer_bx, @function
n347_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_integer_α:     mov              r11, 155
                        mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Ldata$2F2_α_396_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n348_call_prolog_α
.Ldata$2F2_α_396_0:     .quad            1
                        .size            n347_lit_integer_bx, .-n347_lit_integer_bx
                        .type            n348_call_prolog_bx, @function
n348_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_call_prolog_α:     mov              r11, 156
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n354_call_prolog_α
                                                                              jmp   n349_call_prolog_α
n348_call_prolog_β:     mov              r11, 156;                            jmp   n354_call_prolog_α
                        .size            n348_call_prolog_bx, .-n348_call_prolog_bx
                        .type            n349_call_prolog_bx, @function
n349_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_call_prolog_α:     mov              r11, 157
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n354_call_prolog_α
                                                                              jmp   n350_var_ref_α
n349_call_prolog_β:     mov              r11, 157;                            jmp   n354_call_prolog_α
                        .size            n349_call_prolog_bx, .-n349_call_prolog_bx
                        .type            n350_var_ref_bx, @function
n350_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n351_var_ref_α
                        .size            n350_var_ref_bx, .-n350_var_ref_bx
                        .type            n351_var_ref_bx, @function
n351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n352_call_proc_staged_α
                        .size            n351_var_ref_bx, .-n351_var_ref_bx
                        .type            n352_call_proc_staged_bx, @function
n352_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_proc_staged_α:
                        mov              r11, 160
                        mov              qword ptr [rsp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Ldata$2F2_α_404_200
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Ldata$2F2_α_404_201
.Ldata$2F2_α_404_200:   mov              edi, 0
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
.Ldata$2F2_α_404_201:   lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Ldata$2F2_α_404_202
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Ldata$2F2_α_404_203
.Ldata$2F2_α_404_202:   mov              edi, 1
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
.Ldata$2F2_α_404_203:   sub              rsp, 8
                        lea              rax, [rip + .Ldata$2F2_α_404_7]      # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Ldata$2F2_α_404_1
                        lea              rcx, [rip + .Ldata$2F2_α_404_4]
                        push             rcx
                        lea              rcx, [rip + .Ldata$2F2_α_404_3]
                        push             rcx
                        lea              rdx, [rip + .Ldata$2F2_α_404_4];     jmp   rax
.Ldata$2F2_α_404_3:     add              rsp, 16
                        mov              qword ptr [rsp + 168], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Ldata$2F2_α_404_5
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldata$2F2_α_404_2
.Ldata$2F2_α_404_5:     call             rt_gen_spine_pass_γ@PLT;             jmp   .Ldata$2F2_α_404_2
.Ldata$2F2_α_404_4:     add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Ldata$2F2_α_404_6
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldata$2F2_α_404_2
.Ldata$2F2_α_404_6:     call             rt_gen_spine_pass_ω@PLT;             jmp   .Ldata$2F2_α_404_2
.Ldata$2F2_α_404_1:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldata$2F2_α_404_2:     mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Ldata$2F2_α_404_29
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
.Ldata$2F2_α_404_29:    mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n354_call_prolog_α
                                                                              jmp   n353_suspend_α
n352_call_proc_staged_β:
                        mov              r11, 160
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
                        test             rax, rax;                            je    n354_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              ecx, 48
                        mov              r8d, 1088
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
                        mov              edi, 4
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n354_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Ldata$2F2_α_404_7]
                        push             r8
                        lea              rcx, [rip + .Ldata$2F2_α_404_4]      # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Ldata$2F2_α_404_3]
                        push             rcx
                        lea              rdx, [rip + .Ldata$2F2_α_404_4];     jmp   rax
.Ldata$2F2_α_404_7:     add              rsp, 16
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n354_call_prolog_α
                                                                              jmp   n353_suspend_α
.Ldata$2F2_β_404_0:     .quad            .Ldata$2F2_β_404_0_s
.Ldata$2F2_β_404_0_s:   .string          "data/2"
                        .size            n352_call_proc_staged_bx, .-n352_call_proc_staged_bx
                        .type            n353_suspend_bx, @function
n353_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_suspend_α:         mov              r11, 161
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldata$2F2_α_406_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Ldata$2F2_α_406_61:    mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n353_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n353_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   data$2F2_γ
n353_suspend_β:         mov              r11, 161;                            jmp   n352_call_proc_staged_β
                        .size            n353_suspend_bx, .-n353_suspend_bx
                        .type            n354_call_prolog_bx, @function
n354_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_call_prolog_α:     mov              r11, 162
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
                        cmp              al, 104;                             je    data$2F2_ω
                                                                              jmp   data$2F2_ω
n354_call_prolog_β:     mov              r11, 162;                            jmp   data$2F2_ω
                        .size            n354_call_prolog_bx, .-n354_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
data$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
data$2F2_β:
                                                                              jmp   n329_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
data$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Ldata$2F2_α_407_50
                        mov              qword ptr [rsp + 1088], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Ldata$2F2_α_407_50:    mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1176]
                        add              rsp, 1200;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
data$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1184]
                        add              rsp, 1200;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__data$2F1:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rcx
                        mov              qword ptr [rsp + 352], rdx
                        mov              qword ptr [rsp + 360], rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 336
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
data$2F1_α_body:
                        lea              rax, [rip + n415_suspend_β]
                        mov              qword ptr [rsp + 288], rax
                        .type            n408_call_prolog_bx, @function
n408_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_call_prolog_α:     mov              r11, 163
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Ldata$2F1_α_417_102
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Ldata$2F1_α_417_101
.Ldata$2F1_α_417_102:   lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Ldata$2F1_α_417_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Ldata$2F1_α_417_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Ldata$2F1_α_417_101
.Ldata$2F1_α_417_100:   lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldata$2F1_α_417_101:   mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    data$2F1_ω
                                                                              jmp   n409_var_ref_α
n408_call_prolog_β:     mov              r11, 163;                            jmp   data$2F1_ω
                        .size            n408_call_prolog_bx, .-n408_call_prolog_bx
                        .type            n409_var_ref_bx, @function
n409_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n410_var_ref_α
                        .size            n409_var_ref_bx, .-n409_var_ref_bx
                        .type            n410_var_ref_bx, @function
n410_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n411_call_prolog_α
                        .size            n410_var_ref_bx, .-n410_var_ref_bx
                        .type            n411_call_prolog_bx, @function
n411_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_call_prolog_α:     mov              r11, 166
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
.Ldata$2F1_α_422_40:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Ldata$2F1_α_422_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldata$2F1_α_422_41
                        cmp              esi, 1;                              jne   .Ldata$2F1_α_422_55
                        mov              r8, rax;                             jmp   .Ldata$2F1_α_422_40
.Ldata$2F1_α_422_55:    cmp              esi, 2;                              jne   .Ldata$2F1_α_422_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldata$2F1_α_422_41
                        mov              r8, rax;                             jmp   .Ldata$2F1_α_422_40
.Ldata$2F1_α_422_56:    cmp              al, 72;                              jne   .Ldata$2F1_α_422_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Ldata$2F1_α_422_41
                        cmp              rax, r8;                             je    .Ldata$2F1_α_422_41
                        mov              r8, rax;                             jmp   .Ldata$2F1_α_422_40
.Ldata$2F1_α_422_41:    lea              r9, [rsp + 240]
.Ldata$2F1_α_422_42:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Ldata$2F1_α_422_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Ldata$2F1_α_422_43
                        cmp              esi, 1;                              jne   .Ldata$2F1_α_422_57
                        mov              r9, rax;                             jmp   .Ldata$2F1_α_422_42
.Ldata$2F1_α_422_57:    cmp              esi, 2;                              jne   .Ldata$2F1_α_422_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Ldata$2F1_α_422_43
                        mov              r9, rax;                             jmp   .Ldata$2F1_α_422_42
.Ldata$2F1_α_422_58:    cmp              al, 72;                              jne   .Ldata$2F1_α_422_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Ldata$2F1_α_422_43
                        cmp              rax, r9;                             je    .Ldata$2F1_α_422_43
                        mov              r9, rax;                             jmp   .Ldata$2F1_α_422_42
.Ldata$2F1_α_422_43:    cmp              r8, r9;                              je    .Ldata$2F1_α_422_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Ldata$2F1_α_422_44
                        cmp              al, 104;                             je    .Ldata$2F1_α_422_44
                        cmp              al, 72;                              jne   .Ldata$2F1_α_422_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Ldata$2F1_α_422_44
                                                                              jmp   .Ldata$2F1_α_422_45
.Ldata$2F1_α_422_44:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Ldata$2F1_α_422_53
                        cmp              al, 104;                             je    .Ldata$2F1_α_422_53
                        cmp              al, 72;                              jne   .Ldata$2F1_α_422_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Ldata$2F1_α_422_53
                                                                              jmp   .Ldata$2F1_α_422_46
.Ldata$2F1_α_422_46:    lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Ldata$2F1_α_422_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Ldata$2F1_α_422_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Ldata$2F1_α_422_51
.Ldata$2F1_α_422_45:    mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Ldata$2F1_α_422_47
                        cmp              al, 104;                             je    .Ldata$2F1_α_422_47
                        cmp              al, 72;                              jne   .Ldata$2F1_α_422_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Ldata$2F1_α_422_47
                                                                              jmp   .Ldata$2F1_α_422_48
.Ldata$2F1_α_422_47:    lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Ldata$2F1_α_422_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Ldata$2F1_α_422_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Ldata$2F1_α_422_51
.Ldata$2F1_α_422_48:    mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Ldata$2F1_α_422_49
                        cmp              dl, 80;                              je    .Ldata$2F1_α_422_53
                                                                              jmp   .Ldata$2F1_α_422_52
.Ldata$2F1_α_422_49:    cmp              dl, 80;                              je    .Ldata$2F1_α_422_52
                        cmp              cl, 5;                               je    .Ldata$2F1_α_422_53
                        cmp              dl, 5;                               je    .Ldata$2F1_α_422_53
                        cmp              cl, 3;                               jne   .Ldata$2F1_α_422_50
                        cmp              dl, 3;                               jne   .Ldata$2F1_α_422_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Ldata$2F1_α_422_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Ldata$2F1_α_422_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Ldata$2F1_α_422_51
                                                                              jmp   .Ldata$2F1_α_422_52
.Ldata$2F1_α_422_50:    mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Ldata$2F1_α_422_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Ldata$2F1_α_422_53
.Ldata$2F1_α_422_51:    mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Ldata$2F1_α_422_54
.Ldata$2F1_α_422_52:    mov              eax, 104
                        mov              edx, 0;                              jmp   .Ldata$2F1_α_422_54
.Ldata$2F1_α_422_53:    mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldata$2F1_α_422_54:    mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n416_call_prolog_α
                                                                              jmp   n412_var_ref_α
n411_call_prolog_β:     mov              r11, 166;                            jmp   n416_call_prolog_α
                        .size            n411_call_prolog_bx, .-n411_call_prolog_bx
                        .type            n412_var_ref_bx, @function
n412_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 304]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n413_lit_integer_α
                        .size            n412_var_ref_bx, .-n412_var_ref_bx
                        .type            n413_lit_integer_bx, @function
n413_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Ldata$2F1_α_425_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n414_call_proc_staged_α
.Ldata$2F1_α_425_0:     .quad            30
                        .size            n413_lit_integer_bx, .-n413_lit_integer_bx
                        .type            n414_call_proc_staged_bx, @function
n414_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_call_proc_staged_α:
                        mov              r11, 169
                        mov              qword ptr [rsp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Ldata$2F1_α_427_200
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Ldata$2F1_α_427_201
.Ldata$2F1_α_427_200:   mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldata$2F1_α_427_201:   lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Ldata$2F1_α_427_202
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Ldata$2F1_α_427_203
.Ldata$2F1_α_427_202:   mov              edi, 1
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
.Ldata$2F1_α_427_203:   sub              rsp, 8
                        lea              rax, [rip + .Ldata$2F1_α_427_7]      # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Ldata$2F1_α_427_1
                        lea              rcx, [rip + .Ldata$2F1_α_427_4]
                        push             rcx
                        lea              rcx, [rip + .Ldata$2F1_α_427_3]
                        push             rcx
                        lea              rdx, [rip + .Ldata$2F1_α_427_4];     jmp   rax
.Ldata$2F1_α_427_3:     add              rsp, 16
                        mov              qword ptr [rsp + 152], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Ldata$2F1_α_427_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldata$2F1_α_427_2
.Ldata$2F1_α_427_5:     call             rt_gen_spine_pass_γ@PLT;             jmp   .Ldata$2F1_α_427_2
.Ldata$2F1_α_427_4:     add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Ldata$2F1_α_427_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldata$2F1_α_427_2
.Ldata$2F1_α_427_6:     call             rt_gen_spine_pass_ω@PLT;             jmp   .Ldata$2F1_α_427_2
.Ldata$2F1_α_427_1:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Ldata$2F1_α_427_2:     mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Ldata$2F1_α_427_29
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
.Ldata$2F1_α_427_29:    mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n416_call_prolog_α
                                                                              jmp   n415_suspend_α
n414_call_proc_staged_β:
                        mov              r11, 169
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 144], 0
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n416_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              ecx, 48
                        mov              r8d, 1088
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
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
                        mov              edi, 4
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n416_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Ldata$2F1_α_427_7]
                        push             r8
                        lea              rcx, [rip + .Ldata$2F1_α_427_4]      # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Ldata$2F1_α_427_3]
                        push             rcx
                        lea              rdx, [rip + .Ldata$2F1_α_427_4];     jmp   rax
.Ldata$2F1_α_427_7:     add              rsp, 16
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n416_call_prolog_α
                                                                              jmp   n415_suspend_α
.Ldata$2F1_β_427_0:     .quad            .Ldata$2F1_β_427_0_s
.Ldata$2F1_β_427_0_s:   .string          "data/2"
                        .size            n414_call_proc_staged_bx, .-n414_call_proc_staged_bx
                        .type            n415_suspend_bx, @function
n415_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_suspend_α:         mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Ldata$2F1_α_429_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 288];          jmp   rax
.Ldata$2F1_α_429_61:    mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rip + n415_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n415_suspend_β]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax;            jmp   data$2F1_γ
n415_suspend_β:         mov              r11, 170;                            jmp   n414_call_proc_staged_β
                        .size            n415_suspend_bx, .-n415_suspend_bx
                        .type            n416_call_prolog_bx, @function
n416_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_call_prolog_α:     mov              r11, 171
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
                        cmp              al, 104;                             je    data$2F1_ω
                                                                              jmp   data$2F1_ω
n416_call_prolog_β:     mov              r11, 171;                            jmp   data$2F1_ω
                        .size            n416_call_prolog_bx, .-n416_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
data$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
data$2F1_β:
                                                                              jmp   n415_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
data$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Ldata$2F1_α_430_50
                        mov              qword ptr [rsp + 288], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 288];          jmp   rax
.Ldata$2F1_α_430_50:    mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 344]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
data$2F1_ω:
                        mov              rcx, qword ptr [rsp + 352]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__app$2F3:
                        sub              rsp, 1216
                        mov              qword ptr [rsp + 1192], rcx
                        mov              qword ptr [rsp + 1200], rdx
                        mov              qword ptr [rsp + 1208], rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1184
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
app$2F3_α_body:
                        lea              rax, [rip + n445_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        .type            n431_call_prolog_bx, @function
n431_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_call_prolog_α:     mov              r11, 172
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lapp$2F3_α_468_102
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lapp$2F3_α_468_101
.Lapp$2F3_α_468_102:    lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lapp$2F3_α_468_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lapp$2F3_α_468_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lapp$2F3_α_468_101
.Lapp$2F3_α_468_100:    lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lapp$2F3_α_468_101:    mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    app$2F3_ω
                                                                              jmp   n432_var_ref_α
n431_call_prolog_β:     mov              r11, 172;                            jmp   app$2F3_ω
                        .size            n431_call_prolog_bx, .-n431_call_prolog_bx
                        .type            n432_var_ref_bx, @function
n432_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n433_lit_integer_α
                        .size            n432_var_ref_bx, .-n432_var_ref_bx
                        .type            n433_lit_integer_bx, @function
n433_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_integer_α:     mov              r11, 174
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lapp$2F3_α_471_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n434_lit_string_α
.Lapp$2F3_α_471_0:      .quad            2
                        .size            n433_lit_integer_bx, .-n433_lit_integer_bx
                        .type            n434_lit_string_bx, @function
n434_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 2
                        mov              rax, qword ptr [rip + .Lapp$2F3_α_472_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n435_call_prolog_α
.Lapp$2F3_α_472_0:      .quad            .Lapp$2F3_α_472_0_s
.Lapp$2F3_α_472_0_s:    .string          "[]"
                        .size            n434_lit_string_bx, .-n434_lit_string_bx
                        .type            n435_call_prolog_bx, @function
n435_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_call_prolog_α:     mov              r11, 176
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        lea              r8, [rsp + 992]
.Lapp$2F3_α_473_110:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_473_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_473_111
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_473_112
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_473_110
.Lapp$2F3_α_473_112:    cmp              esi, 2;                              jne   .Lapp$2F3_α_473_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_473_111
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_473_110
.Lapp$2F3_α_473_113:    cmp              al, 72;                              jne   .Lapp$2F3_α_473_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_473_111
                        cmp              rax, r8;                             je    .Lapp$2F3_α_473_111
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_473_110
.Lapp$2F3_α_473_111:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_473_114
                        cmp              al, 104;                             je    .Lapp$2F3_α_473_114
                        cmp              al, 72;                              jne   .Lapp$2F3_α_473_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lapp$2F3_α_473_114
                                                                              jmp   .Lapp$2F3_α_473_118
.Lapp$2F3_α_473_118:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lapp$2F3_α_473_115
                        cmp              al, 3;                               je    .Lapp$2F3_α_473_114
                        cmp              al, 2;                               jne   .Lapp$2F3_α_473_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lapp$2F3_α_473_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lapp$2F3_α_473_114
                                                                              jmp   .Lapp$2F3_α_473_116
.Lapp$2F3_α_473_114:    mov              eax, 3
                        mov              edx, 1;                              jmp   .Lapp$2F3_α_473_117
.Lapp$2F3_α_473_115:    mov              eax, 104
                        mov              edx, 0;                              jmp   .Lapp$2F3_α_473_117
.Lapp$2F3_α_473_116:    mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lapp$2F3_α_473_117:    mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n447_var_ref_α
                                                                              jmp   n436_var_ref_α
n435_call_prolog_β:     mov              r11, 176;                            jmp   n447_var_ref_α
                        .size            n435_call_prolog_bx, .-n435_call_prolog_bx
                        .type            n436_var_ref_bx, @function
n436_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n437_lit_string_α
                        .size            n436_var_ref_bx, .-n436_var_ref_bx
                        .type            n437_lit_string_bx, @function
n437_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      mov              r11, 178
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lapp$2F3_α_476_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n438_call_prolog_α
.Lapp$2F3_α_476_0:      .quad            .Lapp$2F3_α_476_0_s
.Lapp$2F3_α_476_0_s:    .string          "[]"
                        .size            n437_lit_string_bx, .-n437_lit_string_bx
                        .type            n438_call_prolog_bx, @function
n438_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_call_prolog_α:     mov              r11, 179
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        mov              rsi, qword ptr [rip + .Lapp$2F3_α_477_2]
                                                                              jmp   .Lapp$2F3_α_477_3
.Lapp$2F3_α_477_2:      .quad            .Lapp$2F3_α_477_2_s
.Lapp$2F3_α_477_2_s:    .string          "[]"
.Lapp$2F3_α_477_3:      mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n446_call_prolog_α
                                                                              jmp   n439_var_ref_α
n438_call_prolog_β:     mov              r11, 179;                            jmp   n446_call_prolog_α
                        .size            n438_call_prolog_bx, .-n438_call_prolog_bx
                        .type            n439_var_ref_bx, @function
n439_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n440_var_ref_α
                        .size            n439_var_ref_bx, .-n439_var_ref_bx
                        .type            n440_var_ref_bx, @function
n440_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n441_call_prolog_α
                        .size            n440_var_ref_bx, .-n440_var_ref_bx
                        .type            n441_call_prolog_bx, @function
n441_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_call_prolog_α:     mov              r11, 182
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        lea              r8, [rsp + 832]
.Lapp$2F3_α_482_40:     mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_482_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_482_41
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_482_55
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_482_40
.Lapp$2F3_α_482_55:     cmp              esi, 2;                              jne   .Lapp$2F3_α_482_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_482_41
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_482_40
.Lapp$2F3_α_482_56:     cmp              al, 72;                              jne   .Lapp$2F3_α_482_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_482_41
                        cmp              rax, r8;                             je    .Lapp$2F3_α_482_41
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_482_40
.Lapp$2F3_α_482_41:     lea              r9, [rsp + 848]
.Lapp$2F3_α_482_42:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_482_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_482_43
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_482_57
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_482_42
.Lapp$2F3_α_482_57:     cmp              esi, 2;                              jne   .Lapp$2F3_α_482_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_482_43
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_482_42
.Lapp$2F3_α_482_58:     cmp              al, 72;                              jne   .Lapp$2F3_α_482_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_482_43
                        cmp              rax, r9;                             je    .Lapp$2F3_α_482_43
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_482_42
.Lapp$2F3_α_482_43:     cmp              r8, r9;                              je    .Lapp$2F3_α_482_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_482_44
                        cmp              al, 104;                             je    .Lapp$2F3_α_482_44
                        cmp              al, 72;                              jne   .Lapp$2F3_α_482_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lapp$2F3_α_482_44
                                                                              jmp   .Lapp$2F3_α_482_45
.Lapp$2F3_α_482_44:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_482_53
                        cmp              al, 104;                             je    .Lapp$2F3_α_482_53
                        cmp              al, 72;                              jne   .Lapp$2F3_α_482_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lapp$2F3_α_482_53
                                                                              jmp   .Lapp$2F3_α_482_46
.Lapp$2F3_α_482_46:     lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lapp$2F3_α_482_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lapp$2F3_α_482_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lapp$2F3_α_482_51
.Lapp$2F3_α_482_45:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_482_47
                        cmp              al, 104;                             je    .Lapp$2F3_α_482_47
                        cmp              al, 72;                              jne   .Lapp$2F3_α_482_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lapp$2F3_α_482_47
                                                                              jmp   .Lapp$2F3_α_482_48
.Lapp$2F3_α_482_47:     lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lapp$2F3_α_482_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lapp$2F3_α_482_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lapp$2F3_α_482_51
.Lapp$2F3_α_482_48:     mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lapp$2F3_α_482_49
                        cmp              dl, 80;                              je    .Lapp$2F3_α_482_53
                                                                              jmp   .Lapp$2F3_α_482_52
.Lapp$2F3_α_482_49:     cmp              dl, 80;                              je    .Lapp$2F3_α_482_52
                        cmp              cl, 5;                               je    .Lapp$2F3_α_482_53
                        cmp              dl, 5;                               je    .Lapp$2F3_α_482_53
                        cmp              cl, 3;                               jne   .Lapp$2F3_α_482_50
                        cmp              dl, 3;                               jne   .Lapp$2F3_α_482_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lapp$2F3_α_482_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lapp$2F3_α_482_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lapp$2F3_α_482_51
                                                                              jmp   .Lapp$2F3_α_482_52
.Lapp$2F3_α_482_50:     mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lapp$2F3_α_482_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lapp$2F3_α_482_53
.Lapp$2F3_α_482_51:     mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lapp$2F3_α_482_54
.Lapp$2F3_α_482_52:     mov              eax, 104
                        mov              edx, 0;                              jmp   .Lapp$2F3_α_482_54
.Lapp$2F3_α_482_53:     mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lapp$2F3_α_482_54:     mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n446_call_prolog_α
                                                                              jmp   n442_var_ref_α
n441_call_prolog_β:     mov              r11, 182;                            jmp   n446_call_prolog_α
                        .size            n441_call_prolog_bx, .-n441_call_prolog_bx
                        .type            n442_var_ref_bx, @function
n442_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n443_var_ref_α
                        .size            n442_var_ref_bx, .-n442_var_ref_bx
                        .type            n443_var_ref_bx, @function
n443_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n444_call_prolog_α
                        .size            n443_var_ref_bx, .-n443_var_ref_bx
                        .type            n444_call_prolog_bx, @function
n444_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_call_prolog_α:     mov              r11, 185
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        lea              rdi, [rsp + 752]
                        lea              r8, [rsp + 752]
.Lapp$2F3_α_487_40:     mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_487_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_487_41
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_487_55
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_487_40
.Lapp$2F3_α_487_55:     cmp              esi, 2;                              jne   .Lapp$2F3_α_487_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_487_41
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_487_40
.Lapp$2F3_α_487_56:     cmp              al, 72;                              jne   .Lapp$2F3_α_487_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_487_41
                        cmp              rax, r8;                             je    .Lapp$2F3_α_487_41
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_487_40
.Lapp$2F3_α_487_41:     lea              r9, [rsp + 768]
.Lapp$2F3_α_487_42:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_487_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_487_43
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_487_57
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_487_42
.Lapp$2F3_α_487_57:     cmp              esi, 2;                              jne   .Lapp$2F3_α_487_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_487_43
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_487_42
.Lapp$2F3_α_487_58:     cmp              al, 72;                              jne   .Lapp$2F3_α_487_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_487_43
                        cmp              rax, r9;                             je    .Lapp$2F3_α_487_43
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_487_42
.Lapp$2F3_α_487_43:     cmp              r8, r9;                              je    .Lapp$2F3_α_487_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_487_44
                        cmp              al, 104;                             je    .Lapp$2F3_α_487_44
                        cmp              al, 72;                              jne   .Lapp$2F3_α_487_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lapp$2F3_α_487_44
                                                                              jmp   .Lapp$2F3_α_487_45
.Lapp$2F3_α_487_44:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_487_53
                        cmp              al, 104;                             je    .Lapp$2F3_α_487_53
                        cmp              al, 72;                              jne   .Lapp$2F3_α_487_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lapp$2F3_α_487_53
                                                                              jmp   .Lapp$2F3_α_487_46
.Lapp$2F3_α_487_46:     lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lapp$2F3_α_487_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lapp$2F3_α_487_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lapp$2F3_α_487_51
.Lapp$2F3_α_487_45:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_487_47
                        cmp              al, 104;                             je    .Lapp$2F3_α_487_47
                        cmp              al, 72;                              jne   .Lapp$2F3_α_487_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lapp$2F3_α_487_47
                                                                              jmp   .Lapp$2F3_α_487_48
.Lapp$2F3_α_487_47:     lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lapp$2F3_α_487_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lapp$2F3_α_487_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lapp$2F3_α_487_51
.Lapp$2F3_α_487_48:     mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lapp$2F3_α_487_49
                        cmp              dl, 80;                              je    .Lapp$2F3_α_487_53
                                                                              jmp   .Lapp$2F3_α_487_52
.Lapp$2F3_α_487_49:     cmp              dl, 80;                              je    .Lapp$2F3_α_487_52
                        cmp              cl, 5;                               je    .Lapp$2F3_α_487_53
                        cmp              dl, 5;                               je    .Lapp$2F3_α_487_53
                        cmp              cl, 3;                               jne   .Lapp$2F3_α_487_50
                        cmp              dl, 3;                               jne   .Lapp$2F3_α_487_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lapp$2F3_α_487_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lapp$2F3_α_487_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lapp$2F3_α_487_51
                                                                              jmp   .Lapp$2F3_α_487_52
.Lapp$2F3_α_487_50:     mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lapp$2F3_α_487_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lapp$2F3_α_487_53
.Lapp$2F3_α_487_51:     mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lapp$2F3_α_487_54
.Lapp$2F3_α_487_52:     mov              eax, 104
                        mov              edx, 0;                              jmp   .Lapp$2F3_α_487_54
.Lapp$2F3_α_487_53:     mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lapp$2F3_α_487_54:     mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n446_call_prolog_α
                                                                              jmp   n445_suspend_α
n444_call_prolog_β:     mov              r11, 185;                            jmp   n446_call_prolog_α
                        .size            n444_call_prolog_bx, .-n444_call_prolog_bx
                        .type            n445_suspend_bx, @function
n445_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_suspend_α:         mov              r11, 186
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_489_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lapp$2F3_α_489_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n445_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n445_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   app$2F3_γ
n445_suspend_β:         mov              r11, 186;                            jmp   n446_call_prolog_α
                        .size            n445_suspend_bx, .-n445_suspend_bx
                        .type            n446_call_prolog_bx, @function
n446_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_call_prolog_α:     mov              r11, 187
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    app$2F3_ω
                                                                              jmp   n447_var_ref_α
n446_call_prolog_β:     mov              r11, 187;                            jmp   app$2F3_ω
                        .size            n446_call_prolog_bx, .-n446_call_prolog_bx
                        .type            n447_var_ref_bx, @function
n447_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n448_lit_integer_α
                        .size            n447_var_ref_bx, .-n447_var_ref_bx
                        .type            n448_lit_integer_bx, @function
n448_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:     mov              r11, 189
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lapp$2F3_α_493_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n449_lit_integer_α
.Lapp$2F3_α_493_0:      .quad            3
                        .size            n448_lit_integer_bx, .-n448_lit_integer_bx
                        .type            n449_lit_integer_bx, @function
n449_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_integer_α:     mov              r11, 190
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lapp$2F3_α_494_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n450_call_prolog_α
.Lapp$2F3_α_494_0:      .quad            0
                        .size            n449_lit_integer_bx, .-n449_lit_integer_bx
                        .type            n450_call_prolog_bx, @function
n450_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_call_prolog_α:     mov              r11, 191
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        lea              r8, [rsp + 592]
.Lapp$2F3_α_495_110:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_495_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_495_111
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_495_112
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_495_110
.Lapp$2F3_α_495_112:    cmp              esi, 2;                              jne   .Lapp$2F3_α_495_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_495_111
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_495_110
.Lapp$2F3_α_495_113:    cmp              al, 72;                              jne   .Lapp$2F3_α_495_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_495_111
                        cmp              rax, r8;                             je    .Lapp$2F3_α_495_111
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_495_110
.Lapp$2F3_α_495_111:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_495_114
                        cmp              al, 104;                             je    .Lapp$2F3_α_495_114
                        cmp              al, 72;                              jne   .Lapp$2F3_α_495_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lapp$2F3_α_495_114
                                                                              jmp   .Lapp$2F3_α_495_118
.Lapp$2F3_α_495_118:    mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lapp$2F3_α_495_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lapp$2F3_α_495_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lapp$2F3_α_495_115
                                                                              jmp   .Lapp$2F3_α_495_114
.Lapp$2F3_α_495_119:    cmp              al, 3;                               jne   .Lapp$2F3_α_495_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lapp$2F3_α_495_114
                                                                              jmp   .Lapp$2F3_α_495_115
.Lapp$2F3_α_495_120:    cmp              al, 2;                               jne   .Lapp$2F3_α_495_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lapp$2F3_α_495_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lapp$2F3_α_495_114
                                                                              jmp   .Lapp$2F3_α_495_115
.Lapp$2F3_α_495_114:    mov              eax, 3
                        mov              edx, 1;                              jmp   .Lapp$2F3_α_495_117
.Lapp$2F3_α_495_115:    mov              eax, 104
                        mov              edx, 0;                              jmp   .Lapp$2F3_α_495_117
.Lapp$2F3_α_495_116:    mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lapp$2F3_α_495_117:    mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n467_call_prolog_α
                                                                              jmp   n451_var_ref_α
n450_call_prolog_β:     mov              r11, 191;                            jmp   n467_call_prolog_α
                        .size            n450_call_prolog_bx, .-n450_call_prolog_bx
                        .type            n451_var_ref_bx, @function
n451_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n452_var_ref_α
                        .size            n451_var_ref_bx, .-n451_var_ref_bx
                        .type            n452_var_ref_bx, @function
n452_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n453_var_ref_α
                        .size            n452_var_ref_bx, .-n452_var_ref_bx
                        .type            n453_var_ref_bx, @function
n453_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n454_call_prolog_α
                        .size            n453_var_ref_bx, .-n453_var_ref_bx
                        .type            n454_call_prolog_bx, @function
n454_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_call_prolog_α:     mov              r11, 195
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
.Lapp$2F3_α_502_60:     mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_502_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_61
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_502_62
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_502_60
.Lapp$2F3_α_502_62:     cmp              esi, 2;                              jne   .Lapp$2F3_α_502_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_61
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_502_60
.Lapp$2F3_α_502_63:     cmp              al, 72;                              jne   .Lapp$2F3_α_502_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_61
                        cmp              rax, r8;                             je    .Lapp$2F3_α_502_61
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_502_60
.Lapp$2F3_α_502_61:     mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_502_80
                        cmp              al, 104;                             je    .Lapp$2F3_α_502_80
                        cmp              al, 72;                              jne   .Lapp$2F3_α_502_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lapp$2F3_α_502_80
                                                                              jmp   .Lapp$2F3_α_502_74
.Lapp$2F3_α_502_74:     mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lapp$2F3_α_502_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lapp$2F3_α_502_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lapp$2F3_α_502_73
                        lea              r9, [rsp + 512]
.Lapp$2F3_α_502_64:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_502_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_65
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_502_66
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_502_64
.Lapp$2F3_α_502_66:     cmp              esi, 2;                              jne   .Lapp$2F3_α_502_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_65
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_502_64
.Lapp$2F3_α_502_67:     cmp              al, 72;                              jne   .Lapp$2F3_α_502_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_65
                        cmp              rax, r9;                             je    .Lapp$2F3_α_502_65
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_502_64
.Lapp$2F3_α_502_65:     lea              rcx, [rsp + 528]
.Lapp$2F3_α_502_68:     mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_502_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_69
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_502_70
                        mov              rcx, rax;                            jmp   .Lapp$2F3_α_502_68
.Lapp$2F3_α_502_70:     cmp              esi, 2;                              jne   .Lapp$2F3_α_502_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_69
                        mov              rcx, rax;                            jmp   .Lapp$2F3_α_502_68
.Lapp$2F3_α_502_71:     cmp              al, 72;                              jne   .Lapp$2F3_α_502_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_69
                        cmp              rax, rcx;                            je    .Lapp$2F3_α_502_69
                        mov              rcx, rax;                            jmp   .Lapp$2F3_α_502_68
.Lapp$2F3_α_502_69:     cmp              r9, rcx;                             je    .Lapp$2F3_α_502_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_502_75
                        cmp              al, 104;                             je    .Lapp$2F3_α_502_75
                        cmp              al, 72;                              jne   .Lapp$2F3_α_502_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lapp$2F3_α_502_75
                                                                              jmp   .Lapp$2F3_α_502_72
.Lapp$2F3_α_502_75:     mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_502_76
                        cmp              al, 104;                             je    .Lapp$2F3_α_502_76
                        cmp              al, 72;                              jne   .Lapp$2F3_α_502_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lapp$2F3_α_502_76
                                                                              jmp   .Lapp$2F3_α_502_72
.Lapp$2F3_α_502_76:     lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lapp$2F3_α_502_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lapp$2F3_α_502_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lapp$2F3_α_502_77
.Lapp$2F3_α_502_80:     lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lapp$2F3_α_502_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lapp$2F3_α_502_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lapp$2F3_α_502_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lapp$2F3_α_502_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lapp$2F3_α_502_72
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
.Lapp$2F3_α_502_81:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_502_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_82
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_502_83
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_502_81
.Lapp$2F3_α_502_83:     cmp              esi, 2;                              jne   .Lapp$2F3_α_502_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_82
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_502_81
.Lapp$2F3_α_502_84:     cmp              al, 72;                              jne   .Lapp$2F3_α_502_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_82
                        cmp              rax, r9;                             je    .Lapp$2F3_α_502_82
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_502_81
.Lapp$2F3_α_502_82:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_502_85
                        cmp              al, 104;                             je    .Lapp$2F3_α_502_85
                        cmp              al, 72;                              jne   .Lapp$2F3_α_502_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lapp$2F3_α_502_85
                                                                              jmp   .Lapp$2F3_α_502_86
.Lapp$2F3_α_502_85:     mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lapp$2F3_α_502_87
.Lapp$2F3_α_502_86:     mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lapp$2F3_α_502_87:     lea              rcx, [rsp + 528]
.Lapp$2F3_α_502_88:     mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_502_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_89
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_502_90
                        mov              rcx, rax;                            jmp   .Lapp$2F3_α_502_88
.Lapp$2F3_α_502_90:     cmp              esi, 2;                              jne   .Lapp$2F3_α_502_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_89
                        mov              rcx, rax;                            jmp   .Lapp$2F3_α_502_88
.Lapp$2F3_α_502_91:     cmp              al, 72;                              jne   .Lapp$2F3_α_502_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_502_89
                        cmp              rax, rcx;                            je    .Lapp$2F3_α_502_89
                        mov              rcx, rax;                            jmp   .Lapp$2F3_α_502_88
.Lapp$2F3_α_502_89:     mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_502_92
                        cmp              al, 104;                             je    .Lapp$2F3_α_502_92
                        cmp              al, 72;                              jne   .Lapp$2F3_α_502_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lapp$2F3_α_502_92
                                                                              jmp   .Lapp$2F3_α_502_93
.Lapp$2F3_α_502_92:     mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lapp$2F3_α_502_94
.Lapp$2F3_α_502_93:     mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lapp$2F3_α_502_94:     lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lapp$2F3_α_502_77
.Lapp$2F3_α_502_73:     mov              eax, 104
                        mov              edx, 0;                              jmp   .Lapp$2F3_α_502_77
.Lapp$2F3_α_502_72:     mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lapp$2F3_α_502_77:     mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n467_call_prolog_α
                                                                              jmp   n455_var_ref_α
n454_call_prolog_β:     mov              r11, 195;                            jmp   n467_call_prolog_α
                        .size            n454_call_prolog_bx, .-n454_call_prolog_bx
                        .type            n455_var_ref_bx, @function
n455_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n456_var_ref_α
                        .size            n455_var_ref_bx, .-n455_var_ref_bx
                        .type            n456_var_ref_bx, @function
n456_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n457_call_prolog_α
                        .size            n456_var_ref_bx, .-n456_var_ref_bx
                        .type            n457_call_prolog_bx, @function
n457_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_call_prolog_α:     mov              r11, 198
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
.Lapp$2F3_α_507_40:     mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_507_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_507_41
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_507_55
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_507_40
.Lapp$2F3_α_507_55:     cmp              esi, 2;                              jne   .Lapp$2F3_α_507_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_507_41
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_507_40
.Lapp$2F3_α_507_56:     cmp              al, 72;                              jne   .Lapp$2F3_α_507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_507_41
                        cmp              rax, r8;                             je    .Lapp$2F3_α_507_41
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_507_40
.Lapp$2F3_α_507_41:     lea              r9, [rsp + 416]
.Lapp$2F3_α_507_42:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_507_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_507_43
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_507_57
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_507_42
.Lapp$2F3_α_507_57:     cmp              esi, 2;                              jne   .Lapp$2F3_α_507_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_507_43
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_507_42
.Lapp$2F3_α_507_58:     cmp              al, 72;                              jne   .Lapp$2F3_α_507_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_507_43
                        cmp              rax, r9;                             je    .Lapp$2F3_α_507_43
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_507_42
.Lapp$2F3_α_507_43:     cmp              r8, r9;                              je    .Lapp$2F3_α_507_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_507_44
                        cmp              al, 104;                             je    .Lapp$2F3_α_507_44
                        cmp              al, 72;                              jne   .Lapp$2F3_α_507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lapp$2F3_α_507_44
                                                                              jmp   .Lapp$2F3_α_507_45
.Lapp$2F3_α_507_44:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_507_53
                        cmp              al, 104;                             je    .Lapp$2F3_α_507_53
                        cmp              al, 72;                              jne   .Lapp$2F3_α_507_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lapp$2F3_α_507_53
                                                                              jmp   .Lapp$2F3_α_507_46
.Lapp$2F3_α_507_46:     lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lapp$2F3_α_507_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lapp$2F3_α_507_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lapp$2F3_α_507_51
.Lapp$2F3_α_507_45:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_507_47
                        cmp              al, 104;                             je    .Lapp$2F3_α_507_47
                        cmp              al, 72;                              jne   .Lapp$2F3_α_507_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lapp$2F3_α_507_47
                                                                              jmp   .Lapp$2F3_α_507_48
.Lapp$2F3_α_507_47:     lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lapp$2F3_α_507_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lapp$2F3_α_507_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lapp$2F3_α_507_51
.Lapp$2F3_α_507_48:     mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lapp$2F3_α_507_49
                        cmp              dl, 80;                              je    .Lapp$2F3_α_507_53
                                                                              jmp   .Lapp$2F3_α_507_52
.Lapp$2F3_α_507_49:     cmp              dl, 80;                              je    .Lapp$2F3_α_507_52
                        cmp              cl, 5;                               je    .Lapp$2F3_α_507_53
                        cmp              dl, 5;                               je    .Lapp$2F3_α_507_53
                        cmp              cl, 3;                               jne   .Lapp$2F3_α_507_50
                        cmp              dl, 3;                               jne   .Lapp$2F3_α_507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lapp$2F3_α_507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lapp$2F3_α_507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lapp$2F3_α_507_51
                                                                              jmp   .Lapp$2F3_α_507_52
.Lapp$2F3_α_507_50:     mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lapp$2F3_α_507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lapp$2F3_α_507_53
.Lapp$2F3_α_507_51:     mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lapp$2F3_α_507_54
.Lapp$2F3_α_507_52:     mov              eax, 104
                        mov              edx, 0;                              jmp   .Lapp$2F3_α_507_54
.Lapp$2F3_α_507_53:     mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lapp$2F3_α_507_54:     mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n467_call_prolog_α
                                                                              jmp   n458_var_ref_α
n457_call_prolog_β:     mov              r11, 198;                            jmp   n467_call_prolog_α
                        .size            n457_call_prolog_bx, .-n457_call_prolog_bx
                        .type            n458_var_ref_bx, @function
n458_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n459_var_ref_α
                        .size            n458_var_ref_bx, .-n458_var_ref_bx
                        .type            n459_var_ref_bx, @function
n459_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n460_var_ref_α
                        .size            n459_var_ref_bx, .-n459_var_ref_bx
                        .type            n460_var_ref_bx, @function
n460_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n461_call_prolog_α
                        .size            n460_var_ref_bx, .-n460_var_ref_bx
                        .type            n461_call_prolog_bx, @function
n461_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_call_prolog_α:     mov              r11, 202
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        lea              r8, [rsp + 304]
.Lapp$2F3_α_514_60:     mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_514_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_61
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_514_62
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_514_60
.Lapp$2F3_α_514_62:     cmp              esi, 2;                              jne   .Lapp$2F3_α_514_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_61
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_514_60
.Lapp$2F3_α_514_63:     cmp              al, 72;                              jne   .Lapp$2F3_α_514_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_61
                        cmp              rax, r8;                             je    .Lapp$2F3_α_514_61
                        mov              r8, rax;                             jmp   .Lapp$2F3_α_514_60
.Lapp$2F3_α_514_61:     mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_514_80
                        cmp              al, 104;                             je    .Lapp$2F3_α_514_80
                        cmp              al, 72;                              jne   .Lapp$2F3_α_514_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lapp$2F3_α_514_80
                                                                              jmp   .Lapp$2F3_α_514_74
.Lapp$2F3_α_514_74:     mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lapp$2F3_α_514_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lapp$2F3_α_514_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lapp$2F3_α_514_73
                        lea              r9, [rsp + 320]
.Lapp$2F3_α_514_64:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_514_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_65
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_514_66
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_514_64
.Lapp$2F3_α_514_66:     cmp              esi, 2;                              jne   .Lapp$2F3_α_514_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_65
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_514_64
.Lapp$2F3_α_514_67:     cmp              al, 72;                              jne   .Lapp$2F3_α_514_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_65
                        cmp              rax, r9;                             je    .Lapp$2F3_α_514_65
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_514_64
.Lapp$2F3_α_514_65:     lea              rcx, [rsp + 336]
.Lapp$2F3_α_514_68:     mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_514_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_69
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_514_70
                        mov              rcx, rax;                            jmp   .Lapp$2F3_α_514_68
.Lapp$2F3_α_514_70:     cmp              esi, 2;                              jne   .Lapp$2F3_α_514_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_69
                        mov              rcx, rax;                            jmp   .Lapp$2F3_α_514_68
.Lapp$2F3_α_514_71:     cmp              al, 72;                              jne   .Lapp$2F3_α_514_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_69
                        cmp              rax, rcx;                            je    .Lapp$2F3_α_514_69
                        mov              rcx, rax;                            jmp   .Lapp$2F3_α_514_68
.Lapp$2F3_α_514_69:     cmp              r9, rcx;                             je    .Lapp$2F3_α_514_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_514_75
                        cmp              al, 104;                             je    .Lapp$2F3_α_514_75
                        cmp              al, 72;                              jne   .Lapp$2F3_α_514_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lapp$2F3_α_514_75
                                                                              jmp   .Lapp$2F3_α_514_72
.Lapp$2F3_α_514_75:     mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_514_76
                        cmp              al, 104;                             je    .Lapp$2F3_α_514_76
                        cmp              al, 72;                              jne   .Lapp$2F3_α_514_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lapp$2F3_α_514_76
                                                                              jmp   .Lapp$2F3_α_514_72
.Lapp$2F3_α_514_76:     lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lapp$2F3_α_514_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lapp$2F3_α_514_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lapp$2F3_α_514_77
.Lapp$2F3_α_514_80:     lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lapp$2F3_α_514_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lapp$2F3_α_514_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lapp$2F3_α_514_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lapp$2F3_α_514_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lapp$2F3_α_514_72
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
                        lea              r9, [rsp + 320]
.Lapp$2F3_α_514_81:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_514_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_82
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_514_83
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_514_81
.Lapp$2F3_α_514_83:     cmp              esi, 2;                              jne   .Lapp$2F3_α_514_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_82
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_514_81
.Lapp$2F3_α_514_84:     cmp              al, 72;                              jne   .Lapp$2F3_α_514_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_82
                        cmp              rax, r9;                             je    .Lapp$2F3_α_514_82
                        mov              r9, rax;                             jmp   .Lapp$2F3_α_514_81
.Lapp$2F3_α_514_82:     mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_514_85
                        cmp              al, 104;                             je    .Lapp$2F3_α_514_85
                        cmp              al, 72;                              jne   .Lapp$2F3_α_514_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lapp$2F3_α_514_85
                                                                              jmp   .Lapp$2F3_α_514_86
.Lapp$2F3_α_514_85:     mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lapp$2F3_α_514_87
.Lapp$2F3_α_514_86:     mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lapp$2F3_α_514_87:     lea              rcx, [rsp + 336]
.Lapp$2F3_α_514_88:     mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lapp$2F3_α_514_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_89
                        cmp              esi, 1;                              jne   .Lapp$2F3_α_514_90
                        mov              rcx, rax;                            jmp   .Lapp$2F3_α_514_88
.Lapp$2F3_α_514_90:     cmp              esi, 2;                              jne   .Lapp$2F3_α_514_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_89
                        mov              rcx, rax;                            jmp   .Lapp$2F3_α_514_88
.Lapp$2F3_α_514_91:     cmp              al, 72;                              jne   .Lapp$2F3_α_514_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lapp$2F3_α_514_89
                        cmp              rax, rcx;                            je    .Lapp$2F3_α_514_89
                        mov              rcx, rax;                            jmp   .Lapp$2F3_α_514_88
.Lapp$2F3_α_514_89:     mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lapp$2F3_α_514_92
                        cmp              al, 104;                             je    .Lapp$2F3_α_514_92
                        cmp              al, 72;                              jne   .Lapp$2F3_α_514_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lapp$2F3_α_514_92
                                                                              jmp   .Lapp$2F3_α_514_93
.Lapp$2F3_α_514_92:     mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lapp$2F3_α_514_94
.Lapp$2F3_α_514_93:     mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lapp$2F3_α_514_94:     lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lapp$2F3_α_514_77
.Lapp$2F3_α_514_73:     mov              eax, 104
                        mov              edx, 0;                              jmp   .Lapp$2F3_α_514_77
.Lapp$2F3_α_514_72:     mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lapp$2F3_α_514_77:     mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n467_call_prolog_α
                                                                              jmp   n462_var_ref_α
n461_call_prolog_β:     mov              r11, 202;                            jmp   n467_call_prolog_α
                        .size            n461_call_prolog_bx, .-n461_call_prolog_bx
                        .type            n462_var_ref_bx, @function
n462_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n463_var_ref_α
                        .size            n462_var_ref_bx, .-n462_var_ref_bx
                        .type            n463_var_ref_bx, @function
n463_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n464_var_ref_α
                        .size            n463_var_ref_bx, .-n463_var_ref_bx
                        .type            n464_var_ref_bx, @function
n464_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n465_call_proc_staged_α
                        .size            n464_var_ref_bx, .-n464_var_ref_bx
                        .type            n465_call_proc_staged_bx, @function
n465_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_call_proc_staged_α:
                        mov              r11, 206
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lapp$2F3_α_522_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lapp$2F3_α_522_201
.Lapp$2F3_α_522_200:    mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lapp$2F3_α_522_201:    lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lapp$2F3_α_522_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lapp$2F3_α_522_203
.Lapp$2F3_α_522_202:    mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lapp$2F3_α_522_203:    lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lapp$2F3_α_522_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lapp$2F3_α_522_205
.Lapp$2F3_α_522_204:    mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lapp$2F3_α_522_205:    sub              rsp, 8
                        lea              rax, [rip + .Lapp$2F3_α_522_7]       # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 6
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lapp$2F3_α_522_1
                        lea              rcx, [rip + .Lapp$2F3_α_522_4]
                        push             rcx
                        lea              rcx, [rip + .Lapp$2F3_α_522_3]
                        push             rcx
                        lea              rdx, [rip + .Lapp$2F3_α_522_4];      jmp   rax
.Lapp$2F3_α_522_3:      add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lapp$2F3_α_522_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lapp$2F3_α_522_2
.Lapp$2F3_α_522_5:      call             rt_gen_spine_pass_γ@PLT;             jmp   .Lapp$2F3_α_522_2
.Lapp$2F3_α_522_4:      add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lapp$2F3_α_522_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lapp$2F3_α_522_2
.Lapp$2F3_α_522_6:      call             rt_gen_spine_pass_ω@PLT;             jmp   .Lapp$2F3_α_522_2
.Lapp$2F3_α_522_1:      mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lapp$2F3_α_522_2:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lapp$2F3_α_522_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lapp$2F3_α_522_29:     mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n467_call_prolog_α
                                                                              jmp   n466_suspend_α
n465_call_proc_staged_β:
                        mov              r11, 206
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n467_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1088
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 6
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n467_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lapp$2F3_α_522_7]
                        push             r8
                        lea              rcx, [rip + .Lapp$2F3_α_522_4]       # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lapp$2F3_α_522_3]
                        push             rcx
                        lea              rdx, [rip + .Lapp$2F3_α_522_4];      jmp   rax
.Lapp$2F3_α_522_7:      add              rsp, 16
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n467_call_prolog_α
                                                                              jmp   n466_suspend_α
.Lapp$2F3_β_522_0:      .quad            .Lapp$2F3_β_522_0_s
.Lapp$2F3_β_522_0_s:    .string          "app/3"
                        .size            n465_call_proc_staged_bx, .-n465_call_proc_staged_bx
                        .type            n466_suspend_bx, @function
n466_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_suspend_α:         mov              r11, 207
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lapp$2F3_α_524_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lapp$2F3_α_524_61:     mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n466_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n466_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   app$2F3_γ
n466_suspend_β:         mov              r11, 207;                            jmp   n465_call_proc_staged_β
                        .size            n466_suspend_bx, .-n466_suspend_bx
                        .type            n467_call_prolog_bx, @function
n467_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_call_prolog_α:     mov              r11, 208
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
                        cmp              al, 104;                             je    app$2F3_ω
                                                                              jmp   app$2F3_ω
n467_call_prolog_β:     mov              r11, 208;                            jmp   app$2F3_ω
                        .size            n467_call_prolog_bx, .-n467_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
app$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
app$2F3_β:
                                                                              jmp   n445_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
app$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lapp$2F3_α_525_50
                        mov              qword ptr [rsp + 1088], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lapp$2F3_α_525_50:     mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1192]
                        add              rsp, 1216;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
app$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1200]
                        add              rsp, 1216;                           jmp   rcx
                        .globl           main
main:
                        sub              rsp, 65544
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
                        sub              rsp, 464
                        mov              qword ptr [rsp + 440], rcx
                        mov              qword ptr [rsp + 448], rdx
                        mov              qword ptr [rsp + 456], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 432
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
main_α_body:
                        .type            n526_call_prolog_bx, @function
n526_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_call_prolog_α:     mov              r11, 209
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lmain_α_539_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lmain_α_539_101
.Lmain_α_539_102:       lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lmain_α_539_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lmain_α_539_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lmain_α_539_101
.Lmain_α_539_100:       lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_539_101:       mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n527_var_ref_α
n526_call_prolog_β:     mov              r11, 209;                            jmp   main_ω
                        .size            n526_call_prolog_bx, .-n526_call_prolog_bx
                        .type            n527_var_ref_bx, @function
n527_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n528_call_proc_staged_α
                        .size            n527_var_ref_bx, .-n527_var_ref_bx
                        .type            n528_call_proc_staged_bx, @function
n528_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_call_proc_staged_α:
                        mov              r11, 211
                        mov              qword ptr [rsp + 336], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_543_200
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_543_201
.Lmain_α_543_200:       mov              edi, 0
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
.Lmain_α_543_201:       sub              rsp, 8
                        lea              rax, [rip + .Lmain_α_543_7]          # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lmain_α_543_1
                        lea              rcx, [rip + .Lmain_α_543_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_543_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_543_4];         jmp   rax
.Lmain_α_543_3:         add              rsp, 16
                        mov              qword ptr [rsp + 344], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 336]
                        test             rax, rax;                            jne   .Lmain_α_543_5
                        mov              qword ptr [rsp + 336], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_543_2
.Lmain_α_543_5:         call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_543_2
.Lmain_α_543_4:         add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 336]
                        test             rax, rax;                            jne   .Lmain_α_543_6
                        mov              qword ptr [rsp + 336], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_543_2
.Lmain_α_543_6:         call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_543_2
.Lmain_α_543_1:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_543_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_543_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
.Lmain_α_543_29:        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n538_call_prolog_α
                                                                              jmp   n529_var_ref_α
n528_call_proc_staged_β:
                        mov              r11, 211
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 336], 0
                        lea              rdi, [rsp + 352]
                        lea              rsi, [rsp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n538_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        mov              ecx, 32
                        mov              r8d, 288
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 5
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n538_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lmain_α_543_7]
                        push             r8
                        lea              rcx, [rip + .Lmain_α_543_4]          # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_543_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_543_4];         jmp   rax
.Lmain_α_543_7:         add              rsp, 16
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n538_call_prolog_α
                                                                              jmp   n529_var_ref_α
.Lmain_β_543_0:         .quad            .Lmain_β_543_0_s
.Lmain_β_543_0_s:       .string          "data/1"
                        .size            n528_call_proc_staged_bx, .-n528_call_proc_staged_bx
                        .type            n529_var_ref_bx, @function
n529_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 400]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n530_var_ref_α
                        .size            n529_var_ref_bx, .-n529_var_ref_bx
                        .type            n530_var_ref_bx, @function
n530_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 384]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n531_call_proc_staged_α
                        .size            n530_var_ref_bx, .-n530_var_ref_bx
                        .type            n531_call_proc_staged_bx, @function
n531_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n531_call_proc_staged_α:
                        mov              r11, 214
                        mov              qword ptr [rsp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_549_200
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_549_201
.Lmain_α_549_200:       mov              edi, 0
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
.Lmain_α_549_201:       lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_549_202
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_549_203
.Lmain_α_549_202:       mov              edi, 1
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
.Lmain_α_549_203:       sub              rsp, 8
                        lea              rax, [rip + .Lmain_α_549_7]          # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lmain_α_549_1
                        lea              rcx, [rip + .Lmain_α_549_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_549_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_549_4];         jmp   rax
.Lmain_α_549_3:         add              rsp, 16
                        mov              qword ptr [rsp + 248], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lmain_α_549_5
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_549_2
.Lmain_α_549_5:         call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_549_2
.Lmain_α_549_4:         add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lmain_α_549_6
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_549_2
.Lmain_α_549_6:         call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_549_2
.Lmain_α_549_1:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_549_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_549_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lmain_α_549_29:        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n528_call_proc_staged_β
                                                                              jmp   n532_var_α
n531_call_proc_staged_β:
                        mov              r11, 214
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
                        test             rax, rax;                            je    n528_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              ecx, 48
                        mov              r8d, 1104
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
                        test             rax, rax;                            je    n528_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lmain_α_549_7]
                        push             r8
                        lea              rcx, [rip + .Lmain_α_549_4]          # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_549_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_549_4];         jmp   rax
.Lmain_α_549_7:         add              rsp, 16
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n528_call_proc_staged_β
                                                                              jmp   n532_var_α
.Lmain_β_549_0:         .quad            .Lmain_β_549_0_s
.Lmain_β_549_0_s:       .string          "nrev/2"
                        .size            n531_call_proc_staged_bx, .-n531_call_proc_staged_bx
                        .type            n532_var_bx, @function
n532_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n532_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 184], rax;          jmp   n533_call_prolog_α
                        .size            n532_var_bx, .-n532_var_bx
                        .type            n533_call_prolog_bx, @function
n533_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n533_call_prolog_α:     mov              r11, 216
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn553:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn553]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n531_call_proc_staged_β
                                                                              jmp   n534_lit_string_α
n533_call_prolog_β:     mov              r11, 216;                            jmp   n531_call_proc_staged_β
                        .size            n533_call_prolog_bx, .-n533_call_prolog_bx
                        .type            n534_lit_string_bx, @function
n534_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lmain_α_554_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n535_call_prolog_α
.Lmain_α_554_0:         .quad            .Lmain_α_554_0_s
.Lmain_α_554_0_s:       .string          ""
                        .size            n534_lit_string_bx, .-n534_lit_string_bx
                        .type            n535_call_prolog_bx, @function
n535_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n535_call_prolog_α:     mov              r11, 218
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn556:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn556]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n531_call_proc_staged_β
                                                                              jmp   n536_move_label_α
n535_call_prolog_β:     mov              r11, 218;                            jmp   n531_call_proc_staged_β
                        .size            n535_call_prolog_bx, .-n535_call_prolog_bx
                        .type            n536_move_label_bx, @function
n536_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n536_move_label_α:      mov              r11, 219
                        lea              rax, [rip + n531_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
                        .size            n536_move_label_bx, .-n536_move_label_bx
                        .type            n537_disjunction_bx, @function
n537_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n537_disjunction_α:     mov              r11, 220
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
n537_disjunction_β:     mov              r11, 220;                            jmp   main_ω
                        .size            n537_disjunction_bx, .-n537_disjunction_bx
                        .type            n538_call_prolog_bx, @function
n538_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n538_call_prolog_α:     mov              r11, 221
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
                                                                              jmp   main_ω
n538_call_prolog_β:     mov              r11, 221;                            jmp   main_ω
                        .size            n538_call_prolog_bx, .-n538_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n537_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 440]
                        add              rsp, 464;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 448]
                        add              rsp, 464;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "reverse/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__reverse$2F2
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
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$reverse_/3"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__$reverse_$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1248
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "append/3"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__append$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1168
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "nrev/2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__nrev$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1184
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "data/2"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__data$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1152
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "data/1"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__data$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            320
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "app/3"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__app$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1168
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
