                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__tak$2F4:
                        sub              rsp, 2416
                        mov              qword ptr [rsp + 2392], rcx
                        mov              qword ptr [rsp + 2400], rdx
                        mov              qword ptr [rsp + 2408], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 2384
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
tak$2F4_α_body:
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_74_102
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120];          jmp   .Lcall_prolog_α_74_101
.Lcall_prolog_α_74_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_74_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_74_101
.Lcall_prolog_α_74_100: lea              rdi, [rbp + 128]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_74_101: mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    tak$2F4_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   tak$2F4_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n2_var_ref_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n3_call_prolog_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_call_prolog_bx, @function
n3_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_prolog_α:       mov              r11, 4
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2144]
                        lea              r8, [rbp + 2144]
.Lcall_prolog_α_79_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_79_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_79_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_79_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_79_40
.Lcall_prolog_α_79_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_79_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_79_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_79_40
.Lcall_prolog_α_79_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_79_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_79_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_79_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_79_40
.Lcall_prolog_α_79_41:  lea              r9, [rbp + 2160]
.Lcall_prolog_α_79_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_79_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_79_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_79_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_79_42
.Lcall_prolog_α_79_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_79_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_79_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_79_42
.Lcall_prolog_α_79_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_79_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_79_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_79_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_79_42
.Lcall_prolog_α_79_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_79_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_79_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_79_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_79_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_79_44
                                                                              jmp   .Lcall_prolog_α_79_45
.Lcall_prolog_α_79_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_79_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_79_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_79_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_79_53
                                                                              jmp   .Lcall_prolog_α_79_46
.Lcall_prolog_α_79_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_79_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_79_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_79_51
.Lcall_prolog_α_79_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_79_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_79_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_79_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_79_47
                                                                              jmp   .Lcall_prolog_α_79_48
.Lcall_prolog_α_79_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_79_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_79_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_79_51
.Lcall_prolog_α_79_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_79_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_79_53
                                                                              jmp   .Lcall_prolog_α_79_52
.Lcall_prolog_α_79_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_79_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_79_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_79_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_79_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_79_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_79_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_79_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_79_51
                                                                              jmp   .Lcall_prolog_α_79_52
.Lcall_prolog_α_79_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_79_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_79_53
.Lcall_prolog_α_79_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_79_54
.Lcall_prolog_α_79_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_79_54
.Lcall_prolog_α_79_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_79_54:  mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              al, 104;                             je    n20_call_prolog_α
                                                                              jmp   n4_var_ref_α
n3_call_prolog_β:       mov              r11, 4;                              jmp   n20_call_prolog_α
                        .size            n3_call_prolog_bx, .-n3_call_prolog_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n5_var_ref_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx;         jmp   n6_call_prolog_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_call_prolog_bx, @function
n6_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_call_prolog_α:       mov              r11, 7
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2064]
                        lea              r8, [rbp + 2064]
.Lcall_prolog_α_84_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_84_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_84_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_84_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_84_40
.Lcall_prolog_α_84_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_84_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_84_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_84_40
.Lcall_prolog_α_84_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_84_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_84_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_84_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_84_40
.Lcall_prolog_α_84_41:  lea              r9, [rbp + 2080]
.Lcall_prolog_α_84_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_84_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_84_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_84_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_84_42
.Lcall_prolog_α_84_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_84_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_84_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_84_42
.Lcall_prolog_α_84_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_84_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_84_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_84_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_84_42
.Lcall_prolog_α_84_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_84_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_84_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_84_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_84_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_84_44
                                                                              jmp   .Lcall_prolog_α_84_45
.Lcall_prolog_α_84_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_84_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_84_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_84_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_84_53
                                                                              jmp   .Lcall_prolog_α_84_46
.Lcall_prolog_α_84_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_84_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_84_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_84_51
.Lcall_prolog_α_84_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_84_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_84_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_84_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_84_47
                                                                              jmp   .Lcall_prolog_α_84_48
.Lcall_prolog_α_84_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_84_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_84_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_84_51
.Lcall_prolog_α_84_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_84_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_84_53
                                                                              jmp   .Lcall_prolog_α_84_52
.Lcall_prolog_α_84_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_84_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_84_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_84_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_84_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_84_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_84_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_84_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_84_51
                                                                              jmp   .Lcall_prolog_α_84_52
.Lcall_prolog_α_84_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_84_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_84_53
.Lcall_prolog_α_84_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_84_54
.Lcall_prolog_α_84_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_84_54
.Lcall_prolog_α_84_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_84_54:  mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              al, 104;                             je    n20_call_prolog_α
                                                                              jmp   n7_var_ref_α
n6_call_prolog_β:       mov              r11, 7;                              jmp   n20_call_prolog_α
                        .size            n6_call_prolog_bx, .-n6_call_prolog_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx;         jmp   n8_var_ref_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n9_call_prolog_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_call_prolog_bx, @function
n9_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_call_prolog_α:       mov              r11, 10
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1984]
                        lea              r8, [rbp + 1984]
.Lcall_prolog_α_89_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_89_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_89_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_89_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_89_40
.Lcall_prolog_α_89_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_89_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_89_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_89_40
.Lcall_prolog_α_89_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_89_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_89_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_89_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_89_40
.Lcall_prolog_α_89_41:  lea              r9, [rbp + 2000]
.Lcall_prolog_α_89_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_89_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_89_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_89_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_89_42
.Lcall_prolog_α_89_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_89_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_89_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_89_42
.Lcall_prolog_α_89_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_89_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_89_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_89_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_89_42
.Lcall_prolog_α_89_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_89_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_89_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_89_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_89_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_89_44
                                                                              jmp   .Lcall_prolog_α_89_45
