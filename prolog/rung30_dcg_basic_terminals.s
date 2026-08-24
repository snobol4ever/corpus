                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__greeting$2F2:
                        sub              rsp, 784
                        mov              qword ptr [rsp + 760], rcx
                        mov              qword ptr [rsp + 768], rdx
                        mov              qword ptr [rsp + 776], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 752
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
greeting$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx22_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lx22_101
.Lx22_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx22_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx22_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx22_101
.Lx22_100:              lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx22_101:              mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    greeting$2F2_ω
                                                                              jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   greeting$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
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
.Lx27_41:               lea              r9, [rsp + 640]
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
.Lx27_54:               mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n21_call_builtin_prolog_α
                                                                              jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n21_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
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
.Lx32_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx32_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx32_41
                        cmp              esi, 1;                              jne   .Lx32_55
                        mov              r8, rax;                             jmp   .Lx32_40
.Lx32_55:               cmp              esi, 2;                              jne   .Lx32_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx32_41
                        mov              r8, rax;                             jmp   .Lx32_40
.Lx32_56:               cmp              al, 72;                              jne   .Lx32_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx32_41
                        cmp              rax, r8;                             je    .Lx32_41
                        mov              r8, rax;                             jmp   .Lx32_40
.Lx32_41:               lea              r9, [rsp + 560]
.Lx32_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx32_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx32_43
                        cmp              esi, 1;                              jne   .Lx32_57
                        mov              r9, rax;                             jmp   .Lx32_42
.Lx32_57:               cmp              esi, 2;                              jne   .Lx32_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx32_43
                        mov              r9, rax;                             jmp   .Lx32_42
.Lx32_58:               cmp              al, 72;                              jne   .Lx32_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx32_43
                        cmp              rax, r9;                             je    .Lx32_43
                        mov              r9, rax;                             jmp   .Lx32_42
.Lx32_43:               cmp              r8, r9;                              je    .Lx32_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx32_44
                        cmp              al, 104;                             je    .Lx32_44
                        cmp              al, 72;                              jne   .Lx32_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx32_44
                                                                              jmp   .Lx32_45
.Lx32_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx32_53
                        cmp              al, 104;                             je    .Lx32_53
                        cmp              al, 72;                              jne   .Lx32_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx32_53
                                                                              jmp   .Lx32_46
.Lx32_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx32_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx32_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx32_51
.Lx32_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx32_47
                        cmp              al, 104;                             je    .Lx32_47
                        cmp              al, 72;                              jne   .Lx32_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx32_47
                                                                              jmp   .Lx32_48
.Lx32_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx32_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx32_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx32_51
.Lx32_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx32_49
                        cmp              dl, 80;                              je    .Lx32_53
                                                                              jmp   .Lx32_52
.Lx32_49:               cmp              dl, 80;                              je    .Lx32_52
                        cmp              cl, 5;                               je    .Lx32_53
                        cmp              dl, 5;                               je    .Lx32_53
                        cmp              cl, 3;                               jne   .Lx32_50
                        cmp              dl, 3;                               jne   .Lx32_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx32_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx32_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx32_51
                                                                              jmp   .Lx32_52
.Lx32_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx32_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx32_53
.Lx32_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx32_54
.Lx32_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx32_54
.Lx32_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx32_54:               mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n21_call_builtin_prolog_α
                                                                              jmp   n7_var_ref_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n21_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 720]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n8_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 1
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n9_lit_string_α
.Lx35_0:                .quad            .Lx35_0_s
.Lx35_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 5
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n10_var_ref_α
.Lx36_0:                .quad            .Lx36_0_s
.Lx36_0_s:              .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n21_call_builtin_prolog_α
                                                                              jmp   n12_call_builtin_prolog_α
n11_call_builtin_prolog_β:
                        mov              r11, 12;                             jmp   n21_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        lea              r8, [rsp + 352]
