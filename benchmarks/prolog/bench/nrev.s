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
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx13_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx13_101
.Lx13_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx13_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx13_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx13_101
.Lx13_100:              lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx13_101:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    reverse$2F2_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n3_call_prolog_α
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
.Lx18_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx18_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx18_41
                        cmp              esi, 1;                              jne   .Lx18_55
                        mov              r8, rax;                             jmp   .Lx18_40
.Lx18_55:               cmp              esi, 2;                              jne   .Lx18_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx18_41
                        mov              r8, rax;                             jmp   .Lx18_40
.Lx18_56:               cmp              al, 72;                              jne   .Lx18_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx18_41
                        cmp              rax, r8;                             je    .Lx18_41
                        mov              r8, rax;                             jmp   .Lx18_40
.Lx18_41:               lea              r9, [rsp + 368]
.Lx18_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx18_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx18_43
                        cmp              esi, 1;                              jne   .Lx18_57
                        mov              r9, rax;                             jmp   .Lx18_42
.Lx18_57:               cmp              esi, 2;                              jne   .Lx18_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx18_43
                        mov              r9, rax;                             jmp   .Lx18_42
.Lx18_58:               cmp              al, 72;                              jne   .Lx18_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx18_43
                        cmp              rax, r9;                             je    .Lx18_43
                        mov              r9, rax;                             jmp   .Lx18_42
.Lx18_43:               cmp              r8, r9;                              je    .Lx18_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx18_44
                        cmp              al, 104;                             je    .Lx18_44
                        cmp              al, 72;                              jne   .Lx18_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx18_44
                                                                              jmp   .Lx18_45
.Lx18_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx18_53
                        cmp              al, 104;                             je    .Lx18_53
                        cmp              al, 72;                              jne   .Lx18_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx18_53
                                                                              jmp   .Lx18_46
.Lx18_46:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx18_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx18_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx18_51
.Lx18_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx18_47
                        cmp              al, 104;                             je    .Lx18_47
                        cmp              al, 72;                              jne   .Lx18_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx18_47
                                                                              jmp   .Lx18_48
.Lx18_47:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx18_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx18_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx18_51
.Lx18_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx18_49
                        cmp              dl, 80;                              je    .Lx18_53
                                                                              jmp   .Lx18_52
.Lx18_49:               cmp              dl, 80;                              je    .Lx18_52
                        cmp              cl, 5;                               je    .Lx18_53
                        cmp              dl, 5;                               je    .Lx18_53
                        cmp              cl, 3;                               jne   .Lx18_50
                        cmp              dl, 3;                               jne   .Lx18_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx18_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx18_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx18_51
                                                                              jmp   .Lx18_52
.Lx18_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx18_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx18_53
.Lx18_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx18_54
.Lx18_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx18_54
.Lx18_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx18_54:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n12_call_prolog_α
                                                                              jmp   n4_var_ref_α
n3_call_prolog_β:       mov              r11, 4;                              jmp   n12_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n6_call_prolog_α
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
.Lx23_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx23_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx23_41
                        cmp              esi, 1;                              jne   .Lx23_55
                        mov              r8, rax;                             jmp   .Lx23_40
.Lx23_55:               cmp              esi, 2;                              jne   .Lx23_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx23_41
                        mov              r8, rax;                             jmp   .Lx23_40
.Lx23_56:               cmp              al, 72;                              jne   .Lx23_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx23_41
                        cmp              rax, r8;                             je    .Lx23_41
                        mov              r8, rax;                             jmp   .Lx23_40
.Lx23_41:               lea              r9, [rsp + 288]
.Lx23_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx23_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx23_43
                        cmp              esi, 1;                              jne   .Lx23_57
                        mov              r9, rax;                             jmp   .Lx23_42
.Lx23_57:               cmp              esi, 2;                              jne   .Lx23_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx23_43
                        mov              r9, rax;                             jmp   .Lx23_42
.Lx23_58:               cmp              al, 72;                              jne   .Lx23_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx23_43
                        cmp              rax, r9;                             je    .Lx23_43
                        mov              r9, rax;                             jmp   .Lx23_42
.Lx23_43:               cmp              r8, r9;                              je    .Lx23_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx23_44
                        cmp              al, 104;                             je    .Lx23_44
                        cmp              al, 72;                              jne   .Lx23_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx23_44
                                                                              jmp   .Lx23_45
.Lx23_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx23_53
                        cmp              al, 104;                             je    .Lx23_53
                        cmp              al, 72;                              jne   .Lx23_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx23_53
                                                                              jmp   .Lx23_46
.Lx23_46:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx23_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx23_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx23_51
.Lx23_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx23_47
                        cmp              al, 104;                             je    .Lx23_47
                        cmp              al, 72;                              jne   .Lx23_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx23_47
                                                                              jmp   .Lx23_48
.Lx23_47:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx23_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx23_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx23_51
.Lx23_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx23_49
                        cmp              dl, 80;                              je    .Lx23_53
                                                                              jmp   .Lx23_52
.Lx23_49:               cmp              dl, 80;                              je    .Lx23_52
                        cmp              cl, 5;                               je    .Lx23_53
                        cmp              dl, 5;                               je    .Lx23_53
                        cmp              cl, 3;                               jne   .Lx23_50
                        cmp              dl, 3;                               jne   .Lx23_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx23_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx23_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx23_51
                                                                              jmp   .Lx23_52
.Lx23_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx23_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx23_53
.Lx23_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx23_54
.Lx23_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx23_54
.Lx23_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx23_54:               mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n12_call_prolog_α
                                                                              jmp   n7_var_ref_α
n6_call_prolog_β:       mov              r11, 7;                              jmp   n12_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n9_var_ref_α
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n10_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_proc_staged_α: mov              r11, 11
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx30_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx30_201
.Lx30_200:              mov              edi, 0
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
.Lx30_201:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx30_202
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx30_203
.Lx30_202:              mov              edi, 1
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
.Lx30_203:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx30_204
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx30_205
.Lx30_204:              mov              edi, 2
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
.Lx30_205:              lea              rax, [rip + .Lx30_7]
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
                        test             rax, rax;                            je    .Lx30_1
                        lea              rcx, [rip + .Lx30_4]
                        push             rcx
                        lea              rcx, [rip + .Lx30_3]
                        push             rcx
                        lea              rdx, [rip + .Lx30_4];                jmp   rax
.Lx30_3:                add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx30_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx30_2
.Lx30_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx30_2
.Lx30_4:                add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx30_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx30_2
.Lx30_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx30_2
.Lx30_1:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx30_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx30_29
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
.Lx30_29:               mov              qword ptr [rsp + 112], rax
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
                        lea              r8, [rip + .Lx30_7]
                        push             r8
                        lea              rcx, [rip + .Lx30_4]
                        push             rcx
                        lea              rcx, [rip + .Lx30_3]
                        push             rcx
                        lea              rdx, [rip + .Lx30_4];                jmp   rax
.Lx30_7:                add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n12_call_prolog_α
                                                                              jmp   n11_suspend_α
.Lx30_0:                .quad            .Lx30_0_s
.Lx30_0_s:              .string          "$reverse_/3"
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:          mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx32_61
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
.Lx32_61:               mov              rdi, qword ptr [rsp + 48]
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
                        test             r12, r12;                            je    .Lx33_50
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
.Lx33_50:               mov              rdi, rax
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
#-----------------------------------------------------------------------------------------------------------------------
n34_call_prolog_α:      mov              r11, 14
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx73_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx73_101
.Lx73_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx73_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx73_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx73_101
.Lx73_100:              lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx73_101:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    $reverse_$2F3_ω
                                                                              jmp   n35_var_ref_α
n34_call_prolog_β:      mov              r11, 14;                             jmp   $reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n37_lit_string_α
.Lx76_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 2
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n38_call_prolog_α
.Lx77_0:                .quad            .Lx77_0_s
.Lx77_0_s:              .string          "[]"
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
.Lx78_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx78_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx78_111
                        cmp              esi, 1;                              jne   .Lx78_112
                        mov              r8, rax;                             jmp   .Lx78_110
.Lx78_112:              cmp              esi, 2;                              jne   .Lx78_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx78_111
                        mov              r8, rax;                             jmp   .Lx78_110
.Lx78_113:              cmp              al, 72;                              jne   .Lx78_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx78_111
                        cmp              rax, r8;                             je    .Lx78_111
                        mov              r8, rax;                             jmp   .Lx78_110
.Lx78_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx78_114
                        cmp              al, 104;                             je    .Lx78_114
                        cmp              al, 72;                              jne   .Lx78_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx78_114
                                                                              jmp   .Lx78_118
.Lx78_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx78_115
                        cmp              al, 3;                               je    .Lx78_114
                        cmp              al, 2;                               jne   .Lx78_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx78_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx78_114
                                                                              jmp   .Lx78_116
.Lx78_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx78_117
.Lx78_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx78_117
.Lx78_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx78_117:              mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n50_var_ref_α
                                                                              jmp   n39_var_ref_α
n38_call_prolog_β:      mov              r11, 18;                             jmp   n50_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 2
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n41_call_prolog_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n41_call_prolog_α:      mov              r11, 21
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        mov              rsi, qword ptr [rip + .Lx82_2];      jmp   .Lx82_3
.Lx82_2:                .quad            .Lx82_2_s
.Lx82_2_s:              .string          "[]"
.Lx82_3:                mov              qword ptr [rip + rtccb+40], r8
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
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n43_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n44_call_prolog_α
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
.Lx87_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx87_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx87_41
                        cmp              esi, 1;                              jne   .Lx87_55
                        mov              r8, rax;                             jmp   .Lx87_40
.Lx87_55:               cmp              esi, 2;                              jne   .Lx87_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx87_41
                        mov              r8, rax;                             jmp   .Lx87_40
.Lx87_56:               cmp              al, 72;                              jne   .Lx87_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx87_41
                        cmp              rax, r8;                             je    .Lx87_41
                        mov              r8, rax;                             jmp   .Lx87_40
.Lx87_41:               lea              r9, [rsp + 928]
.Lx87_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx87_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx87_43
                        cmp              esi, 1;                              jne   .Lx87_57
                        mov              r9, rax;                             jmp   .Lx87_42
.Lx87_57:               cmp              esi, 2;                              jne   .Lx87_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx87_43
                        mov              r9, rax;                             jmp   .Lx87_42
.Lx87_58:               cmp              al, 72;                              jne   .Lx87_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx87_43
                        cmp              rax, r9;                             je    .Lx87_43
                        mov              r9, rax;                             jmp   .Lx87_42
.Lx87_43:               cmp              r8, r9;                              je    .Lx87_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx87_44
                        cmp              al, 104;                             je    .Lx87_44
                        cmp              al, 72;                              jne   .Lx87_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx87_44
                                                                              jmp   .Lx87_45
.Lx87_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx87_53
                        cmp              al, 104;                             je    .Lx87_53
                        cmp              al, 72;                              jne   .Lx87_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx87_53
                                                                              jmp   .Lx87_46
.Lx87_46:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx87_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx87_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx87_51
.Lx87_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx87_47
                        cmp              al, 104;                             je    .Lx87_47
                        cmp              al, 72;                              jne   .Lx87_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx87_47
                                                                              jmp   .Lx87_48
.Lx87_47:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx87_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx87_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx87_51
.Lx87_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx87_49
                        cmp              dl, 80;                              je    .Lx87_53
                                                                              jmp   .Lx87_52
.Lx87_49:               cmp              dl, 80;                              je    .Lx87_52
                        cmp              cl, 5;                               je    .Lx87_53
                        cmp              dl, 5;                               je    .Lx87_53
                        cmp              cl, 3;                               jne   .Lx87_50
                        cmp              dl, 3;                               jne   .Lx87_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx87_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx87_51
                                                                              jmp   .Lx87_52
.Lx87_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx87_53
.Lx87_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx87_54
.Lx87_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx87_54
.Lx87_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx87_54:               mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n49_call_prolog_α
                                                                              jmp   n45_var_ref_α
n44_call_prolog_β:      mov              r11, 24;                             jmp   n49_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n46_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n47_call_prolog_α
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
.Lx92_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx92_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx92_41
                        cmp              esi, 1;                              jne   .Lx92_55
                        mov              r8, rax;                             jmp   .Lx92_40
.Lx92_55:               cmp              esi, 2;                              jne   .Lx92_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx92_41
                        mov              r8, rax;                             jmp   .Lx92_40
.Lx92_56:               cmp              al, 72;                              jne   .Lx92_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx92_41
                        cmp              rax, r8;                             je    .Lx92_41
                        mov              r8, rax;                             jmp   .Lx92_40