.Lcall_prolog_α_89_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_89_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_89_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_89_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_89_53
                                                                              jmp   .Lcall_prolog_α_89_46
.Lcall_prolog_α_89_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_89_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_89_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_89_51
.Lcall_prolog_α_89_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_89_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_89_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_89_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_89_47
                                                                              jmp   .Lcall_prolog_α_89_48
.Lcall_prolog_α_89_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_89_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_89_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_89_51
.Lcall_prolog_α_89_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_89_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_89_53
                                                                              jmp   .Lcall_prolog_α_89_52
.Lcall_prolog_α_89_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_89_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_89_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_89_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_89_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_89_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_89_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_89_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_89_51
                                                                              jmp   .Lcall_prolog_α_89_52
.Lcall_prolog_α_89_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_89_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_89_53
.Lcall_prolog_α_89_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_89_54
.Lcall_prolog_α_89_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_89_54
.Lcall_prolog_α_89_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_89_54:  mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    n20_call_prolog_α
                                                                              jmp   n10_var_ref_α
n9_call_prolog_β:       mov              r11, 10;                             jmp   n20_call_prolog_α
                        .size            n9_call_prolog_bx, .-n9_call_prolog_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n11_var_ref_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_var_ref_bx, @function
n11_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n12_call_prolog_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_call_prolog_bx, @function
n12_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_prolog_α:      mov              r11, 13
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1904]
                        lea              r8, [rbp + 1904]
.Lcall_prolog_α_94_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_94_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_94_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_94_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_94_40
.Lcall_prolog_α_94_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_94_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_94_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_94_40
.Lcall_prolog_α_94_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_94_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_94_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_94_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_94_40
.Lcall_prolog_α_94_41:  lea              r9, [rbp + 1920]
.Lcall_prolog_α_94_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_94_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_94_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_94_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_94_42
.Lcall_prolog_α_94_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_94_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_94_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_94_42
.Lcall_prolog_α_94_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_94_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_94_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_94_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_94_42
.Lcall_prolog_α_94_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_94_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_94_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_94_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_94_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_94_44
                                                                              jmp   .Lcall_prolog_α_94_45
.Lcall_prolog_α_94_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_94_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_94_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_94_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_94_53
                                                                              jmp   .Lcall_prolog_α_94_46
.Lcall_prolog_α_94_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_94_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_94_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_94_51
.Lcall_prolog_α_94_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_94_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_94_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_94_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_94_47
                                                                              jmp   .Lcall_prolog_α_94_48
.Lcall_prolog_α_94_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_94_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_94_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_94_51
.Lcall_prolog_α_94_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_94_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_94_53
                                                                              jmp   .Lcall_prolog_α_94_52
.Lcall_prolog_α_94_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_94_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_94_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_94_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_94_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_94_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_94_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_94_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_94_51
                                                                              jmp   .Lcall_prolog_α_94_52
.Lcall_prolog_α_94_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_94_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_94_53
.Lcall_prolog_α_94_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_94_54
.Lcall_prolog_α_94_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_94_54
.Lcall_prolog_α_94_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_94_54:  mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              al, 104;                             je    n20_call_prolog_α
                                                                              jmp   n13_var_α
n12_call_prolog_β:      mov              r11, 13;                             jmp   n20_call_prolog_α
                        .size            n12_call_prolog_bx, .-n12_call_prolog_bx
                        .type            n13_var_bx, @function
n13_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 14
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n14_var_α
                        .size            n13_var_bx, .-n13_var_bx
                        .type            n14_var_bx, @function
n14_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n15_call_prolog_α
                        .size            n14_var_bx, .-n14_var_bx
                        .type            n15_call_prolog_bx, @function
n15_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_prolog_α:      mov              r11, 16
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1824]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_le@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              al, 104;                             je    n20_call_prolog_α
                                                                              jmp   n16_var_ref_α
n15_call_prolog_β:      mov              r11, 16;                             jmp   n20_call_prolog_α
                        .size            n15_call_prolog_bx, .-n15_call_prolog_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx;         jmp   n17_var_ref_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_var_ref_bx, @function
n17_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n18_call_prolog_α
                        .size            n17_var_ref_bx, .-n17_var_ref_bx
                        .type            n18_call_prolog_bx, @function
n18_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_prolog_α:      mov              r11, 19
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rdi, [rbp + 1744]
                        lea              r8, [rbp + 1744]
.Lcall_prolog_α_104_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_104_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_104_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_104_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_104_40
.Lcall_prolog_α_104_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_104_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_104_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_104_40
.Lcall_prolog_α_104_56: cmp              al, 72;                              jne   .Lcall_prolog_α_104_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_104_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_104_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_104_40
.Lcall_prolog_α_104_41: lea              r9, [rbp + 1760]
.Lcall_prolog_α_104_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_104_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_104_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_104_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_104_42
.Lcall_prolog_α_104_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_104_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_104_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_104_42
.Lcall_prolog_α_104_58: cmp              al, 72;                              jne   .Lcall_prolog_α_104_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_104_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_104_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_104_42
.Lcall_prolog_α_104_43: cmp              r8, r9;                              je    .Lcall_prolog_α_104_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_104_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_104_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_104_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_104_44
                                                                              jmp   .Lcall_prolog_α_104_45
.Lcall_prolog_α_104_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_104_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_104_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_104_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_104_53
                                                                              jmp   .Lcall_prolog_α_104_46
.Lcall_prolog_α_104_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_104_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_104_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_104_51
.Lcall_prolog_α_104_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_104_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_104_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_104_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_104_47
                                                                              jmp   .Lcall_prolog_α_104_48
.Lcall_prolog_α_104_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_104_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_104_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_104_51
.Lcall_prolog_α_104_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_104_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_104_53
                                                                              jmp   .Lcall_prolog_α_104_52