.Lx40_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx40_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx40_41
                        cmp              esi, 1;                              jne   .Lx40_55
                        mov              r8, rax;                             jmp   .Lx40_40
.Lx40_55:               cmp              esi, 2;                              jne   .Lx40_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx40_41
                        mov              r8, rax;                             jmp   .Lx40_40
.Lx40_56:               cmp              al, 72;                              jne   .Lx40_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx40_41
                        cmp              rax, r8;                             je    .Lx40_41
                        mov              r8, rax;                             jmp   .Lx40_40
.Lx40_41:               lea              r9, [rsp + 368]
.Lx40_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx40_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx40_43
                        cmp              esi, 1;                              jne   .Lx40_57
                        mov              r9, rax;                             jmp   .Lx40_42
.Lx40_57:               cmp              esi, 2;                              jne   .Lx40_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx40_43
                        mov              r9, rax;                             jmp   .Lx40_42
.Lx40_58:               cmp              al, 72;                              jne   .Lx40_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx40_43
                        cmp              rax, r9;                             je    .Lx40_43
                        mov              r9, rax;                             jmp   .Lx40_42
.Lx40_43:               cmp              r8, r9;                              je    .Lx40_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx40_44
                        cmp              al, 104;                             je    .Lx40_44
                        cmp              al, 72;                              jne   .Lx40_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx40_44
                                                                              jmp   .Lx40_45
.Lx40_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx40_53
                        cmp              al, 104;                             je    .Lx40_53
                        cmp              al, 72;                              jne   .Lx40_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx40_53
                                                                              jmp   .Lx40_46
.Lx40_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx40_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx40_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx40_51
.Lx40_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx40_47
                        cmp              al, 104;                             je    .Lx40_47
                        cmp              al, 72;                              jne   .Lx40_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx40_47
                                                                              jmp   .Lx40_48
.Lx40_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx40_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx40_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx40_51
.Lx40_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx40_49
                        cmp              dl, 80;                              je    .Lx40_53
                                                                              jmp   .Lx40_52
.Lx40_49:               cmp              dl, 80;                              je    .Lx40_52
                        cmp              cl, 5;                               je    .Lx40_53
                        cmp              dl, 5;                               je    .Lx40_53
                        cmp              cl, 3;                               jne   .Lx40_50
                        cmp              dl, 3;                               jne   .Lx40_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx40_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx40_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx40_51
                                                                              jmp   .Lx40_52
.Lx40_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx40_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx40_53
.Lx40_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx40_54
.Lx40_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx40_54
.Lx40_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx40_54:               mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n21_call_builtin_prolog_α
                                                                              jmp   n13_var_ref_α
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   n21_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 688]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n15_lit_string_α
.Lx43_0:                .quad            .Lx43_0_s
.Lx43_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 5
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n16_var_ref_α
.Lx44_0:                .quad            .Lx44_0_s
.Lx44_0_s:              .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              r11, 18
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
                        cmp              al, 104;                             je    n21_call_builtin_prolog_α
                                                                              jmp   n18_call_builtin_prolog_α
n17_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   n21_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        lea              r8, [rsp + 160]
.Lx48_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx48_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx48_41
                        cmp              esi, 1;                              jne   .Lx48_55
                        mov              r8, rax;                             jmp   .Lx48_40
.Lx48_55:               cmp              esi, 2;                              jne   .Lx48_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx48_41
                        mov              r8, rax;                             jmp   .Lx48_40
.Lx48_56:               cmp              al, 72;                              jne   .Lx48_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx48_41
                        cmp              rax, r8;                             je    .Lx48_41
                        mov              r8, rax;                             jmp   .Lx48_40
.Lx48_41:               lea              r9, [rsp + 176]
.Lx48_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx48_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx48_43
                        cmp              esi, 1;                              jne   .Lx48_57
                        mov              r9, rax;                             jmp   .Lx48_42
.Lx48_57:               cmp              esi, 2;                              jne   .Lx48_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx48_43
                        mov              r9, rax;                             jmp   .Lx48_42