.Lx92_41:               lea              r9, [rsp + 848]
.Lx92_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx92_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx92_43
                        cmp              esi, 1;                              jne   .Lx92_57
                        mov              r9, rax;                             jmp   .Lx92_42
.Lx92_57:               cmp              esi, 2;                              jne   .Lx92_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx92_43
                        mov              r9, rax;                             jmp   .Lx92_42
.Lx92_58:               cmp              al, 72;                              jne   .Lx92_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx92_43
                        cmp              rax, r9;                             je    .Lx92_43
                        mov              r9, rax;                             jmp   .Lx92_42
.Lx92_43:               cmp              r8, r9;                              je    .Lx92_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx92_44
                        cmp              al, 104;                             je    .Lx92_44
                        cmp              al, 72;                              jne   .Lx92_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx92_44
                                                                              jmp   .Lx92_45
.Lx92_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx92_53
                        cmp              al, 104;                             je    .Lx92_53
                        cmp              al, 72;                              jne   .Lx92_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx92_53
                                                                              jmp   .Lx92_46
.Lx92_46:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx92_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx92_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx92_51
.Lx92_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx92_47
                        cmp              al, 104;                             je    .Lx92_47
                        cmp              al, 72;                              jne   .Lx92_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx92_47
                                                                              jmp   .Lx92_48
.Lx92_47:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx92_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx92_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx92_51
.Lx92_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx92_49
                        cmp              dl, 80;                              je    .Lx92_53
                                                                              jmp   .Lx92_52
.Lx92_49:               cmp              dl, 80;                              je    .Lx92_52
                        cmp              cl, 5;                               je    .Lx92_53
                        cmp              dl, 5;                               je    .Lx92_53
                        cmp              cl, 3;                               jne   .Lx92_50
                        cmp              dl, 3;                               jne   .Lx92_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx92_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx92_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx92_51
                                                                              jmp   .Lx92_52
.Lx92_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx92_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx92_53
.Lx92_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx92_54
.Lx92_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx92_54
.Lx92_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx92_54:               mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n49_call_prolog_α
                                                                              jmp   n48_suspend_α
n47_call_prolog_β:      mov              r11, 27;                             jmp   n49_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_suspend_α:          mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx94_61
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
.Lx94_61:               mov              rdi, qword ptr [rsp + 64]
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
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n51_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n52_lit_integer_α
.Lx98_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n53_call_prolog_α
.Lx99_0:                .quad            0
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
.Lx100_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx100_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx100_111
                        cmp              esi, 1;                              jne   .Lx100_112
                        mov              r8, rax;                             jmp   .Lx100_110
.Lx100_112:             cmp              esi, 2;                              jne   .Lx100_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx100_111
                        mov              r8, rax;                             jmp   .Lx100_110
.Lx100_113:             cmp              al, 72;                              jne   .Lx100_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx100_111
                        cmp              rax, r8;                             je    .Lx100_111
                        mov              r8, rax;                             jmp   .Lx100_110
.Lx100_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx100_114
                        cmp              al, 104;                             je    .Lx100_114
                        cmp              al, 72;                              jne   .Lx100_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx100_114
                                                                              jmp   .Lx100_118
.Lx100_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx100_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lx100_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx100_115
                                                                              jmp   .Lx100_114
.Lx100_119:             cmp              al, 3;                               jne   .Lx100_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx100_114
                                                                              jmp   .Lx100_115
.Lx100_120:             cmp              al, 2;                               jne   .Lx100_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx100_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx100_114
                                                                              jmp   .Lx100_115
.Lx100_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx100_117
.Lx100_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx100_117
.Lx100_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx100_117:             mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n54_var_ref_α
n53_call_prolog_β:      mov              r11, 33;                             jmp   n72_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n56_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n57_call_prolog_α
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
.Lx107_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx107_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx107_61
                        cmp              esi, 1;                              jne   .Lx107_62
                        mov              r8, rax;                             jmp   .Lx107_60
.Lx107_62:              cmp              esi, 2;                              jne   .Lx107_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx107_61
                        mov              r8, rax;                             jmp   .Lx107_60
.Lx107_63:              cmp              al, 72;                              jne   .Lx107_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx107_61
                        cmp              rax, r8;                             je    .Lx107_61
                        mov              r8, rax;                             jmp   .Lx107_60
.Lx107_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx107_80
                        cmp              al, 104;                             je    .Lx107_80
                        cmp              al, 72;                              jne   .Lx107_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx107_80
                                                                              jmp   .Lx107_74
.Lx107_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx107_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx107_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx107_73
                        lea              r9, [rsp + 592]
.Lx107_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx107_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx107_65
                        cmp              esi, 1;                              jne   .Lx107_66
                        mov              r9, rax;                             jmp   .Lx107_64
.Lx107_66:              cmp              esi, 2;                              jne   .Lx107_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx107_65
                        mov              r9, rax;                             jmp   .Lx107_64
.Lx107_67:              cmp              al, 72;                              jne   .Lx107_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx107_65
                        cmp              rax, r9;                             je    .Lx107_65
                        mov              r9, rax;                             jmp   .Lx107_64
.Lx107_65:              lea              rcx, [rsp + 608]
.Lx107_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx107_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx107_69
                        cmp              esi, 1;                              jne   .Lx107_70
                        mov              rcx, rax;                            jmp   .Lx107_68
.Lx107_70:              cmp              esi, 2;                              jne   .Lx107_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx107_69
                        mov              rcx, rax;                            jmp   .Lx107_68
.Lx107_71:              cmp              al, 72;                              jne   .Lx107_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx107_69
                        cmp              rax, rcx;                            je    .Lx107_69
                        mov              rcx, rax;                            jmp   .Lx107_68
.Lx107_69:              cmp              r9, rcx;                             je    .Lx107_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx107_75
                        cmp              al, 104;                             je    .Lx107_75
                        cmp              al, 72;                              jne   .Lx107_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx107_75
                                                                              jmp   .Lx107_72
.Lx107_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx107_76
                        cmp              al, 104;                             je    .Lx107_76
                        cmp              al, 72;                              jne   .Lx107_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx107_76
                                                                              jmp   .Lx107_72
.Lx107_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx107_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx107_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx107_77
.Lx107_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx107_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx107_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx107_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx107_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx107_72
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
.Lx107_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx107_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx107_82
                        cmp              esi, 1;                              jne   .Lx107_83
                        mov              r9, rax;                             jmp   .Lx107_81
.Lx107_83:              cmp              esi, 2;                              jne   .Lx107_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx107_82
                        mov              r9, rax;                             jmp   .Lx107_81
.Lx107_84:              cmp              al, 72;                              jne   .Lx107_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx107_82
                        cmp              rax, r9;                             je    .Lx107_82
                        mov              r9, rax;                             jmp   .Lx107_81
.Lx107_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx107_85
                        cmp              al, 104;                             je    .Lx107_85
                        cmp              al, 72;                              jne   .Lx107_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx107_85
                                                                              jmp   .Lx107_86
.Lx107_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx107_87
.Lx107_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx107_87:              lea              rcx, [rsp + 608]
.Lx107_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx107_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx107_89
                        cmp              esi, 1;                              jne   .Lx107_90
                        mov              rcx, rax;                            jmp   .Lx107_88
.Lx107_90:              cmp              esi, 2;                              jne   .Lx107_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx107_89
                        mov              rcx, rax;                            jmp   .Lx107_88
.Lx107_91:              cmp              al, 72;                              jne   .Lx107_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx107_89
                        cmp              rax, rcx;                            je    .Lx107_89
                        mov              rcx, rax;                            jmp   .Lx107_88
.Lx107_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx107_92
                        cmp              al, 104;                             je    .Lx107_92
                        cmp              al, 72;                              jne   .Lx107_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx107_92
                                                                              jmp   .Lx107_93
.Lx107_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx107_94
.Lx107_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx107_94:              lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx107_77
.Lx107_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx107_77
.Lx107_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx107_77:              mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n58_var_ref_α
n57_call_prolog_β:      mov              r11, 37;                             jmp   n72_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n59_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n60_call_prolog_α
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
.Lx112_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx112_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx112_41
                        cmp              esi, 1;                              jne   .Lx112_55
                        mov              r8, rax;                             jmp   .Lx112_40
.Lx112_55:              cmp              esi, 2;                              jne   .Lx112_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx112_41
                        mov              r8, rax;                             jmp   .Lx112_40
.Lx112_56:              cmp              al, 72;                              jne   .Lx112_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx112_41
                        cmp              rax, r8;                             je    .Lx112_41
                        mov              r8, rax;                             jmp   .Lx112_40
.Lx112_41:              lea              r9, [rsp + 496]
.Lx112_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx112_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx112_43
                        cmp              esi, 1;                              jne   .Lx112_57
                        mov              r9, rax;                             jmp   .Lx112_42
.Lx112_57:              cmp              esi, 2;                              jne   .Lx112_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx112_43
                        mov              r9, rax;                             jmp   .Lx112_42
.Lx112_58:              cmp              al, 72;                              jne   .Lx112_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx112_43
                        cmp              rax, r9;                             je    .Lx112_43
                        mov              r9, rax;                             jmp   .Lx112_42
.Lx112_43:              cmp              r8, r9;                              je    .Lx112_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx112_44
                        cmp              al, 104;                             je    .Lx112_44
                        cmp              al, 72;                              jne   .Lx112_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx112_44
                                                                              jmp   .Lx112_45
.Lx112_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx112_53
                        cmp              al, 104;                             je    .Lx112_53
                        cmp              al, 72;                              jne   .Lx112_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx112_53
                                                                              jmp   .Lx112_46
.Lx112_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx112_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx112_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx112_51
.Lx112_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx112_47
                        cmp              al, 104;                             je    .Lx112_47
                        cmp              al, 72;                              jne   .Lx112_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx112_47
                                                                              jmp   .Lx112_48
.Lx112_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx112_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx112_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx112_51
.Lx112_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx112_49
                        cmp              dl, 80;                              je    .Lx112_53
                                                                              jmp   .Lx112_52
.Lx112_49:              cmp              dl, 80;                              je    .Lx112_52
                        cmp              cl, 5;                               je    .Lx112_53
                        cmp              dl, 5;                               je    .Lx112_53
                        cmp              cl, 3;                               jne   .Lx112_50
                        cmp              dl, 3;                               jne   .Lx112_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx112_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx112_51
                                                                              jmp   .Lx112_52
.Lx112_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx112_53
.Lx112_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx112_54
.Lx112_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx112_54
.Lx112_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx112_54:              mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n61_var_ref_α
n60_call_prolog_β:      mov              r11, 40;                             jmp   n72_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n63_call_prolog_α
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
.Lx117_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx117_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx117_41
                        cmp              esi, 1;                              jne   .Lx117_55
                        mov              r8, rax;                             jmp   .Lx117_40
.Lx117_55:              cmp              esi, 2;                              jne   .Lx117_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx117_41
                        mov              r8, rax;                             jmp   .Lx117_40
.Lx117_56:              cmp              al, 72;                              jne   .Lx117_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx117_41
                        cmp              rax, r8;                             je    .Lx117_41
                        mov              r8, rax;                             jmp   .Lx117_40
.Lx117_41:              lea              r9, [rsp + 416]
.Lx117_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx117_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx117_43
                        cmp              esi, 1;                              jne   .Lx117_57
                        mov              r9, rax;                             jmp   .Lx117_42
.Lx117_57:              cmp              esi, 2;                              jne   .Lx117_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx117_43
                        mov              r9, rax;                             jmp   .Lx117_42
.Lx117_58:              cmp              al, 72;                              jne   .Lx117_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx117_43
                        cmp              rax, r9;                             je    .Lx117_43
                        mov              r9, rax;                             jmp   .Lx117_42
.Lx117_43:              cmp              r8, r9;                              je    .Lx117_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx117_44
                        cmp              al, 104;                             je    .Lx117_44
                        cmp              al, 72;                              jne   .Lx117_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx117_44
                                                                              jmp   .Lx117_45
.Lx117_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx117_53
                        cmp              al, 104;                             je    .Lx117_53
                        cmp              al, 72;                              jne   .Lx117_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx117_53
                                                                              jmp   .Lx117_46
.Lx117_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx117_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx117_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx117_51
.Lx117_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx117_47
                        cmp              al, 104;                             je    .Lx117_47
                        cmp              al, 72;                              jne   .Lx117_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx117_47
                                                                              jmp   .Lx117_48