.Lcall_prolog_α_104_49: cmp              dl, 80;                              je    .Lcall_prolog_α_104_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_104_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_104_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_104_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_104_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_104_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_104_51
                                                                              jmp   .Lcall_prolog_α_104_52
.Lcall_prolog_α_104_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_104_53
.Lcall_prolog_α_104_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_104_54
.Lcall_prolog_α_104_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_104_54
.Lcall_prolog_α_104_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_104_54: mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    n20_call_prolog_α
                                                                              jmp   n19_move_label_α
n18_call_prolog_β:      mov              r11, 19;                             jmp   n20_call_prolog_α
                        .size            n18_call_prolog_bx, .-n18_call_prolog_bx
                        .type            n19_move_label_bx, @function
n19_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_move_label_α:       mov              r11, 20
                        lea              rax, [rip + n20_call_prolog_α]
                        mov              qword ptr [rbp + 96], rax;           jmp   tak$2F4_γ
                        .size            n19_move_label_bx, .-n19_move_label_bx
                        .type            n20_call_prolog_bx, @function
n20_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_prolog_α:      mov              r11, 21
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 1720], rax
                        lea              rdi, [rbp + 1712]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              al, 104;                             je    tak$2F4_ω
                                                                              jmp   n21_var_ref_α
n20_call_prolog_β:      mov              r11, 21;                             jmp   tak$2F4_ω
                        .size            n20_call_prolog_bx, .-n20_call_prolog_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n22_var_ref_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_var_ref_bx, @function
n22_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n23_call_prolog_α
                        .size            n22_var_ref_bx, .-n22_var_ref_bx
                        .type            n23_call_prolog_bx, @function
n23_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_prolog_α:      mov              r11, 24
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1632]
                        lea              r8, [rbp + 1632]
.Lcall_prolog_α_112_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_112_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_112_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_112_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_112_40
.Lcall_prolog_α_112_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_112_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_112_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_112_40
.Lcall_prolog_α_112_56: cmp              al, 72;                              jne   .Lcall_prolog_α_112_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_112_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_112_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_112_40
.Lcall_prolog_α_112_41: lea              r9, [rbp + 1648]
.Lcall_prolog_α_112_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_112_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_112_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_112_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_112_42
.Lcall_prolog_α_112_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_112_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_112_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_112_42
.Lcall_prolog_α_112_58: cmp              al, 72;                              jne   .Lcall_prolog_α_112_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_112_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_112_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_112_42
.Lcall_prolog_α_112_43: cmp              r8, r9;                              je    .Lcall_prolog_α_112_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_112_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_112_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_112_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_112_44
                                                                              jmp   .Lcall_prolog_α_112_45
.Lcall_prolog_α_112_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_112_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_112_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_112_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_112_53
                                                                              jmp   .Lcall_prolog_α_112_46
.Lcall_prolog_α_112_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_112_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_112_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_112_51
.Lcall_prolog_α_112_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_112_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_112_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_112_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_112_47
                                                                              jmp   .Lcall_prolog_α_112_48
.Lcall_prolog_α_112_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_112_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_112_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_112_51
.Lcall_prolog_α_112_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_112_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_112_53
                                                                              jmp   .Lcall_prolog_α_112_52
.Lcall_prolog_α_112_49: cmp              dl, 80;                              je    .Lcall_prolog_α_112_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_112_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_112_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_112_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_112_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_112_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_112_51
                                                                              jmp   .Lcall_prolog_α_112_52
.Lcall_prolog_α_112_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_112_53
.Lcall_prolog_α_112_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_112_54
.Lcall_prolog_α_112_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_112_54
.Lcall_prolog_α_112_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_112_54: mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    n73_call_prolog_α
                                                                              jmp   n24_var_ref_α
n23_call_prolog_β:      mov              r11, 24;                             jmp   n73_call_prolog_α
                        .size            n23_call_prolog_bx, .-n23_call_prolog_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx;         jmp   n25_var_ref_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n26_call_prolog_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_call_prolog_bx, @function
n26_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_prolog_α:      mov              r11, 27
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        lea              r8, [rbp + 1552]
.Lcall_prolog_α_117_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_117_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_117_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_117_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_117_40
.Lcall_prolog_α_117_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_117_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_117_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_117_40
.Lcall_prolog_α_117_56: cmp              al, 72;                              jne   .Lcall_prolog_α_117_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_117_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_117_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_117_40
.Lcall_prolog_α_117_41: lea              r9, [rbp + 1568]
.Lcall_prolog_α_117_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_117_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_117_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_117_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_117_42
.Lcall_prolog_α_117_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_117_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_117_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_117_42
.Lcall_prolog_α_117_58: cmp              al, 72;                              jne   .Lcall_prolog_α_117_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_117_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_117_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_117_42
.Lcall_prolog_α_117_43: cmp              r8, r9;                              je    .Lcall_prolog_α_117_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_117_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_117_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_117_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_117_44
                                                                              jmp   .Lcall_prolog_α_117_45
.Lcall_prolog_α_117_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_117_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_117_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_117_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_117_53
                                                                              jmp   .Lcall_prolog_α_117_46
.Lcall_prolog_α_117_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_117_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_117_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_117_51
.Lcall_prolog_α_117_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_117_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_117_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_117_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_117_47
                                                                              jmp   .Lcall_prolog_α_117_48
.Lcall_prolog_α_117_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_117_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_117_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_117_51
.Lcall_prolog_α_117_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_117_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_117_53
                                                                              jmp   .Lcall_prolog_α_117_52