.Lx48_58:               cmp              al, 72;                              jne   .Lx48_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx48_43
                        cmp              rax, r9;                             je    .Lx48_43
                        mov              r9, rax;                             jmp   .Lx48_42
.Lx48_43:               cmp              r8, r9;                              je    .Lx48_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx48_44
                        cmp              al, 104;                             je    .Lx48_44
                        cmp              al, 72;                              jne   .Lx48_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx48_44
                                                                              jmp   .Lx48_45
.Lx48_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx48_53
                        cmp              al, 104;                             je    .Lx48_53
                        cmp              al, 72;                              jne   .Lx48_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx48_53
                                                                              jmp   .Lx48_46
.Lx48_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx48_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx48_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx48_51
.Lx48_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx48_47
                        cmp              al, 104;                             je    .Lx48_47
                        cmp              al, 72;                              jne   .Lx48_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx48_47
                                                                              jmp   .Lx48_48
.Lx48_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx48_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx48_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx48_51
.Lx48_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx48_49
                        cmp              dl, 80;                              je    .Lx48_53
                                                                              jmp   .Lx48_52
.Lx48_49:               cmp              dl, 80;                              je    .Lx48_52
                        cmp              cl, 5;                               je    .Lx48_53
                        cmp              dl, 5;                               je    .Lx48_53
                        cmp              cl, 3;                               jne   .Lx48_50
                        cmp              dl, 3;                               jne   .Lx48_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx48_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx48_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx48_51
                                                                              jmp   .Lx48_52
.Lx48_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx48_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx48_53
.Lx48_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx48_54
.Lx48_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx48_54
.Lx48_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx48_54:               mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n21_call_builtin_prolog_α
                                                                              jmp   n19_move_label_α
n18_call_builtin_prolog_β:
                        mov              r11, 19;                             jmp   n21_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_move_label_α:       mov              r11, 20
                        lea              rax, [rip + n21_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 64], rax;           jmp   greeting$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n20_disjunction_α:      mov              r11, 21
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    greeting$2F2_ω
                                                                              jmp   rax
n20_disjunction_β:      mov              r11, 21;                             jmp   greeting$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              r11, 22
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
                        cmp              al, 104;                             je    greeting$2F2_ω
                                                                              jmp   greeting$2F2_ω
n21_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   greeting$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
greeting$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
greeting$2F2_β:
                                                                              jmp   n20_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
greeting$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 760]
                        add              rsp, 784;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
greeting$2F2_ω:
                        mov              rcx, qword ptr [rsp + 768]
                        add              rsp, 784;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
greeting$2F2_dcα:
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
                        lea              rcx, [rip + .Lx54_2]
                        lea              rdx, [rip + .Lx54_3];                jmp   FN__greeting$2F2
.Lx54_2:                pop              r12
                        pop              r12;                                 jmp   r12
.Lx54_3:                pop              r12
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
                        sub              rsp, 1072
                        mov              qword ptr [rsp + 1048], rcx
                        mov              qword ptr [rsp + 1056], rdx
                        mov              qword ptr [rsp + 1064], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1040
                        rep              stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              r11, 23
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx89_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx89_101
.Lx89_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx89_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx89_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx89_101
.Lx89_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx89_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n56_lit_string_α
n55_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n57_lit_string_α
.Lx90_0:                .quad            .Lx90_0_s
.Lx90_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 5
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n58_lit_string_α
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n59_lit_string_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 5
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n60_lit_string_α
.Lx93_0:                .quad            .Lx93_0_s
.Lx93_0_s:              .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 2
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n61_call_builtin_prolog_α
.Lx94_0:                .quad            .Lx94_0_s
.Lx94_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n62_call_builtin_prolog_α
n61_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n67_lit_string_α
                                                                              jmp   n63_lit_string_α