.Lx117_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx117_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx117_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx117_51
.Lx117_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx117_49
                        cmp              dl, 80;                              je    .Lx117_53
                                                                              jmp   .Lx117_52
.Lx117_49:              cmp              dl, 80;                              je    .Lx117_52
                        cmp              cl, 5;                               je    .Lx117_53
                        cmp              dl, 5;                               je    .Lx117_53
                        cmp              cl, 3;                               jne   .Lx117_50
                        cmp              dl, 3;                               jne   .Lx117_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx117_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx117_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx117_51
                                                                              jmp   .Lx117_52
.Lx117_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx117_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx117_53
.Lx117_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx117_54
.Lx117_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx117_54
.Lx117_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx117_54:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n64_var_ref_α
n63_call_prolog_β:      mov              r11, 43;                             jmp   n72_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n65_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n66_var_ref_α
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n68_call_prolog_α
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
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n70_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_proc_staged_α: mov              r11, 50
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx129_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx129_201
.Lx129_200:             mov              edi, 0
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
.Lx129_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx129_202
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx129_203
.Lx129_202:             mov              edi, 1
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
.Lx129_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx129_204
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx129_205
.Lx129_204:             mov              edi, 2
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
.Lx129_205:             lea              rax, [rip + .Lx129_7]
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
                        test             rax, rax;                            je    .Lx129_1
                        lea              rcx, [rip + .Lx129_4]
                        push             rcx
                        lea              rcx, [rip + .Lx129_3]
                        push             rcx
                        lea              rdx, [rip + .Lx129_4];               jmp   rax
.Lx129_3:               add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx129_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx129_2
.Lx129_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx129_2
.Lx129_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx129_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx129_2
.Lx129_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx129_2
.Lx129_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx129_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx129_29
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
.Lx129_29:              mov              qword ptr [rsp + 128], rax
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
                        lea              r8, [rip + .Lx129_7]
                        push             r8
                        lea              rcx, [rip + .Lx129_4]
                        push             rcx
                        lea              rcx, [rip + .Lx129_3]
                        push             rcx
                        lea              rdx, [rip + .Lx129_4];               jmp   rax
.Lx129_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n71_suspend_α
.Lx129_0:               .quad            .Lx129_0_s
.Lx129_0_s:             .string          "$reverse_/3"
#-----------------------------------------------------------------------------------------------------------------------
n71_suspend_α:          mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx131_61
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
.Lx131_61:              mov              rdi, qword ptr [rsp + 64]
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
                        test             r12, r12;                            je    .Lx132_50
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
.Lx132_50:              mov              rdi, rax
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
#-----------------------------------------------------------------------------------------------------------------------
n133_call_prolog_α:     mov              r11, 53
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx170_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx170_101
.Lx170_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx170_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx170_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx170_101
.Lx170_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx170_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    append$2F3_ω
                                                                              jmp   n134_var_ref_α
n133_call_prolog_β:     mov              r11, 53;                             jmp   append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     mov              r11, 55
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n136_lit_string_α
.Lx173_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              r11, 56
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 2
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n137_call_prolog_α
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "[]"
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
.Lx175_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx175_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx175_111
                        cmp              esi, 1;                              jne   .Lx175_112
                        mov              r8, rax;                             jmp   .Lx175_110
.Lx175_112:             cmp              esi, 2;                              jne   .Lx175_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx175_111
                        mov              r8, rax;                             jmp   .Lx175_110
.Lx175_113:             cmp              al, 72;                              jne   .Lx175_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx175_111
                        cmp              rax, r8;                             je    .Lx175_111
                        mov              r8, rax;                             jmp   .Lx175_110
.Lx175_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx175_114
                        cmp              al, 104;                             je    .Lx175_114
                        cmp              al, 72;                              jne   .Lx175_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx175_114
                                                                              jmp   .Lx175_118
.Lx175_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx175_115
                        cmp              al, 3;                               je    .Lx175_114
                        cmp              al, 2;                               jne   .Lx175_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx175_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx175_114
                                                                              jmp   .Lx175_116
.Lx175_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx175_117
.Lx175_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx175_117
.Lx175_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx175_117:             mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n149_var_ref_α
                                                                              jmp   n138_var_ref_α
n137_call_prolog_β:     mov              r11, 57;                             jmp   n149_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n139_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              r11, 59
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n140_call_prolog_α
.Lx178_0:               .quad            .Lx178_0_s
.Lx178_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n140_call_prolog_α:     mov              r11, 60
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        mov              rsi, qword ptr [rip + .Lx179_2];     jmp   .Lx179_3
.Lx179_2:               .quad            .Lx179_2_s
.Lx179_2_s:             .string          "[]"
.Lx179_3:               mov              qword ptr [rip + rtccb+40], r8
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
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n142_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n143_call_prolog_α
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
.Lx184_41:              lea              r9, [rsp + 848]
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
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx184_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx184_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx184_51
.Lx184_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx184_47
                        cmp              al, 104;                             je    .Lx184_47
                        cmp              al, 72;                              jne   .Lx184_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx184_47
                                                                              jmp   .Lx184_48
.Lx184_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx184_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx184_53
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx184_54:              mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n148_call_prolog_α
                                                                              jmp   n144_var_ref_α
n143_call_prolog_β:     mov              r11, 63;                             jmp   n148_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n146_call_prolog_α
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
.Lx189_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx189_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx189_41
                        cmp              esi, 1;                              jne   .Lx189_55
                        mov              r8, rax;                             jmp   .Lx189_40
.Lx189_55:              cmp              esi, 2;                              jne   .Lx189_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx189_41
                        mov              r8, rax;                             jmp   .Lx189_40
.Lx189_56:              cmp              al, 72;                              jne   .Lx189_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx189_41
                        cmp              rax, r8;                             je    .Lx189_41
                        mov              r8, rax;                             jmp   .Lx189_40
.Lx189_41:              lea              r9, [rsp + 768]
.Lx189_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx189_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx189_43
                        cmp              esi, 1;                              jne   .Lx189_57
                        mov              r9, rax;                             jmp   .Lx189_42
.Lx189_57:              cmp              esi, 2;                              jne   .Lx189_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx189_43
                        mov              r9, rax;                             jmp   .Lx189_42
.Lx189_58:              cmp              al, 72;                              jne   .Lx189_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx189_43
                        cmp              rax, r9;                             je    .Lx189_43
                        mov              r9, rax;                             jmp   .Lx189_42
.Lx189_43:              cmp              r8, r9;                              je    .Lx189_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx189_44
                        cmp              al, 104;                             je    .Lx189_44
                        cmp              al, 72;                              jne   .Lx189_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx189_44
                                                                              jmp   .Lx189_45
.Lx189_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx189_53
                        cmp              al, 104;                             je    .Lx189_53
                        cmp              al, 72;                              jne   .Lx189_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx189_53
                                                                              jmp   .Lx189_46
.Lx189_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx189_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx189_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx189_51
.Lx189_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx189_47
                        cmp              al, 104;                             je    .Lx189_47
                        cmp              al, 72;                              jne   .Lx189_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx189_47
                                                                              jmp   .Lx189_48
.Lx189_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx189_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx189_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx189_51
.Lx189_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx189_49
                        cmp              dl, 80;                              je    .Lx189_53
                                                                              jmp   .Lx189_52
.Lx189_49:              cmp              dl, 80;                              je    .Lx189_52
                        cmp              cl, 5;                               je    .Lx189_53
                        cmp              dl, 5;                               je    .Lx189_53
                        cmp              cl, 3;                               jne   .Lx189_50
                        cmp              dl, 3;                               jne   .Lx189_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx189_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx189_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx189_51
                                                                              jmp   .Lx189_52
.Lx189_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx189_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx189_53
.Lx189_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx189_54
.Lx189_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx189_54
.Lx189_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx189_54:              mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n148_call_prolog_α
                                                                              jmp   n147_suspend_α
n146_call_prolog_β:     mov              r11, 66;                             jmp   n148_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_suspend_α:         mov              r11, 67
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx191_61
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
.Lx191_61:              mov              rdi, qword ptr [rsp + 64]
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
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n150_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     mov              r11, 70
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n151_lit_integer_α
.Lx195_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:     mov              r11, 71
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n152_call_prolog_α
.Lx196_0:               .quad            0
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
.Lx197_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx197_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx197_111
                        cmp              esi, 1;                              jne   .Lx197_112
                        mov              r8, rax;                             jmp   .Lx197_110
.Lx197_112:             cmp              esi, 2;                              jne   .Lx197_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx197_111
                        mov              r8, rax;                             jmp   .Lx197_110
.Lx197_113:             cmp              al, 72;                              jne   .Lx197_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx197_111
                        cmp              rax, r8;                             je    .Lx197_111
                        mov              r8, rax;                             jmp   .Lx197_110
.Lx197_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx197_114
                        cmp              al, 104;                             je    .Lx197_114
                        cmp              al, 72;                              jne   .Lx197_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx197_114
                                                                              jmp   .Lx197_118
.Lx197_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx197_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lx197_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx197_115
                                                                              jmp   .Lx197_114
.Lx197_119:             cmp              al, 3;                               jne   .Lx197_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx197_114
                                                                              jmp   .Lx197_115
.Lx197_120:             cmp              al, 2;                               jne   .Lx197_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx197_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx197_114
                                                                              jmp   .Lx197_115
.Lx197_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx197_117
.Lx197_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx197_117
.Lx197_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx197_117:             mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n153_var_ref_α
n152_call_prolog_β:     mov              r11, 72;                             jmp   n169_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n154_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n155_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n156_call_prolog_α
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
.Lx204_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx204_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx204_61
                        cmp              esi, 1;                              jne   .Lx204_62
                        mov              r8, rax;                             jmp   .Lx204_60
.Lx204_62:              cmp              esi, 2;                              jne   .Lx204_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx204_61
                        mov              r8, rax;                             jmp   .Lx204_60
.Lx204_63:              cmp              al, 72;                              jne   .Lx204_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx204_61
                        cmp              rax, r8;                             je    .Lx204_61
                        mov              r8, rax;                             jmp   .Lx204_60
.Lx204_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx204_80
                        cmp              al, 104;                             je    .Lx204_80
                        cmp              al, 72;                              jne   .Lx204_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx204_80
                                                                              jmp   .Lx204_74
.Lx204_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx204_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx204_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx204_73
                        lea              r9, [rsp + 512]
.Lx204_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx204_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx204_65
                        cmp              esi, 1;                              jne   .Lx204_66
                        mov              r9, rax;                             jmp   .Lx204_64
.Lx204_66:              cmp              esi, 2;                              jne   .Lx204_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx204_65
                        mov              r9, rax;                             jmp   .Lx204_64
.Lx204_67:              cmp              al, 72;                              jne   .Lx204_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx204_65
                        cmp              rax, r9;                             je    .Lx204_65
                        mov              r9, rax;                             jmp   .Lx204_64
.Lx204_65:              lea              rcx, [rsp + 528]
.Lx204_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx204_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx204_69
                        cmp              esi, 1;                              jne   .Lx204_70
                        mov              rcx, rax;                            jmp   .Lx204_68
.Lx204_70:              cmp              esi, 2;                              jne   .Lx204_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx204_69
                        mov              rcx, rax;                            jmp   .Lx204_68
.Lx204_71:              cmp              al, 72;                              jne   .Lx204_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx204_69
                        cmp              rax, rcx;                            je    .Lx204_69
                        mov              rcx, rax;                            jmp   .Lx204_68
.Lx204_69:              cmp              r9, rcx;                             je    .Lx204_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx204_75
                        cmp              al, 104;                             je    .Lx204_75
                        cmp              al, 72;                              jne   .Lx204_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx204_75
                                                                              jmp   .Lx204_72
.Lx204_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx204_76
                        cmp              al, 104;                             je    .Lx204_76
                        cmp              al, 72;                              jne   .Lx204_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx204_76
                                                                              jmp   .Lx204_72
.Lx204_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx204_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx204_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx204_77
.Lx204_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx204_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx204_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx204_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx204_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx204_72
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
.Lx204_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx204_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx204_82
                        cmp              esi, 1;                              jne   .Lx204_83
                        mov              r9, rax;                             jmp   .Lx204_81
.Lx204_83:              cmp              esi, 2;                              jne   .Lx204_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx204_82
                        mov              r9, rax;                             jmp   .Lx204_81
.Lx204_84:              cmp              al, 72;                              jne   .Lx204_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx204_82
                        cmp              rax, r9;                             je    .Lx204_82
                        mov              r9, rax;                             jmp   .Lx204_81