.Lcall_prolog_α_117_49: cmp              dl, 80;                              je    .Lcall_prolog_α_117_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_117_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_117_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_117_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_117_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_117_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_117_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_117_51
                                                                              jmp   .Lcall_prolog_α_117_52
.Lcall_prolog_α_117_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_117_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_117_53
.Lcall_prolog_α_117_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_117_54
.Lcall_prolog_α_117_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_117_54
.Lcall_prolog_α_117_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_117_54: mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    n73_call_prolog_α
                                                                              jmp   n27_var_ref_α
n26_call_prolog_β:      mov              r11, 27;                             jmp   n73_call_prolog_α
                        .size            n26_call_prolog_bx, .-n26_call_prolog_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n28_var_ref_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_var_ref_bx, @function
n28_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n29_call_prolog_α
                        .size            n28_var_ref_bx, .-n28_var_ref_bx
                        .type            n29_call_prolog_bx, @function
n29_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_prolog_α:      mov              r11, 30
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        lea              r8, [rbp + 1472]
.Lcall_prolog_α_122_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_122_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_122_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_122_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_122_40
.Lcall_prolog_α_122_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_122_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_122_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_122_40
.Lcall_prolog_α_122_56: cmp              al, 72;                              jne   .Lcall_prolog_α_122_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_122_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_122_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_122_40
.Lcall_prolog_α_122_41: lea              r9, [rbp + 1488]
.Lcall_prolog_α_122_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_122_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_122_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_122_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_122_42
.Lcall_prolog_α_122_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_122_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_122_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_122_42
.Lcall_prolog_α_122_58: cmp              al, 72;                              jne   .Lcall_prolog_α_122_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_122_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_122_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_122_42
.Lcall_prolog_α_122_43: cmp              r8, r9;                              je    .Lcall_prolog_α_122_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_122_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_122_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_122_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_122_44
                                                                              jmp   .Lcall_prolog_α_122_45
.Lcall_prolog_α_122_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_122_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_122_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_122_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_122_53
                                                                              jmp   .Lcall_prolog_α_122_46
.Lcall_prolog_α_122_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_122_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_122_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_122_51
.Lcall_prolog_α_122_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_122_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_122_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_122_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_122_47
                                                                              jmp   .Lcall_prolog_α_122_48
.Lcall_prolog_α_122_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_122_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_122_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_122_51
.Lcall_prolog_α_122_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_122_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_122_53
                                                                              jmp   .Lcall_prolog_α_122_52
.Lcall_prolog_α_122_49: cmp              dl, 80;                              je    .Lcall_prolog_α_122_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_122_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_122_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_122_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_122_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_122_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_122_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_122_51
                                                                              jmp   .Lcall_prolog_α_122_52
.Lcall_prolog_α_122_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_122_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_122_53
.Lcall_prolog_α_122_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_122_54
.Lcall_prolog_α_122_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_122_54
.Lcall_prolog_α_122_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_122_54: mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    n73_call_prolog_α
                                                                              jmp   n30_var_ref_α
n29_call_prolog_β:      mov              r11, 30;                             jmp   n73_call_prolog_α
                        .size            n29_call_prolog_bx, .-n29_call_prolog_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n31_var_ref_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_var_ref_bx, @function
n31_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n32_call_prolog_α
                        .size            n31_var_ref_bx, .-n31_var_ref_bx
                        .type            n32_call_prolog_bx, @function
n32_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_call_prolog_α:      mov              r11, 33
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        lea              r8, [rbp + 1392]
.Lcall_prolog_α_127_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_127_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_127_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_127_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_127_40
.Lcall_prolog_α_127_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_127_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_127_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_127_40
.Lcall_prolog_α_127_56: cmp              al, 72;                              jne   .Lcall_prolog_α_127_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_127_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_127_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_127_40
.Lcall_prolog_α_127_41: lea              r9, [rbp + 1408]
.Lcall_prolog_α_127_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_127_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_127_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_127_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_127_42
.Lcall_prolog_α_127_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_127_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_127_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_127_42
.Lcall_prolog_α_127_58: cmp              al, 72;                              jne   .Lcall_prolog_α_127_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_127_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_127_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_127_42
.Lcall_prolog_α_127_43: cmp              r8, r9;                              je    .Lcall_prolog_α_127_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_127_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_127_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_127_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_127_44
                                                                              jmp   .Lcall_prolog_α_127_45
.Lcall_prolog_α_127_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_127_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_127_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_127_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_127_53
                                                                              jmp   .Lcall_prolog_α_127_46
.Lcall_prolog_α_127_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_127_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_127_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_127_51
.Lcall_prolog_α_127_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_127_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_127_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_127_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_127_47
                                                                              jmp   .Lcall_prolog_α_127_48
.Lcall_prolog_α_127_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_127_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_127_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_127_51
.Lcall_prolog_α_127_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_127_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_127_53
                                                                              jmp   .Lcall_prolog_α_127_52
.Lcall_prolog_α_127_49: cmp              dl, 80;                              je    .Lcall_prolog_α_127_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_127_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_127_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_127_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_127_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_127_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_127_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_127_51
                                                                              jmp   .Lcall_prolog_α_127_52
.Lcall_prolog_α_127_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_127_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_127_53
.Lcall_prolog_α_127_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_127_54
.Lcall_prolog_α_127_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_127_54
.Lcall_prolog_α_127_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_127_54: mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              al, 104;                             je    n73_call_prolog_α
                                                                              jmp   n33_var_α
n32_call_prolog_β:      mov              r11, 33;                             jmp   n73_call_prolog_α
                        .size            n32_call_prolog_bx, .-n32_call_prolog_bx
                        .type            n33_var_bx, @function
n33_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n34_var_α
                        .size            n33_var_bx, .-n33_var_bx
                        .type            n34_var_bx, @function