n62_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 2
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n64_call_proc_staged_α
.Lx97_0:                .quad            .Lx97_0_s
.Lx97_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_proc_staged_α: mov              r11, 32
                        lea              rsi, [rsp + 912]
                        lea              rdx, [rsp + 1008]
                        call             greeting$2F2_dcα;                    jmp   .Lx99_2
.Lx99_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx99_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
.Lx99_29:               mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n67_lit_string_α
                                                                              jmp   n65_lit_string_α
n64_call_proc_staged_β: mov              r11, 32;                             jmp   n67_lit_string_α
.Lx99_0:                .quad            .Lx99_0_s
.Lx99_0_s:              .string          "greeting/2"
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 3
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n66_call_builtin_prolog_α
.Lx100_0:               .quad            .Lx100_0_s
.Lx100_0_s:             .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              r11, 34
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn102:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn102]
                        lea              rsi, [rsp + 624]
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
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n88_call_builtin_prolog_α
                                                                              jmp   n69_lit_string_α
n66_call_builtin_prolog_β:
                        mov              r11, 34;                             jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 2
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n68_call_builtin_prolog_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn105:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn105]
                        lea              rsi, [rsp + 672]
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
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n88_call_builtin_prolog_α
                                                                              jmp   n69_lit_string_α
n68_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 0
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n70_call_builtin_prolog_α
.Lx106_0:               .quad            .Lx106_0_s
.Lx106_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn108:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]
                        lea              rsi, [rsp + 576]
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
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n88_call_builtin_prolog_α
                                                                              jmp   n71_lit_string_α
n70_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n72_lit_string_α
.Lx109_0:               .quad            .Lx109_0_s
.Lx109_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 5
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n73_lit_string_α
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n74_lit_string_α
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 5
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n75_lit_string_α
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "there"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 2
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n76_call_builtin_prolog_α
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_prolog_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 312]
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n77_call_builtin_prolog_α
n76_call_builtin_prolog_β:
                        mov              r11, 44;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              r11, 45
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n82_lit_string_α
                                                                              jmp   n78_lit_string_α
n77_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 2
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n79_call_proc_staged_α
.Lx116_0:               .quad            .Lx116_0_s
.Lx116_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_proc_staged_α: mov              r11, 47
                        lea              rsi, [rsp + 448]
                        lea              rdx, [rsp + 544]
                        call             greeting$2F2_dcα;                    jmp   .Lx118_2
.Lx118_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx118_29
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
.Lx118_29:              mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n82_lit_string_α
                                                                              jmp   n80_lit_string_α
n79_call_proc_staged_β: mov              r11, 47;                             jmp   n82_lit_string_α
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          "greeting/2"
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 3
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n81_call_builtin_prolog_α
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn121:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn121]
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
                        cmp              al, 104;                             je    n88_call_builtin_prolog_α
                                                                              jmp   n84_lit_string_α
n81_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n83_call_builtin_prolog_α
.Lx122_0:               .quad            .Lx122_0_s
.Lx122_0_s:             .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn124:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn124]
                        lea              rsi, [rsp + 208]
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
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n88_call_builtin_prolog_α
                                                                              jmp   n84_lit_string_α
n83_call_builtin_prolog_β:
                        mov              r11, 51;                             jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              r11, 52
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n85_call_builtin_prolog_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
                        mov              r11, 53
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn127:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
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
                        cmp              al, 104;                             je    n88_call_builtin_prolog_α
                                                                              jmp   n86_move_label_α
n85_call_builtin_prolog_β:
                        mov              r11, 53;                             jmp   n88_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n86_move_label_α:       mov              r11, 54
                        lea              rax, [rip + n88_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n87_disjunction_α:      mov              r11, 55
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
n87_disjunction_β:      mov              r11, 55;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_prolog_α:
                        mov              r11, 56
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
n88_call_builtin_prolog_β:
                        mov              r11, 56;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n87_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1048]
                        add              rsp, 1072;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1056]
                        add              rsp, 1072;                           jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "greeting/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__greeting$2F2
                        .quad            greeting$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            736
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