.Lx204_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx204_85
                        cmp              al, 104;                             je    .Lx204_85
                        cmp              al, 72;                              jne   .Lx204_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx204_85
                                                                              jmp   .Lx204_86
.Lx204_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx204_87
.Lx204_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx204_87:              lea              rcx, [rsp + 528]
.Lx204_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx204_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx204_89
                        cmp              esi, 1;                              jne   .Lx204_90
                        mov              rcx, rax;                            jmp   .Lx204_88
.Lx204_90:              cmp              esi, 2;                              jne   .Lx204_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx204_89
                        mov              rcx, rax;                            jmp   .Lx204_88
.Lx204_91:              cmp              al, 72;                              jne   .Lx204_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx204_89
                        cmp              rax, rcx;                            je    .Lx204_89
                        mov              rcx, rax;                            jmp   .Lx204_88
.Lx204_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx204_92
                        cmp              al, 104;                             je    .Lx204_92
                        cmp              al, 72;                              jne   .Lx204_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx204_92
                                                                              jmp   .Lx204_93
.Lx204_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx204_94
.Lx204_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx204_94:              lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx204_77
.Lx204_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx204_77
.Lx204_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx204_77:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n157_var_ref_α
n156_call_prolog_β:     mov              r11, 76;                             jmp   n169_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n158_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n159_call_prolog_α
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
.Lx209_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx209_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx209_41
                        cmp              esi, 1;                              jne   .Lx209_55
                        mov              r8, rax;                             jmp   .Lx209_40
.Lx209_55:              cmp              esi, 2;                              jne   .Lx209_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx209_41
                        mov              r8, rax;                             jmp   .Lx209_40
.Lx209_56:              cmp              al, 72;                              jne   .Lx209_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx209_41
                        cmp              rax, r8;                             je    .Lx209_41
                        mov              r8, rax;                             jmp   .Lx209_40
.Lx209_41:              lea              r9, [rsp + 416]
.Lx209_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx209_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx209_43
                        cmp              esi, 1;                              jne   .Lx209_57
                        mov              r9, rax;                             jmp   .Lx209_42
.Lx209_57:              cmp              esi, 2;                              jne   .Lx209_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx209_43
                        mov              r9, rax;                             jmp   .Lx209_42
.Lx209_58:              cmp              al, 72;                              jne   .Lx209_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx209_43
                        cmp              rax, r9;                             je    .Lx209_43
                        mov              r9, rax;                             jmp   .Lx209_42
.Lx209_43:              cmp              r8, r9;                              je    .Lx209_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx209_44
                        cmp              al, 104;                             je    .Lx209_44
                        cmp              al, 72;                              jne   .Lx209_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx209_44
                                                                              jmp   .Lx209_45
.Lx209_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx209_53
                        cmp              al, 104;                             je    .Lx209_53
                        cmp              al, 72;                              jne   .Lx209_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx209_53
                                                                              jmp   .Lx209_46
.Lx209_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx209_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx209_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx209_51
.Lx209_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx209_47
                        cmp              al, 104;                             je    .Lx209_47
                        cmp              al, 72;                              jne   .Lx209_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx209_47
                                                                              jmp   .Lx209_48
.Lx209_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx209_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx209_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx209_51
.Lx209_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx209_49
                        cmp              dl, 80;                              je    .Lx209_53
                                                                              jmp   .Lx209_52
.Lx209_49:              cmp              dl, 80;                              je    .Lx209_52
                        cmp              cl, 5;                               je    .Lx209_53
                        cmp              dl, 5;                               je    .Lx209_53
                        cmp              cl, 3;                               jne   .Lx209_50
                        cmp              dl, 3;                               jne   .Lx209_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx209_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx209_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx209_51
                                                                              jmp   .Lx209_52
.Lx209_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx209_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx209_53
.Lx209_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx209_54
.Lx209_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx209_54
.Lx209_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx209_54:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n160_var_ref_α
n159_call_prolog_β:     mov              r11, 79;                             jmp   n169_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n161_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n162_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n163_call_prolog_α
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
.Lx216_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx216_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx216_61
                        cmp              esi, 1;                              jne   .Lx216_62
                        mov              r8, rax;                             jmp   .Lx216_60
.Lx216_62:              cmp              esi, 2;                              jne   .Lx216_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx216_61
                        mov              r8, rax;                             jmp   .Lx216_60
.Lx216_63:              cmp              al, 72;                              jne   .Lx216_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx216_61
                        cmp              rax, r8;                             je    .Lx216_61
                        mov              r8, rax;                             jmp   .Lx216_60
.Lx216_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx216_80
                        cmp              al, 104;                             je    .Lx216_80
                        cmp              al, 72;                              jne   .Lx216_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx216_80
                                                                              jmp   .Lx216_74
.Lx216_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx216_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx216_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx216_73
                        lea              r9, [rsp + 320]
.Lx216_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx216_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx216_65
                        cmp              esi, 1;                              jne   .Lx216_66
                        mov              r9, rax;                             jmp   .Lx216_64
.Lx216_66:              cmp              esi, 2;                              jne   .Lx216_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx216_65
                        mov              r9, rax;                             jmp   .Lx216_64
.Lx216_67:              cmp              al, 72;                              jne   .Lx216_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx216_65
                        cmp              rax, r9;                             je    .Lx216_65
                        mov              r9, rax;                             jmp   .Lx216_64
.Lx216_65:              lea              rcx, [rsp + 336]
.Lx216_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx216_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx216_69
                        cmp              esi, 1;                              jne   .Lx216_70
                        mov              rcx, rax;                            jmp   .Lx216_68
.Lx216_70:              cmp              esi, 2;                              jne   .Lx216_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx216_69
                        mov              rcx, rax;                            jmp   .Lx216_68
.Lx216_71:              cmp              al, 72;                              jne   .Lx216_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx216_69
                        cmp              rax, rcx;                            je    .Lx216_69
                        mov              rcx, rax;                            jmp   .Lx216_68
.Lx216_69:              cmp              r9, rcx;                             je    .Lx216_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx216_75
                        cmp              al, 104;                             je    .Lx216_75
                        cmp              al, 72;                              jne   .Lx216_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx216_75
                                                                              jmp   .Lx216_72
.Lx216_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx216_76
                        cmp              al, 104;                             je    .Lx216_76
                        cmp              al, 72;                              jne   .Lx216_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx216_76
                                                                              jmp   .Lx216_72
.Lx216_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx216_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx216_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx216_77
.Lx216_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx216_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx216_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx216_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx216_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx216_72
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
.Lx216_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx216_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx216_82
                        cmp              esi, 1;                              jne   .Lx216_83
                        mov              r9, rax;                             jmp   .Lx216_81
.Lx216_83:              cmp              esi, 2;                              jne   .Lx216_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx216_82
                        mov              r9, rax;                             jmp   .Lx216_81
.Lx216_84:              cmp              al, 72;                              jne   .Lx216_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx216_82
                        cmp              rax, r9;                             je    .Lx216_82
                        mov              r9, rax;                             jmp   .Lx216_81
.Lx216_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx216_85
                        cmp              al, 104;                             je    .Lx216_85
                        cmp              al, 72;                              jne   .Lx216_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx216_85
                                                                              jmp   .Lx216_86
.Lx216_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx216_87
.Lx216_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx216_87:              lea              rcx, [rsp + 336]
.Lx216_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx216_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx216_89
                        cmp              esi, 1;                              jne   .Lx216_90
                        mov              rcx, rax;                            jmp   .Lx216_88
.Lx216_90:              cmp              esi, 2;                              jne   .Lx216_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx216_89
                        mov              rcx, rax;                            jmp   .Lx216_88
.Lx216_91:              cmp              al, 72;                              jne   .Lx216_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx216_89
                        cmp              rax, rcx;                            je    .Lx216_89
                        mov              rcx, rax;                            jmp   .Lx216_88
.Lx216_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx216_92
                        cmp              al, 104;                             je    .Lx216_92
                        cmp              al, 72;                              jne   .Lx216_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx216_92
                                                                              jmp   .Lx216_93
.Lx216_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx216_94
.Lx216_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx216_94:              lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx216_77
.Lx216_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx216_77
.Lx216_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx216_77:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n164_var_ref_α
n163_call_prolog_β:     mov              r11, 83;                             jmp   n169_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n166_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n167_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        mov              r11, 87
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx224_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx224_201
.Lx224_200:             mov              edi, 0
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
.Lx224_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx224_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx224_203
.Lx224_202:             mov              edi, 1
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
.Lx224_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx224_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx224_205
.Lx224_204:             mov              edi, 2
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
.Lx224_205:             lea              rax, [rip + .Lx224_7]
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
                        test             rax, rax;                            je    .Lx224_1
                        lea              rcx, [rip + .Lx224_4]
                        push             rcx
                        lea              rcx, [rip + .Lx224_3]
                        push             rcx
                        lea              rdx, [rip + .Lx224_4];               jmp   rax
.Lx224_3:               add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx224_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx224_2
.Lx224_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx224_2
.Lx224_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx224_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx224_2
.Lx224_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx224_2
.Lx224_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx224_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx224_29
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
.Lx224_29:              mov              qword ptr [rsp + 128], rax
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
                        lea              r8, [rip + .Lx224_7]
                        push             r8
                        lea              rcx, [rip + .Lx224_4]
                        push             rcx
                        lea              rcx, [rip + .Lx224_3]
                        push             rcx
                        lea              rdx, [rip + .Lx224_4];               jmp   rax
.Lx224_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n168_suspend_α
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          "append/3"
#-----------------------------------------------------------------------------------------------------------------------
n168_suspend_α:         mov              r11, 88
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx226_61
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
.Lx226_61:              mov              rdi, qword ptr [rsp + 64]
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
                        test             r12, r12;                            je    .Lx227_50
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
.Lx227_50:              mov              rdi, rax
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
#-----------------------------------------------------------------------------------------------------------------------
n228_call_prolog_α:     mov              r11, 90
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx264_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx264_101
.Lx264_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx264_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx264_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx264_101
.Lx264_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx264_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    nrev$2F2_ω
                                                                              jmp   n229_var_ref_α
n228_call_prolog_β:     mov              r11, 90;                             jmp   nrev$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n230_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     mov              r11, 92
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n231_lit_string_α
.Lx267_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 2
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n232_call_prolog_α
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "[]"
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
.Lx269_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx269_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx269_111
                        cmp              esi, 1;                              jne   .Lx269_112
                        mov              r8, rax;                             jmp   .Lx269_110
.Lx269_112:             cmp              esi, 2;                              jne   .Lx269_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx269_111
                        mov              r8, rax;                             jmp   .Lx269_110
.Lx269_113:             cmp              al, 72;                              jne   .Lx269_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx269_111
                        cmp              rax, r8;                             je    .Lx269_111
                        mov              r8, rax;                             jmp   .Lx269_110
.Lx269_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx269_114
                        cmp              al, 104;                             je    .Lx269_114
                        cmp              al, 72;                              jne   .Lx269_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx269_114
                                                                              jmp   .Lx269_118
.Lx269_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx269_115
                        cmp              al, 3;                               je    .Lx269_114
                        cmp              al, 2;                               jne   .Lx269_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx269_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx269_114
                                                                              jmp   .Lx269_116
.Lx269_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx269_117
.Lx269_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx269_117
.Lx269_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx269_117:             mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n241_var_ref_α
                                                                              jmp   n233_var_ref_α
n232_call_prolog_β:     mov              r11, 94;                             jmp   n241_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 2
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n235_call_prolog_α
.Lx272_0:               .quad            .Lx272_0_s
.Lx272_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n235_call_prolog_α:     mov              r11, 97
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              rsi, qword ptr [rip + .Lx273_2];     jmp   .Lx273_3
.Lx273_2:               .quad            .Lx273_2_s
.Lx273_2_s:             .string          "[]"
.Lx273_3:               mov              qword ptr [rip + rtccb+40], r8
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
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n237_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:      mov              r11, 99
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 2
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n238_call_prolog_α
.Lx276_0:               .quad            .Lx276_0_s
.Lx276_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n238_call_prolog_α:     mov              r11, 100
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              rsi, qword ptr [rip + .Lx277_2];     jmp   .Lx277_3
.Lx277_2:               .quad            .Lx277_2_s
.Lx277_2_s:             .string          "[]"
.Lx277_3:               mov              qword ptr [rip + rtccb+40], r8
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
#-----------------------------------------------------------------------------------------------------------------------
n239_suspend_α:         mov              r11, 101
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx279_61
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
.Lx279_61:              mov              rdi, qword ptr [rsp + 48]
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
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n242_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     mov              r11, 104
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n243_lit_integer_α
.Lx283_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_integer_α:     mov              r11, 105
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n244_call_prolog_α
.Lx284_0:               .quad            0
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
.Lx285_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx285_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx285_111
                        cmp              esi, 1;                              jne   .Lx285_112
                        mov              r8, rax;                             jmp   .Lx285_110