n34_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n35_call_prolog_α
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_call_prolog_bx, @function
n35_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_prolog_α:      mov              r11, 36
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    n73_call_prolog_α
                                                                              jmp   n36_var_ref_α
n35_call_prolog_β:      mov              r11, 36;                             jmp   n73_call_prolog_α
                        .size            n35_call_prolog_bx, .-n35_call_prolog_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2352]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n37_var_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_var_bx, @function
n37_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              r11, 38
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n38_lit_integer_α
                        .size            n37_var_bx, .-n37_var_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              r11, 39
                        mov              qword ptr [rbp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_137_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n39_call_prolog_α
.Llit_integer_α_137_0:  .quad            1
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_call_prolog_bx, @function
n39_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_call_prolog_α:      mov              r11, 40
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1216]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    n73_call_prolog_α
                                                                              jmp   n40_call_prolog_α
n39_call_prolog_β:      mov              r11, 40;                             jmp   n73_call_prolog_α
                        .size            n39_call_prolog_bx, .-n39_call_prolog_bx
                        .type            n40_call_prolog_bx, @function
n40_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_call_prolog_α:      mov              r11, 41
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    n73_call_prolog_α
                                                                              jmp   n41_var_ref_α
n40_call_prolog_β:      mov              r11, 41;                             jmp   n73_call_prolog_α
                        .size            n40_call_prolog_bx, .-n40_call_prolog_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2352]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n42_var_ref_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_var_ref_bx, @function
n42_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n43_var_ref_α
                        .size            n42_var_ref_bx, .-n42_var_ref_bx
                        .type            n43_var_ref_bx, @function
n43_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n44_var_ref_α
                        .size            n43_var_ref_bx, .-n43_var_ref_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n45_call_proc_staged_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_call_proc_staged_bx, @function
n45_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_call_proc_staged_α: mov              r11, 46
                        lea              rsi, [rbp + 1072]
                        lea              rdx, [rbp + 1088]
                        lea              rcx, [rbp + 1104]
                        lea              r8, [rbp + 1120]
                        call             tak$2F4_dcα;                         jmp   .Lcall_proc_staged_α_149_2
.Lcall_proc_staged_α_149_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_149_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
.Lcall_proc_staged_α_149_29:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    n73_call_prolog_α
                                                                              jmp   n46_var_ref_α
n45_call_proc_staged_β: mov              r11, 46;                             jmp   n73_call_prolog_α
.Lcall_proc_staged_β_149_0:
                        .quad            .Lcall_proc_staged_β_149_0_s
.Lcall_proc_staged_β_149_0_s:
                        .string          "tak/4"
                        .size            n45_call_proc_staged_bx, .-n45_call_proc_staged_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2336]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n47_var_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_var_bx, @function
n47_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              mov              r11, 48
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 952], rax;          jmp   n48_lit_integer_α
                        .size            n47_var_bx, .-n47_var_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rbp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_154_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   n49_call_prolog_α
.Llit_integer_α_154_0:  .quad            1
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_call_prolog_bx, @function
n49_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_prolog_α:      mov              r11, 50
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    n73_call_prolog_α
                                                                              jmp   n50_call_prolog_α
n49_call_prolog_β:      mov              r11, 50;                             jmp   n73_call_prolog_α
                        .size            n49_call_prolog_bx, .-n49_call_prolog_bx
                        .type            n50_call_prolog_bx, @function
n50_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_call_prolog_α:      mov              r11, 51
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    n45_call_proc_staged_β
                                                                              jmp   n51_var_ref_α
n50_call_prolog_β:      mov              r11, 51;                             jmp   n45_call_proc_staged_β
                        .size            n50_call_prolog_bx, .-n50_call_prolog_bx
                        .type            n51_var_ref_bx, @function
n51_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2336]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n52_var_ref_α
                        .size            n51_var_ref_bx, .-n51_var_ref_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2320]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n53_var_ref_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n54_var_ref_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_var_ref_bx, @function
n54_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n55_call_proc_staged_α
                        .size            n54_var_ref_bx, .-n54_var_ref_bx
                        .type            n55_call_proc_staged_bx, @function
n55_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_proc_staged_α: mov              r11, 56
                        lea              rsi, [rbp + 752]
                        lea              rdx, [rbp + 768]
                        lea              rcx, [rbp + 784]
                        lea              r8, [rbp + 800]
                        call             tak$2F4_dcα;                         jmp   .Lcall_proc_staged_α_166_2
.Lcall_proc_staged_α_166_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_166_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
.Lcall_proc_staged_α_166_29:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    n45_call_proc_staged_β
                                                                              jmp   n56_var_ref_α
n55_call_proc_staged_β: mov              r11, 56;                             jmp   n45_call_proc_staged_β
.Lcall_proc_staged_β_166_0:
                        .quad            .Lcall_proc_staged_β_166_0_s