.Lx285_112:             cmp              esi, 2;                              jne   .Lx285_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx285_111
                        mov              r8, rax;                             jmp   .Lx285_110
.Lx285_113:             cmp              al, 72;                              jne   .Lx285_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx285_111
                        cmp              rax, r8;                             je    .Lx285_111
                        mov              r8, rax;                             jmp   .Lx285_110
.Lx285_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx285_114
                        cmp              al, 104;                             je    .Lx285_114
                        cmp              al, 72;                              jne   .Lx285_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx285_114
                                                                              jmp   .Lx285_118
.Lx285_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx285_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lx285_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx285_115
                                                                              jmp   .Lx285_114
.Lx285_119:             cmp              al, 3;                               jne   .Lx285_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx285_114
                                                                              jmp   .Lx285_115
.Lx285_120:             cmp              al, 2;                               jne   .Lx285_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx285_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx285_114
                                                                              jmp   .Lx285_115
.Lx285_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx285_117
.Lx285_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx285_117
.Lx285_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx285_117:             mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n263_call_prolog_α
                                                                              jmp   n245_var_ref_α
n244_call_prolog_β:     mov              r11, 106;                            jmp   n263_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n246_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n247_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n248_call_prolog_α
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
.Lx292_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx292_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx292_61
                        cmp              esi, 1;                              jne   .Lx292_62
                        mov              r8, rax;                             jmp   .Lx292_60
.Lx292_62:              cmp              esi, 2;                              jne   .Lx292_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx292_61
                        mov              r8, rax;                             jmp   .Lx292_60
.Lx292_63:              cmp              al, 72;                              jne   .Lx292_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx292_61
                        cmp              rax, r8;                             je    .Lx292_61
                        mov              r8, rax;                             jmp   .Lx292_60
.Lx292_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx292_80
                        cmp              al, 104;                             je    .Lx292_80
                        cmp              al, 72;                              jne   .Lx292_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx292_80
                                                                              jmp   .Lx292_74
.Lx292_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx292_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx292_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx292_73
                        lea              r9, [rsp + 608]
.Lx292_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx292_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx292_65
                        cmp              esi, 1;                              jne   .Lx292_66
                        mov              r9, rax;                             jmp   .Lx292_64
.Lx292_66:              cmp              esi, 2;                              jne   .Lx292_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx292_65
                        mov              r9, rax;                             jmp   .Lx292_64
.Lx292_67:              cmp              al, 72;                              jne   .Lx292_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx292_65
                        cmp              rax, r9;                             je    .Lx292_65
                        mov              r9, rax;                             jmp   .Lx292_64
.Lx292_65:              lea              rcx, [rsp + 624]
.Lx292_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx292_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx292_69
                        cmp              esi, 1;                              jne   .Lx292_70
                        mov              rcx, rax;                            jmp   .Lx292_68
.Lx292_70:              cmp              esi, 2;                              jne   .Lx292_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx292_69
                        mov              rcx, rax;                            jmp   .Lx292_68
.Lx292_71:              cmp              al, 72;                              jne   .Lx292_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx292_69
                        cmp              rax, rcx;                            je    .Lx292_69
                        mov              rcx, rax;                            jmp   .Lx292_68
.Lx292_69:              cmp              r9, rcx;                             je    .Lx292_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx292_75
                        cmp              al, 104;                             je    .Lx292_75
                        cmp              al, 72;                              jne   .Lx292_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx292_75
                                                                              jmp   .Lx292_72
.Lx292_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx292_76
                        cmp              al, 104;                             je    .Lx292_76
                        cmp              al, 72;                              jne   .Lx292_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx292_76
                                                                              jmp   .Lx292_72
.Lx292_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx292_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx292_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx292_77
.Lx292_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx292_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx292_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx292_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx292_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx292_72
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
.Lx292_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx292_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx292_82
                        cmp              esi, 1;                              jne   .Lx292_83
                        mov              r9, rax;                             jmp   .Lx292_81
.Lx292_83:              cmp              esi, 2;                              jne   .Lx292_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx292_82
                        mov              r9, rax;                             jmp   .Lx292_81
.Lx292_84:              cmp              al, 72;                              jne   .Lx292_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx292_82
                        cmp              rax, r9;                             je    .Lx292_82
                        mov              r9, rax;                             jmp   .Lx292_81
.Lx292_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx292_85
                        cmp              al, 104;                             je    .Lx292_85
                        cmp              al, 72;                              jne   .Lx292_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx292_85
                                                                              jmp   .Lx292_86
.Lx292_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx292_87
.Lx292_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx292_87:              lea              rcx, [rsp + 624]
.Lx292_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx292_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx292_89
                        cmp              esi, 1;                              jne   .Lx292_90
                        mov              rcx, rax;                            jmp   .Lx292_88
.Lx292_90:              cmp              esi, 2;                              jne   .Lx292_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx292_89
                        mov              rcx, rax;                            jmp   .Lx292_88
.Lx292_91:              cmp              al, 72;                              jne   .Lx292_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx292_89
                        cmp              rax, rcx;                            je    .Lx292_89
                        mov              rcx, rax;                            jmp   .Lx292_88
.Lx292_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx292_92
                        cmp              al, 104;                             je    .Lx292_92
                        cmp              al, 72;                              jne   .Lx292_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx292_92
                                                                              jmp   .Lx292_93
.Lx292_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx292_94
.Lx292_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx292_94:              lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx292_77
.Lx292_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx292_77
.Lx292_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx292_77:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n263_call_prolog_α
                                                                              jmp   n249_var_ref_α
n248_call_prolog_β:     mov              r11, 110;                            jmp   n263_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n250_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n251_call_prolog_α
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
.Lx297_41:              lea              r9, [rsp + 512]
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
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx297_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx297_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx297_51
.Lx297_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx297_47
                        cmp              al, 104;                             je    .Lx297_47
                        cmp              al, 72;                              jne   .Lx297_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx297_47
                                                                              jmp   .Lx297_48
.Lx297_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx297_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx297_53
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
.Lx297_54:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n263_call_prolog_α
                                                                              jmp   n252_var_ref_α
n251_call_prolog_β:     mov              r11, 113;                            jmp   n263_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n253_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n254_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_proc_staged_α:
                        mov              r11, 116
                        mov              qword ptr [rsp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx303_200
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx303_201
.Lx303_200:             mov              edi, 0
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
.Lx303_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx303_202
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx303_203
.Lx303_202:             mov              edi, 1
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
.Lx303_203:             lea              rax, [rip + .Lx303_7]
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
                        test             rax, rax;                            je    .Lx303_1
                        lea              rcx, [rip + .Lx303_4]
                        push             rcx
                        lea              rcx, [rip + .Lx303_3]
                        push             rcx
                        lea              rdx, [rip + .Lx303_4];               jmp   rax
.Lx303_3:               add              rsp, 16
                        mov              qword ptr [rsp + 424], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 416]
                        test             rax, rax;                            jne   .Lx303_5
                        mov              qword ptr [rsp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx303_2
.Lx303_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx303_2
.Lx303_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 416]
                        test             rax, rax;                            jne   .Lx303_6
                        mov              qword ptr [rsp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx303_2
.Lx303_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx303_2
.Lx303_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx303_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx303_29
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
.Lx303_29:              mov              qword ptr [rsp + 368], rax
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
                        lea              r8, [rip + .Lx303_7]
                        push             r8
                        lea              rcx, [rip + .Lx303_4]
                        push             rcx
                        lea              rcx, [rip + .Lx303_3]
                        push             rcx
                        lea              rdx, [rip + .Lx303_4];               jmp   rax
.Lx303_7:               add              rsp, 8
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n263_call_prolog_α
                                                                              jmp   n255_var_ref_α
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "nrev/2"
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n257_var_ref_α
.Lx306_0:               .quad            .Lx306_0_s
.Lx306_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n258_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n259_call_prolog_α
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          "[]"
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
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n261_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n261_call_proc_staged_α:
                        mov              r11, 123
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx314_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx314_201
.Lx314_200:             mov              edi, 0
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
.Lx314_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx314_202
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx314_203
.Lx314_202:             mov              edi, 1
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
.Lx314_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx314_204
                        mov              rax, qword ptr [rsp + 352]
                        mov              rdx, qword ptr [rsp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx314_205
.Lx314_204:             mov              edi, 2
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
.Lx314_205:             lea              rax, [rip + .Lx314_7]
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
                        test             rax, rax;                            je    .Lx314_1
                        lea              rcx, [rip + .Lx314_4]
                        push             rcx
                        lea              rcx, [rip + .Lx314_3]
                        push             rcx
                        lea              rdx, [rip + .Lx314_4];               jmp   rax
.Lx314_3:               add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx314_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx314_2
.Lx314_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx314_2
.Lx314_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx314_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx314_2
.Lx314_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx314_2
.Lx314_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx314_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx314_29
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
.Lx314_29:              mov              qword ptr [rsp + 112], rax
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
                        lea              r8, [rip + .Lx314_7]
                        push             r8
                        lea              rcx, [rip + .Lx314_4]
                        push             rcx
                        lea              rcx, [rip + .Lx314_3]
                        push             rcx
                        lea              rdx, [rip + .Lx314_4];               jmp   rax
.Lx314_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n254_call_proc_staged_β
                                                                              jmp   n262_suspend_α
.Lx314_0:               .quad            .Lx314_0_s
.Lx314_0_s:             .string          "app/3"
#-----------------------------------------------------------------------------------------------------------------------
n262_suspend_α:         mov              r11, 124
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx316_61
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
.Lx316_61:              mov              rdi, qword ptr [rsp + 48]
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
                        test             r12, r12;                            je    .Lx317_50
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
.Lx317_50:              mov              rdi, rax
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
#-----------------------------------------------------------------------------------------------------------------------
n318_call_prolog_α:     mov              r11, 126
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx355_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx355_101
.Lx355_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx355_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx355_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx355_101
.Lx355_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx355_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    data$2F2_ω
                                                                              jmp   n319_var_ref_α
n318_call_prolog_β:     mov              r11, 126;                            jmp   data$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n320_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:     mov              r11, 128
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n321_lit_string_α
.Lx358_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 2
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n322_call_prolog_α
.Lx359_0:               .quad            .Lx359_0_s
.Lx359_0_s:             .string          "[]"
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
.Lx360_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx360_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx360_111
                        cmp              esi, 1;                              jne   .Lx360_112
                        mov              r8, rax;                             jmp   .Lx360_110
.Lx360_112:             cmp              esi, 2;                              jne   .Lx360_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx360_111
                        mov              r8, rax;                             jmp   .Lx360_110
.Lx360_113:             cmp              al, 72;                              jne   .Lx360_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx360_111
                        cmp              rax, r8;                             je    .Lx360_111
                        mov              r8, rax;                             jmp   .Lx360_110
.Lx360_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx360_114
                        cmp              al, 104;                             je    .Lx360_114
                        cmp              al, 72;                              jne   .Lx360_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx360_114
                                                                              jmp   .Lx360_118
.Lx360_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx360_115
                        cmp              al, 3;                               je    .Lx360_114
                        cmp              al, 2;                               jne   .Lx360_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx360_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx360_114
                                                                              jmp   .Lx360_116
.Lx360_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx360_117
.Lx360_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx360_117
.Lx360_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx360_117:             mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n331_var_ref_α
                                                                              jmp   n323_var_ref_α
n322_call_prolog_β:     mov              r11, 130;                            jmp   n331_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n324_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n325_call_prolog_α
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n325_call_prolog_α:     mov              r11, 133
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        mov              rsi, qword ptr [rip + .Lx364_2];     jmp   .Lx364_3
.Lx364_2:               .quad            .Lx364_2_s
.Lx364_2_s:             .string          "[]"
.Lx364_3:               mov              qword ptr [rip + rtccb+40], r8
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
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n327_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_integer_α:     mov              r11, 135
                        mov              qword ptr [rsp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n328_call_prolog_α
.Lx367_0:               .quad            0
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
#-----------------------------------------------------------------------------------------------------------------------
n329_suspend_α:         mov              r11, 137
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx370_61
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
.Lx370_61:              mov              rdi, qword ptr [rsp + 48]
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
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n332_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_integer_α:     mov              r11, 140
                        mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n333_lit_integer_α
.Lx374_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n334_call_prolog_α
.Lx375_0:               .quad            0
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
.Lx376_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx376_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx376_111
                        cmp              esi, 1;                              jne   .Lx376_112
                        mov              r8, rax;                             jmp   .Lx376_110
.Lx376_112:             cmp              esi, 2;                              jne   .Lx376_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx376_111
                        mov              r8, rax;                             jmp   .Lx376_110
.Lx376_113:             cmp              al, 72;                              jne   .Lx376_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx376_111
                        cmp              rax, r8;                             je    .Lx376_111
                        mov              r8, rax;                             jmp   .Lx376_110
.Lx376_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx376_114
                        cmp              al, 104;                             je    .Lx376_114
                        cmp              al, 72;                              jne   .Lx376_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx376_114
                                                                              jmp   .Lx376_118
.Lx376_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx376_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lx376_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx376_115
                                                                              jmp   .Lx376_114
.Lx376_119:             cmp              al, 3;                               jne   .Lx376_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx376_114
                                                                              jmp   .Lx376_115
.Lx376_120:             cmp              al, 2;                               jne   .Lx376_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx376_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx376_114
                                                                              jmp   .Lx376_115
.Lx376_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx376_117
.Lx376_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx376_117
.Lx376_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx376_117:             mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n354_call_prolog_α
                                                                              jmp   n335_var_ref_α
n334_call_prolog_β:     mov              r11, 142;                            jmp   n354_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n336_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n337_var_ref_α
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n337_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n338_call_prolog_α
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
.Lx382_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx382_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx382_61
                        cmp              esi, 1;                              jne   .Lx382_62
                        mov              r8, rax;                             jmp   .Lx382_60
.Lx382_62:              cmp              esi, 2;                              jne   .Lx382_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx382_61
                        mov              r8, rax;                             jmp   .Lx382_60
.Lx382_63:              cmp              al, 72;                              jne   .Lx382_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx382_61
                        cmp              rax, r8;                             je    .Lx382_61
                        mov              r8, rax;                             jmp   .Lx382_60
.Lx382_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx382_80
                        cmp              al, 104;                             je    .Lx382_80
                        cmp              al, 72;                              jne   .Lx382_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx382_80
                                                                              jmp   .Lx382_74
.Lx382_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx382_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx382_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx382_73
                        lea              r9, [rsp + 592]
.Lx382_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx382_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx382_65
                        cmp              esi, 1;                              jne   .Lx382_66
                        mov              r9, rax;                             jmp   .Lx382_64
.Lx382_66:              cmp              esi, 2;                              jne   .Lx382_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx382_65
                        mov              r9, rax;                             jmp   .Lx382_64
.Lx382_67:              cmp              al, 72;                              jne   .Lx382_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx382_65
                        cmp              rax, r9;                             je    .Lx382_65
                        mov              r9, rax;                             jmp   .Lx382_64
.Lx382_65:              lea              rcx, [rsp + 608]
.Lx382_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx382_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx382_69
                        cmp              esi, 1;                              jne   .Lx382_70
                        mov              rcx, rax;                            jmp   .Lx382_68
.Lx382_70:              cmp              esi, 2;                              jne   .Lx382_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx382_69
                        mov              rcx, rax;                            jmp   .Lx382_68
.Lx382_71:              cmp              al, 72;                              jne   .Lx382_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx382_69
                        cmp              rax, rcx;                            je    .Lx382_69
                        mov              rcx, rax;                            jmp   .Lx382_68
.Lx382_69:              cmp              r9, rcx;                             je    .Lx382_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx382_75
                        cmp              al, 104;                             je    .Lx382_75
                        cmp              al, 72;                              jne   .Lx382_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx382_75
                                                                              jmp   .Lx382_72
.Lx382_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx382_76
                        cmp              al, 104;                             je    .Lx382_76
                        cmp              al, 72;                              jne   .Lx382_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx382_76
                                                                              jmp   .Lx382_72
.Lx382_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx382_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx382_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx382_77
.Lx382_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx382_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx382_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx382_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx382_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx382_72
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
.Lx382_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx382_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx382_82
                        cmp              esi, 1;                              jne   .Lx382_83
                        mov              r9, rax;                             jmp   .Lx382_81
.Lx382_83:              cmp              esi, 2;                              jne   .Lx382_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx382_82
                        mov              r9, rax;                             jmp   .Lx382_81
.Lx382_84:              cmp              al, 72;                              jne   .Lx382_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx382_82
                        cmp              rax, r9;                             je    .Lx382_82
                        mov              r9, rax;                             jmp   .Lx382_81
.Lx382_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx382_85
                        cmp              al, 104;                             je    .Lx382_85
                        cmp              al, 72;                              jne   .Lx382_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx382_85
                                                                              jmp   .Lx382_86
.Lx382_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx382_87
.Lx382_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx382_87:              lea              rcx, [rsp + 608]
.Lx382_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx382_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx382_89
                        cmp              esi, 1;                              jne   .Lx382_90
                        mov              rcx, rax;                            jmp   .Lx382_88
.Lx382_90:              cmp              esi, 2;                              jne   .Lx382_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx382_89
                        mov              rcx, rax;                            jmp   .Lx382_88
.Lx382_91:              cmp              al, 72;                              jne   .Lx382_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx382_89
                        cmp              rax, rcx;                            je    .Lx382_89
                        mov              rcx, rax;                            jmp   .Lx382_88
.Lx382_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx382_92
                        cmp              al, 104;                             je    .Lx382_92
                        cmp              al, 72;                              jne   .Lx382_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx382_92
                                                                              jmp   .Lx382_93
.Lx382_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx382_94
.Lx382_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx382_94:              lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx382_77
.Lx382_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx382_77
.Lx382_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx382_77:              mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n354_call_prolog_α
                                                                              jmp   n339_var_ref_α
n338_call_prolog_β:     mov              r11, 146;                            jmp   n354_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:         mov              r11, 147
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n340_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n341_call_prolog_α
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
.Lx387_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx387_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx387_41
                        cmp              esi, 1;                              jne   .Lx387_55
                        mov              r8, rax;                             jmp   .Lx387_40
.Lx387_55:              cmp              esi, 2;                              jne   .Lx387_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx387_41
                        mov              r8, rax;                             jmp   .Lx387_40
.Lx387_56:              cmp              al, 72;                              jne   .Lx387_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx387_41
                        cmp              rax, r8;                             je    .Lx387_41
                        mov              r8, rax;                             jmp   .Lx387_40
.Lx387_41:              lea              r9, [rsp + 496]
.Lx387_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx387_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx387_43
                        cmp              esi, 1;                              jne   .Lx387_57
                        mov              r9, rax;                             jmp   .Lx387_42
.Lx387_57:              cmp              esi, 2;                              jne   .Lx387_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx387_43
                        mov              r9, rax;                             jmp   .Lx387_42
.Lx387_58:              cmp              al, 72;                              jne   .Lx387_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx387_43
                        cmp              rax, r9;                             je    .Lx387_43
                        mov              r9, rax;                             jmp   .Lx387_42
.Lx387_43:              cmp              r8, r9;                              je    .Lx387_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx387_44
                        cmp              al, 104;                             je    .Lx387_44
                        cmp              al, 72;                              jne   .Lx387_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx387_44
                                                                              jmp   .Lx387_45
.Lx387_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx387_53
                        cmp              al, 104;                             je    .Lx387_53
                        cmp              al, 72;                              jne   .Lx387_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx387_53
                                                                              jmp   .Lx387_46
.Lx387_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx387_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx387_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx387_51
.Lx387_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx387_47
                        cmp              al, 104;                             je    .Lx387_47
                        cmp              al, 72;                              jne   .Lx387_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx387_47
                                                                              jmp   .Lx387_48
.Lx387_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx387_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx387_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx387_51
.Lx387_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx387_49
                        cmp              dl, 80;                              je    .Lx387_53
                                                                              jmp   .Lx387_52
.Lx387_49:              cmp              dl, 80;                              je    .Lx387_52
                        cmp              cl, 5;                               je    .Lx387_53
                        cmp              dl, 5;                               je    .Lx387_53
                        cmp              cl, 3;                               jne   .Lx387_50
                        cmp              dl, 3;                               jne   .Lx387_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx387_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx387_51
                                                                              jmp   .Lx387_52
.Lx387_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx387_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx387_53
.Lx387_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx387_54
.Lx387_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx387_54
.Lx387_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx387_54:              mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n354_call_prolog_α
                                                                              jmp   n342_var_α
n341_call_prolog_β:     mov              r11, 149;                            jmp   n354_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_α:             mov              r11, 150
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 440], rax;          jmp   n343_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n344_call_prolog_α
.Lx390_0:               .quad            0
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
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 360], rax;          jmp   n347_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_integer_α:     mov              r11, 155
                        mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n348_call_prolog_α
.Lx396_0:               .quad            1
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
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n351_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n352_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n352_call_proc_staged_α:
                        mov              r11, 160
                        mov              qword ptr [rsp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx404_200
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx404_201
.Lx404_200:             mov              edi, 0
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
.Lx404_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx404_202
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx404_203
.Lx404_202:             mov              edi, 1
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
.Lx404_203:             lea              rax, [rip + .Lx404_7]
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
                        test             rax, rax;                            je    .Lx404_1
                        lea              rcx, [rip + .Lx404_4]
                        push             rcx
                        lea              rcx, [rip + .Lx404_3]
                        push             rcx
                        lea              rdx, [rip + .Lx404_4];               jmp   rax
.Lx404_3:               add              rsp, 16
                        mov              qword ptr [rsp + 168], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx404_5
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx404_2
.Lx404_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx404_2
.Lx404_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx404_6
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx404_2
.Lx404_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx404_2
.Lx404_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx404_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx404_29
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
.Lx404_29:              mov              qword ptr [rsp + 112], rax
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
                        lea              r8, [rip + .Lx404_7]
                        push             r8
                        lea              rcx, [rip + .Lx404_4]
                        push             rcx
                        lea              rcx, [rip + .Lx404_3]
                        push             rcx
                        lea              rdx, [rip + .Lx404_4];               jmp   rax
.Lx404_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n354_call_prolog_α
                                                                              jmp   n353_suspend_α
.Lx404_0:               .quad            .Lx404_0_s
.Lx404_0_s:             .string          "data/2"
#-----------------------------------------------------------------------------------------------------------------------
n353_suspend_α:         mov              r11, 161
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx406_61
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
.Lx406_61:              mov              rdi, qword ptr [rsp + 48]
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
                        test             r12, r12;                            je    .Lx407_50
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
.Lx407_50:              mov              rdi, rax
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
#-----------------------------------------------------------------------------------------------------------------------
n408_call_prolog_α:     mov              r11, 163
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx417_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx417_101
.Lx417_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx417_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx417_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx417_101
.Lx417_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx417_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    data$2F1_ω
                                                                              jmp   n409_var_ref_α
n408_call_prolog_β:     mov              r11, 163;                            jmp   data$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n410_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n411_call_prolog_α
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
.Lx422_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx422_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx422_41
                        cmp              esi, 1;                              jne   .Lx422_55
                        mov              r8, rax;                             jmp   .Lx422_40
.Lx422_55:              cmp              esi, 2;                              jne   .Lx422_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx422_41
                        mov              r8, rax;                             jmp   .Lx422_40
.Lx422_56:              cmp              al, 72;                              jne   .Lx422_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx422_41
                        cmp              rax, r8;                             je    .Lx422_41
                        mov              r8, rax;                             jmp   .Lx422_40
.Lx422_41:              lea              r9, [rsp + 240]
.Lx422_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx422_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx422_43
                        cmp              esi, 1;                              jne   .Lx422_57
                        mov              r9, rax;                             jmp   .Lx422_42
.Lx422_57:              cmp              esi, 2;                              jne   .Lx422_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx422_43
                        mov              r9, rax;                             jmp   .Lx422_42
.Lx422_58:              cmp              al, 72;                              jne   .Lx422_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx422_43
                        cmp              rax, r9;                             je    .Lx422_43
                        mov              r9, rax;                             jmp   .Lx422_42
.Lx422_43:              cmp              r8, r9;                              je    .Lx422_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx422_44
                        cmp              al, 104;                             je    .Lx422_44
                        cmp              al, 72;                              jne   .Lx422_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx422_44
                                                                              jmp   .Lx422_45
.Lx422_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx422_53
                        cmp              al, 104;                             je    .Lx422_53
                        cmp              al, 72;                              jne   .Lx422_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx422_53
                                                                              jmp   .Lx422_46
.Lx422_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx422_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx422_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx422_51
.Lx422_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx422_47
                        cmp              al, 104;                             je    .Lx422_47
                        cmp              al, 72;                              jne   .Lx422_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx422_47
                                                                              jmp   .Lx422_48
.Lx422_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx422_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx422_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx422_51
.Lx422_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx422_49
                        cmp              dl, 80;                              je    .Lx422_53
                                                                              jmp   .Lx422_52
.Lx422_49:              cmp              dl, 80;                              je    .Lx422_52
                        cmp              cl, 5;                               je    .Lx422_53
                        cmp              dl, 5;                               je    .Lx422_53
                        cmp              cl, 3;                               jne   .Lx422_50
                        cmp              dl, 3;                               jne   .Lx422_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx422_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx422_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx422_51
                                                                              jmp   .Lx422_52
.Lx422_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx422_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx422_53
.Lx422_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx422_54
.Lx422_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx422_54
.Lx422_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx422_54:              mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n416_call_prolog_α
                                                                              jmp   n412_var_ref_α
n411_call_prolog_β:     mov              r11, 166;                            jmp   n416_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n412_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 304]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n413_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n414_call_proc_staged_α
.Lx425_0:               .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n414_call_proc_staged_α:
                        mov              r11, 169
                        mov              qword ptr [rsp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx427_200
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx427_201
.Lx427_200:             mov              edi, 0
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
.Lx427_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx427_202
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx427_203
.Lx427_202:             mov              edi, 1
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
.Lx427_203:             lea              rax, [rip + .Lx427_7]
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
                        test             rax, rax;                            je    .Lx427_1
                        lea              rcx, [rip + .Lx427_4]
                        push             rcx
                        lea              rcx, [rip + .Lx427_3]
                        push             rcx
                        lea              rdx, [rip + .Lx427_4];               jmp   rax
.Lx427_3:               add              rsp, 16
                        mov              qword ptr [rsp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx427_5
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx427_2
.Lx427_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx427_2
.Lx427_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 144]
                        test             rax, rax;                            jne   .Lx427_6
                        mov              qword ptr [rsp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx427_2
.Lx427_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx427_2
.Lx427_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx427_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx427_29
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
.Lx427_29:              mov              qword ptr [rsp + 96], rax
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
                        lea              r8, [rip + .Lx427_7]
                        push             r8
                        lea              rcx, [rip + .Lx427_4]
                        push             rcx
                        lea              rcx, [rip + .Lx427_3]
                        push             rcx
                        lea              rdx, [rip + .Lx427_4];               jmp   rax
.Lx427_7:               add              rsp, 8
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n416_call_prolog_α
                                                                              jmp   n415_suspend_α
.Lx427_0:               .quad            .Lx427_0_s
.Lx427_0_s:             .string          "data/2"
#-----------------------------------------------------------------------------------------------------------------------
n415_suspend_α:         mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx429_61
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
.Lx429_61:              mov              rdi, qword ptr [rsp + 32]
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
                        test             r12, r12;                            je    .Lx430_50
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
.Lx430_50:              mov              rdi, rax
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
#-----------------------------------------------------------------------------------------------------------------------
n431_call_prolog_α:     mov              r11, 172
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx468_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx468_101
.Lx468_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx468_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx468_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx468_101
.Lx468_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx468_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    app$2F3_ω
                                                                              jmp   n432_var_ref_α
n431_call_prolog_β:     mov              r11, 172;                            jmp   app$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n433_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_integer_α:     mov              r11, 174
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n434_lit_string_α
.Lx471_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 2
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n435_call_prolog_α
.Lx472_0:               .quad            .Lx472_0_s
.Lx472_0_s:             .string          "[]"
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
.Lx473_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx473_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx473_111
                        cmp              esi, 1;                              jne   .Lx473_112
                        mov              r8, rax;                             jmp   .Lx473_110
.Lx473_112:             cmp              esi, 2;                              jne   .Lx473_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx473_111
                        mov              r8, rax;                             jmp   .Lx473_110
.Lx473_113:             cmp              al, 72;                              jne   .Lx473_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx473_111
                        cmp              rax, r8;                             je    .Lx473_111
                        mov              r8, rax;                             jmp   .Lx473_110
.Lx473_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx473_114
                        cmp              al, 104;                             je    .Lx473_114
                        cmp              al, 72;                              jne   .Lx473_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx473_114
                                                                              jmp   .Lx473_118
.Lx473_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx473_115
                        cmp              al, 3;                               je    .Lx473_114
                        cmp              al, 2;                               jne   .Lx473_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx473_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx473_114
                                                                              jmp   .Lx473_116
.Lx473_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx473_117
.Lx473_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx473_117
.Lx473_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx473_117:             mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n447_var_ref_α
                                                                              jmp   n436_var_ref_α
n435_call_prolog_β:     mov              r11, 176;                            jmp   n447_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n437_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:      mov              r11, 178
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n438_call_prolog_α
.Lx476_0:               .quad            .Lx476_0_s
.Lx476_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n438_call_prolog_α:     mov              r11, 179
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        mov              rsi, qword ptr [rip + .Lx477_2];     jmp   .Lx477_3
.Lx477_2:               .quad            .Lx477_2_s
.Lx477_2_s:             .string          "[]"
.Lx477_3:               mov              qword ptr [rip + rtccb+40], r8
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
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n440_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:         mov              r11, 181
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n441_call_prolog_α
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
.Lx482_41:              lea              r9, [rsp + 848]
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
.Lx482_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx482_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx482_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx482_51
.Lx482_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx482_47
                        cmp              al, 104;                             je    .Lx482_47
                        cmp              al, 72;                              jne   .Lx482_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx482_47
                                                                              jmp   .Lx482_48
.Lx482_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx482_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx482_53
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx482_54:              mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n446_call_prolog_α
                                                                              jmp   n442_var_ref_α
n441_call_prolog_β:     mov              r11, 182;                            jmp   n446_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n443_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n444_call_prolog_α
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
.Lx487_41:              lea              r9, [rsp + 768]
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
.Lx487_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx487_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx487_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx487_51
.Lx487_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx487_47
                        cmp              al, 104;                             je    .Lx487_47
                        cmp              al, 72;                              jne   .Lx487_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx487_47
                                                                              jmp   .Lx487_48
.Lx487_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx487_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx487_53
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx487_54:              mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n446_call_prolog_α
                                                                              jmp   n445_suspend_α
n444_call_prolog_β:     mov              r11, 185;                            jmp   n446_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n445_suspend_α:         mov              r11, 186
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx489_61
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
.Lx489_61:              mov              rdi, qword ptr [rsp + 64]
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
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n448_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_integer_α:     mov              r11, 189
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n449_lit_integer_α
.Lx493_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_integer_α:     mov              r11, 190
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n450_call_prolog_α
.Lx494_0:               .quad            0
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
.Lx495_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx495_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx495_111
                        cmp              esi, 1;                              jne   .Lx495_112
                        mov              r8, rax;                             jmp   .Lx495_110
.Lx495_112:             cmp              esi, 2;                              jne   .Lx495_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx495_111
                        mov              r8, rax;                             jmp   .Lx495_110
.Lx495_113:             cmp              al, 72;                              jne   .Lx495_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx495_111
                        cmp              rax, r8;                             je    .Lx495_111
                        mov              r8, rax;                             jmp   .Lx495_110
.Lx495_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx495_114
                        cmp              al, 104;                             je    .Lx495_114
                        cmp              al, 72;                              jne   .Lx495_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx495_114
                                                                              jmp   .Lx495_118
.Lx495_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx495_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lx495_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx495_115
                                                                              jmp   .Lx495_114
.Lx495_119:             cmp              al, 3;                               jne   .Lx495_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx495_114
                                                                              jmp   .Lx495_115
.Lx495_120:             cmp              al, 2;                               jne   .Lx495_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx495_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx495_114
                                                                              jmp   .Lx495_115
.Lx495_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx495_117
.Lx495_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx495_117
.Lx495_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx495_117:             mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n467_call_prolog_α
                                                                              jmp   n451_var_ref_α
n450_call_prolog_β:     mov              r11, 191;                            jmp   n467_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n451_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n452_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n452_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n453_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n453_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n454_call_prolog_α
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
.Lx502_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx502_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx502_61
                        cmp              esi, 1;                              jne   .Lx502_62
                        mov              r8, rax;                             jmp   .Lx502_60
.Lx502_62:              cmp              esi, 2;                              jne   .Lx502_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx502_61
                        mov              r8, rax;                             jmp   .Lx502_60
.Lx502_63:              cmp              al, 72;                              jne   .Lx502_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx502_61
                        cmp              rax, r8;                             je    .Lx502_61
                        mov              r8, rax;                             jmp   .Lx502_60
.Lx502_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx502_80
                        cmp              al, 104;                             je    .Lx502_80
                        cmp              al, 72;                              jne   .Lx502_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx502_80
                                                                              jmp   .Lx502_74
.Lx502_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx502_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx502_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx502_73
                        lea              r9, [rsp + 512]
.Lx502_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx502_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx502_65
                        cmp              esi, 1;                              jne   .Lx502_66
                        mov              r9, rax;                             jmp   .Lx502_64
.Lx502_66:              cmp              esi, 2;                              jne   .Lx502_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx502_65
                        mov              r9, rax;                             jmp   .Lx502_64
.Lx502_67:              cmp              al, 72;                              jne   .Lx502_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx502_65
                        cmp              rax, r9;                             je    .Lx502_65
                        mov              r9, rax;                             jmp   .Lx502_64
.Lx502_65:              lea              rcx, [rsp + 528]
.Lx502_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx502_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx502_69
                        cmp              esi, 1;                              jne   .Lx502_70
                        mov              rcx, rax;                            jmp   .Lx502_68
.Lx502_70:              cmp              esi, 2;                              jne   .Lx502_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx502_69
                        mov              rcx, rax;                            jmp   .Lx502_68
.Lx502_71:              cmp              al, 72;                              jne   .Lx502_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx502_69
                        cmp              rax, rcx;                            je    .Lx502_69
                        mov              rcx, rax;                            jmp   .Lx502_68
.Lx502_69:              cmp              r9, rcx;                             je    .Lx502_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx502_75
                        cmp              al, 104;                             je    .Lx502_75
                        cmp              al, 72;                              jne   .Lx502_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx502_75
                                                                              jmp   .Lx502_72
.Lx502_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx502_76
                        cmp              al, 104;                             je    .Lx502_76
                        cmp              al, 72;                              jne   .Lx502_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx502_76
                                                                              jmp   .Lx502_72
.Lx502_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx502_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx502_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx502_77
.Lx502_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx502_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx502_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx502_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx502_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx502_72
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
.Lx502_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx502_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx502_82
                        cmp              esi, 1;                              jne   .Lx502_83
                        mov              r9, rax;                             jmp   .Lx502_81
.Lx502_83:              cmp              esi, 2;                              jne   .Lx502_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx502_82
                        mov              r9, rax;                             jmp   .Lx502_81
.Lx502_84:              cmp              al, 72;                              jne   .Lx502_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx502_82
                        cmp              rax, r9;                             je    .Lx502_82
                        mov              r9, rax;                             jmp   .Lx502_81
.Lx502_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx502_85
                        cmp              al, 104;                             je    .Lx502_85
                        cmp              al, 72;                              jne   .Lx502_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx502_85
                                                                              jmp   .Lx502_86
.Lx502_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx502_87
.Lx502_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx502_87:              lea              rcx, [rsp + 528]
.Lx502_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx502_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx502_89
                        cmp              esi, 1;                              jne   .Lx502_90
                        mov              rcx, rax;                            jmp   .Lx502_88
.Lx502_90:              cmp              esi, 2;                              jne   .Lx502_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx502_89
                        mov              rcx, rax;                            jmp   .Lx502_88
.Lx502_91:              cmp              al, 72;                              jne   .Lx502_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx502_89
                        cmp              rax, rcx;                            je    .Lx502_89
                        mov              rcx, rax;                            jmp   .Lx502_88
.Lx502_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx502_92
                        cmp              al, 104;                             je    .Lx502_92
                        cmp              al, 72;                              jne   .Lx502_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx502_92
                                                                              jmp   .Lx502_93
.Lx502_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx502_94
.Lx502_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx502_94:              lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx502_77
.Lx502_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx502_77
.Lx502_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx502_77:              mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n467_call_prolog_α
                                                                              jmp   n455_var_ref_α
n454_call_prolog_β:     mov              r11, 195;                            jmp   n467_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n456_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n457_call_prolog_α
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
.Lx507_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx507_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx507_41
                        cmp              esi, 1;                              jne   .Lx507_55
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_55:              cmp              esi, 2;                              jne   .Lx507_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx507_41
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_56:              cmp              al, 72;                              jne   .Lx507_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx507_41
                        cmp              rax, r8;                             je    .Lx507_41
                        mov              r8, rax;                             jmp   .Lx507_40
.Lx507_41:              lea              r9, [rsp + 416]
.Lx507_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx507_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx507_43
                        cmp              esi, 1;                              jne   .Lx507_57
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_57:              cmp              esi, 2;                              jne   .Lx507_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx507_43
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_58:              cmp              al, 72;                              jne   .Lx507_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx507_43
                        cmp              rax, r9;                             je    .Lx507_43
                        mov              r9, rax;                             jmp   .Lx507_42
.Lx507_43:              cmp              r8, r9;                              je    .Lx507_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx507_44
                        cmp              al, 104;                             je    .Lx507_44
                        cmp              al, 72;                              jne   .Lx507_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx507_44
                                                                              jmp   .Lx507_45
.Lx507_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx507_53
                        cmp              al, 104;                             je    .Lx507_53
                        cmp              al, 72;                              jne   .Lx507_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx507_53
                                                                              jmp   .Lx507_46
.Lx507_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx507_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx507_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx507_51
.Lx507_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx507_47
                        cmp              al, 104;                             je    .Lx507_47
                        cmp              al, 72;                              jne   .Lx507_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx507_47
                                                                              jmp   .Lx507_48
.Lx507_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx507_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx507_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx507_51
.Lx507_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx507_49
                        cmp              dl, 80;                              je    .Lx507_53
                                                                              jmp   .Lx507_52
.Lx507_49:              cmp              dl, 80;                              je    .Lx507_52
                        cmp              cl, 5;                               je    .Lx507_53
                        cmp              dl, 5;                               je    .Lx507_53
                        cmp              cl, 3;                               jne   .Lx507_50
                        cmp              dl, 3;                               jne   .Lx507_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx507_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx507_51
                                                                              jmp   .Lx507_52
.Lx507_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx507_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx507_53
.Lx507_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx507_54
.Lx507_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx507_54
.Lx507_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx507_54:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n467_call_prolog_α
                                                                              jmp   n458_var_ref_α
n457_call_prolog_β:     mov              r11, 198;                            jmp   n467_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n458_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n459_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n459_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n460_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n460_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n461_call_prolog_α
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
.Lx514_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx514_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx514_61
                        cmp              esi, 1;                              jne   .Lx514_62
                        mov              r8, rax;                             jmp   .Lx514_60
.Lx514_62:              cmp              esi, 2;                              jne   .Lx514_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx514_61
                        mov              r8, rax;                             jmp   .Lx514_60
.Lx514_63:              cmp              al, 72;                              jne   .Lx514_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx514_61
                        cmp              rax, r8;                             je    .Lx514_61
                        mov              r8, rax;                             jmp   .Lx514_60
.Lx514_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx514_80
                        cmp              al, 104;                             je    .Lx514_80
                        cmp              al, 72;                              jne   .Lx514_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx514_80
                                                                              jmp   .Lx514_74
.Lx514_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx514_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx514_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx514_73
                        lea              r9, [rsp + 320]
.Lx514_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx514_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx514_65
                        cmp              esi, 1;                              jne   .Lx514_66
                        mov              r9, rax;                             jmp   .Lx514_64
.Lx514_66:              cmp              esi, 2;                              jne   .Lx514_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx514_65
                        mov              r9, rax;                             jmp   .Lx514_64
.Lx514_67:              cmp              al, 72;                              jne   .Lx514_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx514_65
                        cmp              rax, r9;                             je    .Lx514_65
                        mov              r9, rax;                             jmp   .Lx514_64
.Lx514_65:              lea              rcx, [rsp + 336]
.Lx514_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx514_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx514_69
                        cmp              esi, 1;                              jne   .Lx514_70
                        mov              rcx, rax;                            jmp   .Lx514_68
.Lx514_70:              cmp              esi, 2;                              jne   .Lx514_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx514_69
                        mov              rcx, rax;                            jmp   .Lx514_68
.Lx514_71:              cmp              al, 72;                              jne   .Lx514_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx514_69
                        cmp              rax, rcx;                            je    .Lx514_69
                        mov              rcx, rax;                            jmp   .Lx514_68
.Lx514_69:              cmp              r9, rcx;                             je    .Lx514_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx514_75
                        cmp              al, 104;                             je    .Lx514_75
                        cmp              al, 72;                              jne   .Lx514_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx514_75
                                                                              jmp   .Lx514_72
.Lx514_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx514_76
                        cmp              al, 104;                             je    .Lx514_76
                        cmp              al, 72;                              jne   .Lx514_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx514_76
                                                                              jmp   .Lx514_72
.Lx514_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx514_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx514_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx514_77
.Lx514_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx514_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx514_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx514_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx514_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx514_72
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
.Lx514_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx514_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx514_82
                        cmp              esi, 1;                              jne   .Lx514_83
                        mov              r9, rax;                             jmp   .Lx514_81
.Lx514_83:              cmp              esi, 2;                              jne   .Lx514_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx514_82
                        mov              r9, rax;                             jmp   .Lx514_81
.Lx514_84:              cmp              al, 72;                              jne   .Lx514_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx514_82
                        cmp              rax, r9;                             je    .Lx514_82
                        mov              r9, rax;                             jmp   .Lx514_81
.Lx514_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx514_85
                        cmp              al, 104;                             je    .Lx514_85
                        cmp              al, 72;                              jne   .Lx514_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx514_85
                                                                              jmp   .Lx514_86
.Lx514_85:              mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx514_87
.Lx514_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx514_87:              lea              rcx, [rsp + 336]
.Lx514_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx514_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx514_89
                        cmp              esi, 1;                              jne   .Lx514_90
                        mov              rcx, rax;                            jmp   .Lx514_88
.Lx514_90:              cmp              esi, 2;                              jne   .Lx514_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx514_89
                        mov              rcx, rax;                            jmp   .Lx514_88
.Lx514_91:              cmp              al, 72;                              jne   .Lx514_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx514_89
                        cmp              rax, rcx;                            je    .Lx514_89
                        mov              rcx, rax;                            jmp   .Lx514_88
.Lx514_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx514_92
                        cmp              al, 104;                             je    .Lx514_92
                        cmp              al, 72;                              jne   .Lx514_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx514_92
                                                                              jmp   .Lx514_93
.Lx514_92:              mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx514_94
.Lx514_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx514_94:              lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx514_77
.Lx514_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx514_77
.Lx514_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx514_77:              mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n467_call_prolog_α
                                                                              jmp   n462_var_ref_α
n461_call_prolog_β:     mov              r11, 202;                            jmp   n467_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n463_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n464_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n464_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n465_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n465_call_proc_staged_α:
                        mov              r11, 206
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx522_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx522_201
.Lx522_200:             mov              edi, 0
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
.Lx522_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx522_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx522_203
.Lx522_202:             mov              edi, 1
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
.Lx522_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx522_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx522_205
.Lx522_204:             mov              edi, 2
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
.Lx522_205:             lea              rax, [rip + .Lx522_7]
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
                        test             rax, rax;                            je    .Lx522_1
                        lea              rcx, [rip + .Lx522_4]
                        push             rcx
                        lea              rcx, [rip + .Lx522_3]
                        push             rcx
                        lea              rdx, [rip + .Lx522_4];               jmp   rax
.Lx522_3:               add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx522_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx522_2
.Lx522_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx522_2
.Lx522_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx522_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx522_2
.Lx522_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx522_2
.Lx522_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx522_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx522_29
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
.Lx522_29:              mov              qword ptr [rsp + 128], rax
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
                        lea              r8, [rip + .Lx522_7]
                        push             r8
                        lea              rcx, [rip + .Lx522_4]
                        push             rcx
                        lea              rcx, [rip + .Lx522_3]
                        push             rcx
                        lea              rdx, [rip + .Lx522_4];               jmp   rax
.Lx522_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n467_call_prolog_α
                                                                              jmp   n466_suspend_α
.Lx522_0:               .quad            .Lx522_0_s
.Lx522_0_s:             .string          "app/3"
#-----------------------------------------------------------------------------------------------------------------------
n466_suspend_α:         mov              r11, 207
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx524_61
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
.Lx524_61:              mov              rdi, qword ptr [rsp + 64]
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
                        test             r12, r12;                            je    .Lx525_50
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
.Lx525_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1192]
                        add              rsp, 1216;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
app$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1200]
                        add              rsp, 1216;                           jmp   rcx
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
#-----------------------------------------------------------------------------------------------------------------------
n526_call_prolog_α:     mov              r11, 209
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx539_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx539_101
.Lx539_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx539_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx539_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx539_101
.Lx539_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx539_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n527_var_ref_α
n526_call_prolog_β:     mov              r11, 209;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n528_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n528_call_proc_staged_α:
                        mov              r11, 211
                        mov              qword ptr [rsp + 336], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx543_200
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx543_201
.Lx543_200:             mov              edi, 0
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
.Lx543_201:             lea              rax, [rip + .Lx543_7]
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
                        test             rax, rax;                            je    .Lx543_1
                        lea              rcx, [rip + .Lx543_4]
                        push             rcx
                        lea              rcx, [rip + .Lx543_3]
                        push             rcx
                        lea              rdx, [rip + .Lx543_4];               jmp   rax
.Lx543_3:               add              rsp, 16
                        mov              qword ptr [rsp + 344], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 336]
                        test             rax, rax;                            jne   .Lx543_5
                        mov              qword ptr [rsp + 336], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx543_2