.Lcall_proc_staged_β_166_0_s:
                        .string          "tak/4"
                        .size            n55_call_proc_staged_bx, .-n55_call_proc_staged_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n57_var_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 58
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 632], rax;          jmp   n58_lit_integer_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              r11, 59
                        mov              qword ptr [rbp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_171_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n59_call_prolog_α
.Llit_integer_α_171_0:  .quad            1
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_call_prolog_bx, @function
n59_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_prolog_α:      mov              r11, 60
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    n73_call_prolog_α
                                                                              jmp   n60_call_prolog_α
n59_call_prolog_β:      mov              r11, 60;                             jmp   n73_call_prolog_α
                        .size            n59_call_prolog_bx, .-n59_call_prolog_bx
                        .type            n60_call_prolog_bx, @function
n60_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_prolog_α:      mov              r11, 61
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    n55_call_proc_staged_β
                                                                              jmp   n61_var_ref_α
n60_call_prolog_β:      mov              r11, 61;                             jmp   n55_call_proc_staged_β
                        .size            n60_call_prolog_bx, .-n60_call_prolog_bx
                        .type            n61_var_ref_bx, @function
n61_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n62_var_ref_α
                        .size            n61_var_ref_bx, .-n61_var_ref_bx
                        .type            n62_var_ref_bx, @function
n62_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n63_var_ref_α
                        .size            n62_var_ref_bx, .-n62_var_ref_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n64_var_ref_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n65_call_proc_staged_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_call_proc_staged_bx, @function
n65_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_call_proc_staged_α: mov              r11, 66
                        lea              rsi, [rbp + 432]
                        lea              rdx, [rbp + 448]
                        lea              rcx, [rbp + 464]
                        lea              r8, [rbp + 480]
                        call             tak$2F4_dcα;                         jmp   .Lcall_proc_staged_α_183_2
.Lcall_proc_staged_α_183_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_183_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
.Lcall_proc_staged_α_183_29:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    n55_call_proc_staged_β
                                                                              jmp   n66_var_ref_α
n65_call_proc_staged_β: mov              r11, 66;                             jmp   n55_call_proc_staged_β
.Lcall_proc_staged_β_183_0:
                        .quad            .Lcall_proc_staged_β_183_0_s
.Lcall_proc_staged_β_183_0_s:
                        .string          "tak/4"
                        .size            n65_call_proc_staged_bx, .-n65_call_proc_staged_bx
                        .type            n66_var_ref_bx, @function
n66_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2208]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n67_var_ref_α
                        .size            n66_var_ref_bx, .-n66_var_ref_bx
                        .type            n67_var_ref_bx, @function
n67_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n68_var_ref_α
                        .size            n67_var_ref_bx, .-n67_var_ref_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n69_var_ref_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_var_ref_bx, @function
n69_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n70_call_proc_staged_α
                        .size            n69_var_ref_bx, .-n69_var_ref_bx
                        .type            n70_call_proc_staged_bx, @function
n70_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_call_proc_staged_α: mov              r11, 71
                        lea              rsi, [rbp + 272]
                        lea              rdx, [rbp + 288]
                        lea              rcx, [rbp + 304]
                        lea              r8, [rbp + 320]
                        call             tak$2F4_dcα;                         jmp   .Lcall_proc_staged_α_193_2
.Lcall_proc_staged_α_193_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_193_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
.Lcall_proc_staged_α_193_29:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n65_call_proc_staged_β
                                                                              jmp   n71_move_label_α
n70_call_proc_staged_β: mov              r11, 71;                             jmp   n65_call_proc_staged_β
.Lcall_proc_staged_β_193_0:
                        .quad            .Lcall_proc_staged_β_193_0_s
.Lcall_proc_staged_β_193_0_s:
                        .string          "tak/4"
                        .size            n70_call_proc_staged_bx, .-n70_call_proc_staged_bx
                        .type            n71_move_label_bx, @function
n71_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_move_label_α:       mov              r11, 72
                        lea              rax, [rip + n70_call_proc_staged_β]
                        mov              qword ptr [rbp + 96], rax;           jmp   tak$2F4_γ
                        .size            n71_move_label_bx, .-n71_move_label_bx
                        .type            n72_disjunction_bx, @function
n72_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_disjunction_α:      mov              r11, 73
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    tak$2F4_ω
                                                                              jmp   rax
n72_disjunction_β:      mov              r11, 73;                             jmp   tak$2F4_ω
                        .size            n72_disjunction_bx, .-n72_disjunction_bx
                        .type            n73_call_prolog_bx, @function
n73_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_prolog_α:      mov              r11, 74
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    tak$2F4_ω
                                                                              jmp   tak$2F4_ω
n73_call_prolog_β:      mov              r11, 74;                             jmp   tak$2F4_ω
                        .size            n73_call_prolog_bx, .-n73_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_β:
                                                                              jmp   n72_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2392]
                        lea              rsp, [rbp + 2416]
                        mov              rbp, qword ptr [rbp + 2408];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_ω:
                        mov              rcx, qword ptr [rsp + 2400]
                        lea              rsp, [rbp + 2416]
                        mov              rbp, qword ptr [rbp + 2408];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_dcα:
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
                        mov              rax, qword ptr [rsp + 24]
                        mov              edi, 3
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
                        lea              rcx, [rip + .Ltak$2F4_α_199_2]
                        lea              rdx, [rip + .Ltak$2F4_α_199_3];      jmp   FN__tak$2F4
.Ltak$2F4_α_199_2:      pop              r12
                        pop              r12;                                 jmp   r12
.Ltak$2F4_α_199_3:      pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
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
                        sub              rsp, 1344
                        mov              qword ptr [rsp + 1320], rcx
                        mov              qword ptr [rsp + 1328], rdx
                        mov              qword ptr [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1312
                        rep              stosb
main_α_body:
                        .type            n200_var_ref_bx, @function
n200_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n201_call_prolog_α
                        .size            n200_var_ref_bx, .-n200_var_ref_bx
                        .type            n201_call_prolog_bx, @function
n201_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_call_prolog_α:     mov              r11, 76
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn243: .string          "$wall_us"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn243]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    n237_lit_string_α
                                                                              jmp   n202_var_ref_α
n201_call_prolog_β:     mov              r11, 76;                             jmp   n237_lit_string_α
                        .size            n201_call_prolog_bx, .-n201_call_prolog_bx
                        .type            n202_var_ref_bx, @function
n202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n203_call_prolog_α
                        .size            n202_var_ref_bx, .-n202_var_ref_bx
                        .type            n203_call_prolog_bx, @function