.Lx543_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx543_2
.Lx543_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 336]
                        test             rax, rax;                            jne   .Lx543_6
                        mov              qword ptr [rsp + 336], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx543_2
.Lx543_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx543_2
.Lx543_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx543_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx543_29
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
.Lx543_29:              mov              qword ptr [rsp + 304], rax
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
                        lea              r8, [rip + .Lx543_7]
                        push             r8
                        lea              rcx, [rip + .Lx543_4]
                        push             rcx
                        lea              rcx, [rip + .Lx543_3]
                        push             rcx
                        lea              rdx, [rip + .Lx543_4];               jmp   rax
.Lx543_7:               add              rsp, 8
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n538_call_prolog_α
                                                                              jmp   n529_var_ref_α
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "data/1"
#-----------------------------------------------------------------------------------------------------------------------
n529_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 400]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n530_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 384]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n531_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n531_call_proc_staged_α:
                        mov              r11, 214
                        mov              qword ptr [rsp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx549_200
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx549_201
.Lx549_200:             mov              edi, 0
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
.Lx549_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx549_202
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx549_203
.Lx549_202:             mov              edi, 1
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
.Lx549_203:             lea              rax, [rip + .Lx549_7]
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
                        test             rax, rax;                            je    .Lx549_1
                        lea              rcx, [rip + .Lx549_4]
                        push             rcx
                        lea              rcx, [rip + .Lx549_3]
                        push             rcx
                        lea              rdx, [rip + .Lx549_4];               jmp   rax
.Lx549_3:               add              rsp, 16
                        mov              qword ptr [rsp + 248], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lx549_5
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx549_2
.Lx549_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx549_2
.Lx549_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lx549_6
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx549_2
.Lx549_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx549_2
.Lx549_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx549_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx549_29
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
.Lx549_29:              mov              qword ptr [rsp + 192], rax
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
                        lea              r8, [rip + .Lx549_7]
                        push             r8
                        lea              rcx, [rip + .Lx549_4]
                        push             rcx
                        lea              rcx, [rip + .Lx549_3]
                        push             rcx
                        lea              rdx, [rip + .Lx549_4];               jmp   rax
.Lx549_7:               add              rsp, 8
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n528_call_proc_staged_β
                                                                              jmp   n532_var_α
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          "nrev/2"
#-----------------------------------------------------------------------------------------------------------------------
n532_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 184], rax;          jmp   n533_call_prolog_α
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
#-----------------------------------------------------------------------------------------------------------------------
n534_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n535_call_prolog_α
.Lx554_0:               .quad            .Lx554_0_s
.Lx554_0_s:             .string          ""
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
#-----------------------------------------------------------------------------------------------------------------------
n536_move_label_α:      mov              r11, 219
                        lea              rax, [rip + n531_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
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