n203_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_call_prolog_α:     mov              r11, 78
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn247: .string          "$wall_ms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn247]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    n237_lit_string_α
                                                                              jmp   n204_lit_integer_α
n203_call_prolog_β:     mov              r11, 78;                             jmp   n237_lit_string_α
                        .size            n203_call_prolog_bx, .-n203_call_prolog_bx
                        .type            n204_lit_integer_bx, @function
n204_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_integer_α:     mov              r11, 79
                        mov              qword ptr [rbp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_248_0]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n205_lit_integer_α
.Llit_integer_α_248_0:  .quad            18
                        .size            n204_lit_integer_bx, .-n204_lit_integer_bx
                        .type            n205_lit_integer_bx, @function
n205_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_integer_α:     mov              r11, 80
                        mov              qword ptr [rbp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_249_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n206_lit_integer_α
.Llit_integer_α_249_0:  .quad            12
                        .size            n205_lit_integer_bx, .-n205_lit_integer_bx
                        .type            n206_lit_integer_bx, @function
n206_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_integer_α:     mov              r11, 81
                        mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_250_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n207_var_ref_α
.Llit_integer_α_250_0:  .quad            6
                        .size            n206_lit_integer_bx, .-n206_lit_integer_bx
                        .type            n207_var_ref_bx, @function
n207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n208_call_proc_staged_α
                        .size            n207_var_ref_bx, .-n207_var_ref_bx
                        .type            n208_call_proc_staged_bx, @function
n208_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        mov              r11, 83
                        lea              rsi, [rbp + 1024]
                        lea              rdx, [rbp + 1040]
                        lea              rcx, [rbp + 1056]
                        lea              r8, [rbp + 1072]
                        call             tak$2F4_dcα;                         jmp   .Lcall_proc_staged_α_254_2
.Lcall_proc_staged_α_254_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_254_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
.Lcall_proc_staged_α_254_29:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    n237_lit_string_α
                                                                              jmp   n209_var_ref_α
n208_call_proc_staged_β:
                        mov              r11, 83;                             jmp   n237_lit_string_α
.Lcall_proc_staged_β_254_0:
                        .quad            .Lcall_proc_staged_β_254_0_s
.Lcall_proc_staged_β_254_0_s:
                        .string          "tak/4"
                        .size            n208_call_proc_staged_bx, .-n208_call_proc_staged_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n210_call_prolog_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_call_prolog_bx, @function
n210_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_prolog_α:     mov              r11, 85
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn258: .string          "$wall_us"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn258]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    n208_call_proc_staged_β
                                                                              jmp   n211_var_ref_α
n210_call_prolog_β:     mov              r11, 85;                             jmp   n208_call_proc_staged_β
                        .size            n210_call_prolog_bx, .-n210_call_prolog_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n212_call_prolog_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_call_prolog_bx, @function
n212_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_call_prolog_α:     mov              r11, 87
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn262: .string          "$wall_ms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn262]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n208_call_proc_staged_β
                                                                              jmp   n213_var_α
n212_call_prolog_β:     mov              r11, 87;                             jmp   n208_call_proc_staged_β
                        .size            n212_call_prolog_bx, .-n212_call_prolog_bx
                        .type            n213_var_bx, @function
n213_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_α:             mov              r11, 88
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 824], rax;          jmp   n214_call_prolog_α
                        .size            n213_var_bx, .-n213_var_bx
                        .type            n214_call_prolog_bx, @function
n214_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_call_prolog_α:     mov              r11, 89
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn266: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn266]
                        lea              rsi, [rbp + 800]
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
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    n208_call_proc_staged_β
                                                                              jmp   n215_lit_string_α
n214_call_prolog_β:     mov              r11, 89;                             jmp   n208_call_proc_staged_β
                        .size            n214_call_prolog_bx, .-n214_call_prolog_bx
                        .type            n215_lit_string_bx, @function
n215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              r11, 90
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_267_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n216_call_prolog_α
.Llit_string_α_267_0:   .quad            .Llit_string_α_267_0_s
.Llit_string_α_267_0_s: .string          ""
                        .size            n215_lit_string_bx, .-n215_lit_string_bx
                        .type            n216_call_prolog_bx, @function
n216_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_call_prolog_α:     mov              r11, 91
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn269: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn269]
                        lea              rsi, [rbp + 752]
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
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    n208_call_proc_staged_β
                                                                              jmp   n217_var_ref_α
n216_call_prolog_β:     mov              r11, 91;                             jmp   n208_call_proc_staged_β
                        .size            n216_call_prolog_bx, .-n216_call_prolog_bx
                        .type            n217_var_ref_bx, @function
n217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n218_var_α
                        .size            n217_var_ref_bx, .-n217_var_ref_bx
                        .type            n218_var_bx, @function
n218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             mov              r11, 93
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 712], rax;          jmp   n219_var_α
                        .size            n218_var_bx, .-n218_var_bx
                        .type            n219_var_bx, @function
n219_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             mov              r11, 94
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 728], rax;          jmp   n220_call_prolog_α
                        .size            n219_var_bx, .-n219_var_bx
                        .type            n220_call_prolog_bx, @function
n220_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_call_prolog_α:     mov              r11, 95
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    n237_lit_string_α
                                                                              jmp   n221_call_prolog_α
n220_call_prolog_β:     mov              r11, 95;                             jmp   n237_lit_string_α
                        .size            n220_call_prolog_bx, .-n220_call_prolog_bx
                        .type            n221_call_prolog_bx, @function
n221_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_call_prolog_α:     mov              r11, 96
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    n208_call_proc_staged_β
                                                                              jmp   n222_var_ref_α
n221_call_prolog_β:     mov              r11, 96;                             jmp   n208_call_proc_staged_β
                        .size            n221_call_prolog_bx, .-n221_call_prolog_bx
                        .type            n222_var_ref_bx, @function
n222_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n223_var_α
                        .size            n222_var_ref_bx, .-n222_var_ref_bx
                        .type            n223_var_bx, @function
n223_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             mov              r11, 98
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 552], rax;          jmp   n224_var_α
                        .size            n223_var_bx, .-n223_var_bx
                        .type            n224_var_bx, @function
n224_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             mov              r11, 99
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 568], rax;          jmp   n225_call_prolog_α
                        .size            n224_var_bx, .-n224_var_bx
                        .type            n225_call_prolog_bx, @function
n225_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_call_prolog_α:     mov              r11, 100
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n237_lit_string_α
                                                                              jmp   n226_call_prolog_α
n225_call_prolog_β:     mov              r11, 100;                            jmp   n237_lit_string_α
                        .size            n225_call_prolog_bx, .-n225_call_prolog_bx
                        .type            n226_call_prolog_bx, @function
n226_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_call_prolog_α:     mov              r11, 101
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    n208_call_proc_staged_β
                                                                              jmp   n227_lit_string_α
n226_call_prolog_β:     mov              r11, 101;                            jmp   n208_call_proc_staged_β
                        .size            n226_call_prolog_bx, .-n226_call_prolog_bx
                        .type            n227_lit_string_bx, @function
n227_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_286_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n228_lit_string_α
.Llit_string_α_286_0:   .quad            .Llit_string_α_286_0_s
.Llit_string_α_286_0_s: .string          "user_error"
                        .size            n227_lit_string_bx, .-n227_lit_string_bx
                        .type            n228_lit_string_bx, @function
n228_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 40
                        mov              rax, qword ptr [rip + .Llit_string_α_287_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n229_lit_string_α
.Llit_string_α_287_0:   .quad            .Llit_string_α_287_0_s
.Llit_string_α_287_0_s: .string          "BENCH kernel=tak work_us=~w work_ms=~w~n"
                        .size            n228_lit_string_bx, .-n228_lit_string_bx
                        .type            n229_lit_string_bx, @function
n229_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_288_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n230_var_ref_α
.Llit_string_α_288_0:   .quad            .Llit_string_α_288_0_s
.Llit_string_α_288_0_s: .string          "."
                        .size            n229_lit_string_bx, .-n229_lit_string_bx
                        .type            n230_var_ref_bx, @function
n230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n231_lit_string_α
                        .size            n230_var_ref_bx, .-n230_var_ref_bx
                        .type            n231_lit_string_bx, @function
n231_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_291_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n232_var_ref_α
.Llit_string_α_291_0:   .quad            .Llit_string_α_291_0_s
.Llit_string_α_291_0_s: .string          "."
                        .size            n231_lit_string_bx, .-n231_lit_string_bx
                        .type            n232_var_ref_bx, @function
n232_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n233_lit_string_α
                        .size            n232_var_ref_bx, .-n232_var_ref_bx
                        .type            n233_lit_string_bx, @function
n233_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:      mov              r11, 108
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_294_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n234_call_prolog_α
.Llit_string_α_294_0:   .quad            .Llit_string_α_294_0_s
.Llit_string_α_294_0_s: .string          "[]"
                        .size            n233_lit_string_bx, .-n233_lit_string_bx
                        .type            n234_call_prolog_bx, @function
n234_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_prolog_α:     mov              r11, 109
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n235_call_prolog_α
n234_call_prolog_β:     mov              r11, 109;                            jmp   main_ω
                        .size            n234_call_prolog_bx, .-n234_call_prolog_bx
                        .type            n235_call_prolog_bx, @function
n235_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_call_prolog_α:     mov              r11, 110
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n237_lit_string_α
                                                                              jmp   n236_call_prolog_α
n235_call_prolog_β:     mov              r11, 110;                            jmp   n237_lit_string_α
                        .size            n235_call_prolog_bx, .-n235_call_prolog_bx
                        .type            n236_call_prolog_bx, @function
n236_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_call_prolog_α:     mov              r11, 111
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn298: .string          "$format3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn298]
                        lea              rsi, [rbp + 96]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n208_call_proc_staged_β
                                                                              jmp   main_γ
n236_call_prolog_β:     mov              r11, 111;                            jmp   n208_call_proc_staged_β
                        .size            n236_call_prolog_bx, .-n236_call_prolog_bx
                        .type            n237_lit_string_bx, @function
n237_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rbp + 48], 2              # result
                        mov              dword ptr [rbp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_299_0]
                        mov              qword ptr [rbp + 56], rax;           jmp   n238_lit_string_α
.Llit_string_α_299_0:   .quad            .Llit_string_α_299_0_s
.Llit_string_α_299_0_s: .string          "user_error"
                        .size            n237_lit_string_bx, .-n237_lit_string_bx
                        .type            n238_lit_string_bx, @function
n238_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rbp + 64], 2              # result
                        mov              dword ptr [rbp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_300_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n239_call_prolog_α
.Llit_string_α_300_0:   .quad            .Llit_string_α_300_0_s
.Llit_string_α_300_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n238_lit_string_bx, .-n238_lit_string_bx
                        .type            n239_call_prolog_bx, @function
n239_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_call_prolog_α:     mov              r11, 114
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn302: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn302]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n239_call_prolog_β:     mov              r11, 114;                            jmp   main_ω
                        .size            n239_call_prolog_bx, .-n239_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1320]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, qword ptr [rbp + 1336];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1328]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, qword ptr [rbp + 1336];         jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "tak/4"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__tak$2F4
                        .quad            tak$2F4_dcα
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            2368
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
