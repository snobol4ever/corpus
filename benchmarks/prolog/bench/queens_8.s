                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sel$2F3:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1016], rcx
                        mov              qword ptr [rsp + 1024], rdx
                        mov              qword ptr [rsp + 1032], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 896
                        mov              edx, 1008
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sel$2F3_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_30_102
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72];           jmp   .Lcall_prolog_α_30_101
.Lcall_prolog_α_30_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_30_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_30_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_30_101
.Lcall_prolog_α_30_100: lea              rdi, [rbp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_30_101: mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    sel$2F3_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   sel$2F3_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n2_var_ref_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n3_call_prolog_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_call_prolog_bx, @function
n3_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_prolog_α:       mov              r11, 4
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lcall_prolog_α_35_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_35_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_35_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_35_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_35_40
.Lcall_prolog_α_35_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_35_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_35_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_35_40
.Lcall_prolog_α_35_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_35_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_35_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_35_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_35_40
.Lcall_prolog_α_35_41:  lea              r9, [rbp + 848]
.Lcall_prolog_α_35_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_35_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_35_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_35_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_35_42
.Lcall_prolog_α_35_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_35_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_35_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_35_42
.Lcall_prolog_α_35_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_35_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_35_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_35_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_35_42
.Lcall_prolog_α_35_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_35_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_35_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_35_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_35_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_35_44
                                                                              jmp   .Lcall_prolog_α_35_45
.Lcall_prolog_α_35_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_35_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_35_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_35_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_35_53
                                                                              jmp   .Lcall_prolog_α_35_46
.Lcall_prolog_α_35_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_35_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_35_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_35_51
.Lcall_prolog_α_35_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_35_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_35_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_35_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_35_47
                                                                              jmp   .Lcall_prolog_α_35_48
.Lcall_prolog_α_35_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_35_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_35_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_35_51
.Lcall_prolog_α_35_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_35_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_35_53
                                                                              jmp   .Lcall_prolog_α_35_52
.Lcall_prolog_α_35_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_35_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_35_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_35_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_35_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_35_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_35_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_35_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_35_51
                                                                              jmp   .Lcall_prolog_α_35_52
.Lcall_prolog_α_35_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_35_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_35_53
.Lcall_prolog_α_35_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_35_54
.Lcall_prolog_α_35_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_35_54
.Lcall_prolog_α_35_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_35_54:  mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    n12_call_prolog_α
                                                                              jmp   n4_var_ref_α
n3_call_prolog_β:       mov              r11, 4;                              jmp   n12_call_prolog_α
                        .size            n3_call_prolog_bx, .-n3_call_prolog_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n5_var_ref_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n6_var_ref_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n7_call_prolog_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_call_prolog_bx, @function
n7_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_call_prolog_α:       mov              r11, 8
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lcall_prolog_α_42_60:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_42_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_42_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_42_60
.Lcall_prolog_α_42_62:  cmp              esi, 2;                              jne   .Lcall_prolog_α_42_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_42_60
.Lcall_prolog_α_42_63:  cmp              al, 72;                              jne   .Lcall_prolog_α_42_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_42_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_42_60
.Lcall_prolog_α_42_61:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_42_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_42_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_42_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_42_80
                                                                              jmp   .Lcall_prolog_α_42_74
.Lcall_prolog_α_42_74:  mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_42_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_42_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_42_73
                        lea              r9, [rbp + 752]
.Lcall_prolog_α_42_64:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_42_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_42_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_42_64
.Lcall_prolog_α_42_66:  cmp              esi, 2;                              jne   .Lcall_prolog_α_42_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_42_64
.Lcall_prolog_α_42_67:  cmp              al, 72;                              jne   .Lcall_prolog_α_42_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_42_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_42_64
.Lcall_prolog_α_42_65:  lea              rcx, [rbp + 768]
.Lcall_prolog_α_42_68:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_42_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_42_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_42_68
.Lcall_prolog_α_42_70:  cmp              esi, 2;                              jne   .Lcall_prolog_α_42_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_42_68
.Lcall_prolog_α_42_71:  cmp              al, 72;                              jne   .Lcall_prolog_α_42_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_42_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_42_68
.Lcall_prolog_α_42_69:  cmp              r9, rcx;                             je    .Lcall_prolog_α_42_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_42_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_42_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_42_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_42_75
                                                                              jmp   .Lcall_prolog_α_42_72
.Lcall_prolog_α_42_75:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_42_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_42_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_42_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_42_76
                                                                              jmp   .Lcall_prolog_α_42_72
.Lcall_prolog_α_42_76:  lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_42_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_42_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_42_77
.Lcall_prolog_α_42_80:  lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_42_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_42_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_42_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_42_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_42_72
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
                        lea              r9, [rbp + 752]
.Lcall_prolog_α_42_81:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_42_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_42_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_42_81
.Lcall_prolog_α_42_83:  cmp              esi, 2;                              jne   .Lcall_prolog_α_42_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_42_81
.Lcall_prolog_α_42_84:  cmp              al, 72;                              jne   .Lcall_prolog_α_42_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_42_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_42_81
.Lcall_prolog_α_42_82:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_42_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_42_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_42_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_42_85
                                                                              jmp   .Lcall_prolog_α_42_86
.Lcall_prolog_α_42_85:  mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_42_87
.Lcall_prolog_α_42_86:  mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_42_87:  lea              rcx, [rbp + 768]
.Lcall_prolog_α_42_88:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_42_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_42_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_42_88
.Lcall_prolog_α_42_90:  cmp              esi, 2;                              jne   .Lcall_prolog_α_42_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_42_88
.Lcall_prolog_α_42_91:  cmp              al, 72;                              jne   .Lcall_prolog_α_42_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_42_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_42_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_42_88
.Lcall_prolog_α_42_89:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_42_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_42_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_42_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_42_92
                                                                              jmp   .Lcall_prolog_α_42_93
.Lcall_prolog_α_42_92:  mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_42_94
.Lcall_prolog_α_42_93:  mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_42_94:  lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_42_77
.Lcall_prolog_α_42_73:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_42_77
.Lcall_prolog_α_42_72:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_42_77:  mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    n12_call_prolog_α
                                                                              jmp   n8_var_ref_α
n7_call_prolog_β:       mov              r11, 8;                              jmp   n12_call_prolog_α
                        .size            n7_call_prolog_bx, .-n7_call_prolog_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n9_var_ref_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n10_call_prolog_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_call_prolog_bx, @function
n10_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_call_prolog_α:      mov              r11, 11
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        lea              r8, [rbp + 640]
.Lcall_prolog_α_47_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_47_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_47_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_47_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_47_40
.Lcall_prolog_α_47_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_47_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_47_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_47_40
.Lcall_prolog_α_47_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_47_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_47_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_47_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_47_40
.Lcall_prolog_α_47_41:  lea              r9, [rbp + 656]
.Lcall_prolog_α_47_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_47_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_47_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_47_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_47_42
.Lcall_prolog_α_47_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_47_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_47_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_47_42
.Lcall_prolog_α_47_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_47_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_47_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_47_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_47_42
.Lcall_prolog_α_47_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_47_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_47_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_47_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_47_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_47_44
                                                                              jmp   .Lcall_prolog_α_47_45
.Lcall_prolog_α_47_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_47_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_47_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_47_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_47_53
                                                                              jmp   .Lcall_prolog_α_47_46
.Lcall_prolog_α_47_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_47_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_47_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_47_51
.Lcall_prolog_α_47_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_47_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_47_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_47_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_47_47
                                                                              jmp   .Lcall_prolog_α_47_48
.Lcall_prolog_α_47_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_47_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_47_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_47_51
.Lcall_prolog_α_47_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_47_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_47_53
                                                                              jmp   .Lcall_prolog_α_47_52
.Lcall_prolog_α_47_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_47_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_47_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_47_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_47_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_47_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_47_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_47_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_47_51
                                                                              jmp   .Lcall_prolog_α_47_52
.Lcall_prolog_α_47_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_47_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_47_53
.Lcall_prolog_α_47_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_47_54
.Lcall_prolog_α_47_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_47_54
.Lcall_prolog_α_47_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_47_54:  mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    n12_call_prolog_α
                                                                              jmp   n11_suspend_α
n10_call_prolog_β:      mov              r11, 11;                             jmp   n12_call_prolog_α
                        .size            n10_call_prolog_bx, .-n10_call_prolog_bx
                        .type            n11_suspend_bx, @function
n11_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:          mov              r11, 12
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_49_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 896];          jmp   rax
.Lsuspend_α_49_61:      mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
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
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax;            jmp   sel$2F3_γ
n11_suspend_β:          mov              r11, 12;                             jmp   n12_call_prolog_α
                        .size            n11_suspend_bx, .-n11_suspend_bx
                        .type            n12_call_prolog_bx, @function
n12_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_prolog_α:      mov              r11, 13
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    sel$2F3_ω
                                                                              jmp   n13_var_ref_α
n12_call_prolog_β:      mov              r11, 13;                             jmp   sel$2F3_ω
                        .size            n12_call_prolog_bx, .-n12_call_prolog_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n14_var_ref_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n15_call_prolog_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_call_prolog_bx, @function
n15_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_prolog_α:      mov              r11, 16
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        lea              r8, [rbp + 512]
.Lcall_prolog_α_55_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_55_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_55_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_55_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_55_40
.Lcall_prolog_α_55_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_55_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_55_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_55_40
.Lcall_prolog_α_55_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_55_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_55_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_55_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_55_40
.Lcall_prolog_α_55_41:  lea              r9, [rbp + 528]
.Lcall_prolog_α_55_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_55_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_55_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_55_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_55_42
.Lcall_prolog_α_55_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_55_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_55_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_55_42
.Lcall_prolog_α_55_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_55_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_55_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_55_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_55_42
.Lcall_prolog_α_55_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_55_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_55_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_55_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_55_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_55_44
                                                                              jmp   .Lcall_prolog_α_55_45
.Lcall_prolog_α_55_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_55_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_55_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_55_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_55_53
                                                                              jmp   .Lcall_prolog_α_55_46
.Lcall_prolog_α_55_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_55_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_55_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_55_51
.Lcall_prolog_α_55_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_55_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_55_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_55_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_55_47
                                                                              jmp   .Lcall_prolog_α_55_48
.Lcall_prolog_α_55_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_55_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_55_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_55_51
.Lcall_prolog_α_55_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_55_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_55_53
                                                                              jmp   .Lcall_prolog_α_55_52
.Lcall_prolog_α_55_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_55_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_55_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_55_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_55_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_55_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_55_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_55_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_55_51
                                                                              jmp   .Lcall_prolog_α_55_52
.Lcall_prolog_α_55_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_55_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_55_53
.Lcall_prolog_α_55_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_55_54
.Lcall_prolog_α_55_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_55_54
.Lcall_prolog_α_55_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_55_54:  mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n16_var_ref_α
n15_call_prolog_β:      mov              r11, 16;                             jmp   n29_call_prolog_α
                        .size            n15_call_prolog_bx, .-n15_call_prolog_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n17_var_ref_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_var_ref_bx, @function
n17_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n18_var_ref_α
                        .size            n17_var_ref_bx, .-n17_var_ref_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n19_call_prolog_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_call_prolog_bx, @function
n19_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_prolog_α:      mov              r11, 20
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lcall_prolog_α_62_60:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_62_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_62_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_62_60
.Lcall_prolog_α_62_62:  cmp              esi, 2;                              jne   .Lcall_prolog_α_62_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_62_60
.Lcall_prolog_α_62_63:  cmp              al, 72;                              jne   .Lcall_prolog_α_62_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_62_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_62_60
.Lcall_prolog_α_62_61:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_62_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_62_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_62_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_62_80
                                                                              jmp   .Lcall_prolog_α_62_74
.Lcall_prolog_α_62_74:  mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_62_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_62_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_62_73
                        lea              r9, [rbp + 432]
.Lcall_prolog_α_62_64:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_62_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_62_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_62_64
.Lcall_prolog_α_62_66:  cmp              esi, 2;                              jne   .Lcall_prolog_α_62_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_62_64
.Lcall_prolog_α_62_67:  cmp              al, 72;                              jne   .Lcall_prolog_α_62_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_62_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_62_64
.Lcall_prolog_α_62_65:  lea              rcx, [rbp + 448]
.Lcall_prolog_α_62_68:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_62_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_62_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_62_68
.Lcall_prolog_α_62_70:  cmp              esi, 2;                              jne   .Lcall_prolog_α_62_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_62_68
.Lcall_prolog_α_62_71:  cmp              al, 72;                              jne   .Lcall_prolog_α_62_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_62_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_62_68
.Lcall_prolog_α_62_69:  cmp              r9, rcx;                             je    .Lcall_prolog_α_62_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_62_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_62_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_62_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_62_75
                                                                              jmp   .Lcall_prolog_α_62_72
.Lcall_prolog_α_62_75:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_62_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_62_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_62_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_62_76
                                                                              jmp   .Lcall_prolog_α_62_72
.Lcall_prolog_α_62_76:  lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_62_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_62_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_62_77
.Lcall_prolog_α_62_80:  lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_62_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_62_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_62_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_62_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_62_72
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
                        lea              r9, [rbp + 432]
.Lcall_prolog_α_62_81:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_62_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_62_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_62_81
.Lcall_prolog_α_62_83:  cmp              esi, 2;                              jne   .Lcall_prolog_α_62_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_62_81
.Lcall_prolog_α_62_84:  cmp              al, 72;                              jne   .Lcall_prolog_α_62_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_62_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_62_81
.Lcall_prolog_α_62_82:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_62_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_62_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_62_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_62_85
                                                                              jmp   .Lcall_prolog_α_62_86
.Lcall_prolog_α_62_85:  mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_62_87
.Lcall_prolog_α_62_86:  mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_62_87:  lea              rcx, [rbp + 448]
.Lcall_prolog_α_62_88:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_62_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_62_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_62_88
.Lcall_prolog_α_62_90:  cmp              esi, 2;                              jne   .Lcall_prolog_α_62_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_62_88
.Lcall_prolog_α_62_91:  cmp              al, 72;                              jne   .Lcall_prolog_α_62_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_62_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_62_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_62_88
.Lcall_prolog_α_62_89:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_62_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_62_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_62_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_62_92
                                                                              jmp   .Lcall_prolog_α_62_93
.Lcall_prolog_α_62_92:  mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_62_94
.Lcall_prolog_α_62_93:  mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_62_94:  lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_62_77
.Lcall_prolog_α_62_73:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_62_77
.Lcall_prolog_α_62_72:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_62_77:  mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n20_var_ref_α
n19_call_prolog_β:      mov              r11, 20;                             jmp   n29_call_prolog_α
                        .size            n19_call_prolog_bx, .-n19_call_prolog_bx
                        .type            n20_var_ref_bx, @function
n20_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n21_var_ref_α
                        .size            n20_var_ref_bx, .-n20_var_ref_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n22_var_ref_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_var_ref_bx, @function
n22_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n23_call_prolog_α
                        .size            n22_var_ref_bx, .-n22_var_ref_bx
                        .type            n23_call_prolog_bx, @function
n23_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_prolog_α:      mov              r11, 24
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lcall_prolog_α_69_60:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_69_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_69_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_69_60
.Lcall_prolog_α_69_62:  cmp              esi, 2;                              jne   .Lcall_prolog_α_69_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_69_60
.Lcall_prolog_α_69_63:  cmp              al, 72;                              jne   .Lcall_prolog_α_69_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_69_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_69_60
.Lcall_prolog_α_69_61:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_69_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_69_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_69_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_69_80
                                                                              jmp   .Lcall_prolog_α_69_74
.Lcall_prolog_α_69_74:  mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_69_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_69_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_69_73
                        lea              r9, [rbp + 320]
.Lcall_prolog_α_69_64:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_69_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_69_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_69_64
.Lcall_prolog_α_69_66:  cmp              esi, 2;                              jne   .Lcall_prolog_α_69_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_69_64
.Lcall_prolog_α_69_67:  cmp              al, 72;                              jne   .Lcall_prolog_α_69_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_69_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_69_64
.Lcall_prolog_α_69_65:  lea              rcx, [rbp + 336]
.Lcall_prolog_α_69_68:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_69_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_69_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_69_68
.Lcall_prolog_α_69_70:  cmp              esi, 2;                              jne   .Lcall_prolog_α_69_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_69_68
.Lcall_prolog_α_69_71:  cmp              al, 72;                              jne   .Lcall_prolog_α_69_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_69_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_69_68
.Lcall_prolog_α_69_69:  cmp              r9, rcx;                             je    .Lcall_prolog_α_69_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_69_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_69_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_69_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_69_75
                                                                              jmp   .Lcall_prolog_α_69_72
.Lcall_prolog_α_69_75:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_69_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_69_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_69_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_69_76
                                                                              jmp   .Lcall_prolog_α_69_72
.Lcall_prolog_α_69_76:  lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_69_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_69_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_69_77
.Lcall_prolog_α_69_80:  lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_69_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_69_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_69_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_69_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_69_72
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
                        lea              r9, [rbp + 320]
.Lcall_prolog_α_69_81:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_69_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_69_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_69_81
.Lcall_prolog_α_69_83:  cmp              esi, 2;                              jne   .Lcall_prolog_α_69_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_69_81
.Lcall_prolog_α_69_84:  cmp              al, 72;                              jne   .Lcall_prolog_α_69_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_69_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_69_81
.Lcall_prolog_α_69_82:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_69_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_69_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_69_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_69_85
                                                                              jmp   .Lcall_prolog_α_69_86
.Lcall_prolog_α_69_85:  mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_69_87
.Lcall_prolog_α_69_86:  mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_69_87:  lea              rcx, [rbp + 336]
.Lcall_prolog_α_69_88:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_69_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_69_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_69_88
.Lcall_prolog_α_69_90:  cmp              esi, 2;                              jne   .Lcall_prolog_α_69_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_69_88
.Lcall_prolog_α_69_91:  cmp              al, 72;                              jne   .Lcall_prolog_α_69_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_69_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_69_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_69_88
.Lcall_prolog_α_69_89:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_69_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_69_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_69_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_69_92
                                                                              jmp   .Lcall_prolog_α_69_93
.Lcall_prolog_α_69_92:  mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_69_94
.Lcall_prolog_α_69_93:  mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_69_94:  lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_69_77
.Lcall_prolog_α_69_73:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_69_77
.Lcall_prolog_α_69_72:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_69_77:  mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n24_var_ref_α
n23_call_prolog_β:      mov              r11, 24;                             jmp   n29_call_prolog_α
                        .size            n23_call_prolog_bx, .-n23_call_prolog_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n25_var_ref_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n26_var_ref_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n27_call_proc_staged_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_call_proc_staged_bx, @function
n27_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α: mov              r11, 28
                        mov              qword ptr [rbp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_77_200
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_77_201
.Lcall_proc_staged_α_77_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_77_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_77_202
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_77_203
.Lcall_proc_staged_α_77_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_77_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_77_204
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_77_205
.Lcall_proc_staged_α_77_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_77_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_77_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_77_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_77_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_77_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_77_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_77_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 200], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_77_5
                        mov              qword ptr [rbp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_77_2
.Lcall_proc_staged_α_77_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_77_2
.Lcall_proc_staged_α_77_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_77_6
                        mov              qword ptr [rbp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_77_2
.Lcall_proc_staged_α_77_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_77_2
.Lcall_proc_staged_α_77_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_77_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_call_prolog_α
.Lcall_proc_staged_α_77_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_77_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
.Lcall_proc_staged_α_77_29:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n28_suspend_α
n27_call_proc_staged_β: mov              r11, 28
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 192], 0
                        lea              rdi, [rbp + 208]
                        lea              rsi, [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n29_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              ecx, 64
                        mov              r8d, 896
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n29_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_77_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_77_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_77_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_77_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_77_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n28_suspend_α
.Lcall_proc_staged_α_77_0:
                        .quad            .Lcall_proc_staged_α_77_0_s
.Lcall_proc_staged_α_77_0_s:
                        .string          "sel/3"
                        .size            n27_call_proc_staged_bx, .-n27_call_proc_staged_bx
                        .type            n28_suspend_bx, @function
n28_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_suspend_α:          mov              r11, 29
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_79_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 896];          jmp   rax
.Lsuspend_α_79_61:      mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rip + n28_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax;            jmp   sel$2F3_γ
n28_suspend_β:          mov              r11, 29;                             jmp   n27_call_proc_staged_β
                        .size            n28_suspend_bx, .-n28_suspend_bx
                        .type            n29_call_prolog_bx, @function
n29_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_prolog_α:      mov              r11, 30
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    sel$2F3_ω
                                                                              jmp   sel$2F3_ω
n29_call_prolog_β:      mov              r11, 30;                             jmp   sel$2F3_ω
                        .size            n29_call_prolog_bx, .-n29_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_β:
                                                                              jmp   n11_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lsel$2F3_α_80_50
                        mov              qword ptr [rsp + 896], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 896];          jmp   rax
.Lsel$2F3_α_80_50:      mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1016]
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1024]
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__queens$2F2:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
queens$2F2_α_body:
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        .type            n81_call_prolog_bx, @function
n81_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_call_prolog_α:      mov              r11, 31
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_94_102
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56];           jmp   .Lcall_prolog_α_94_101
.Lcall_prolog_α_94_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_94_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_94_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_94_101
.Lcall_prolog_α_94_100: lea              rdi, [rbp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_94_101: mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    queens$2F2_ω
                                                                              jmp   n82_var_ref_α
n81_call_prolog_β:      mov              r11, 31;                             jmp   queens$2F2_ω
                        .size            n81_call_prolog_bx, .-n81_call_prolog_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n83_var_ref_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n84_call_prolog_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_call_prolog_bx, @function
n84_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_prolog_α:      mov              r11, 34
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        lea              r8, [rbp + 352]
.Lcall_prolog_α_99_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_99_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_99_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_99_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_99_40
.Lcall_prolog_α_99_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_99_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_99_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_99_40
.Lcall_prolog_α_99_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_99_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_99_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_99_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_99_40
.Lcall_prolog_α_99_41:  lea              r9, [rbp + 368]
.Lcall_prolog_α_99_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_99_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_99_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_99_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_99_42
.Lcall_prolog_α_99_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_99_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_99_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_99_42
.Lcall_prolog_α_99_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_99_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_99_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_99_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_99_42
.Lcall_prolog_α_99_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_99_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_99_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_99_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_99_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_99_44
                                                                              jmp   .Lcall_prolog_α_99_45
.Lcall_prolog_α_99_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_99_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_99_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_99_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_99_53
                                                                              jmp   .Lcall_prolog_α_99_46
.Lcall_prolog_α_99_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_99_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_99_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_99_51
.Lcall_prolog_α_99_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_99_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_99_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_99_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_99_47
                                                                              jmp   .Lcall_prolog_α_99_48
.Lcall_prolog_α_99_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_99_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_99_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_99_51
.Lcall_prolog_α_99_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_99_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_99_53
                                                                              jmp   .Lcall_prolog_α_99_52
.Lcall_prolog_α_99_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_99_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_99_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_99_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_99_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_99_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_99_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_99_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_99_51
                                                                              jmp   .Lcall_prolog_α_99_52
.Lcall_prolog_α_99_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_99_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_99_53
.Lcall_prolog_α_99_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_99_54
.Lcall_prolog_α_99_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_99_54
.Lcall_prolog_α_99_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_99_54:  mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    n93_call_prolog_α
                                                                              jmp   n85_var_ref_α
n84_call_prolog_β:      mov              r11, 34;                             jmp   n93_call_prolog_α
                        .size            n84_call_prolog_bx, .-n84_call_prolog_bx
                        .type            n85_var_ref_bx, @function
n85_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n86_var_ref_α
                        .size            n85_var_ref_bx, .-n85_var_ref_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n87_call_prolog_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_call_prolog_bx, @function
n87_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_prolog_α:      mov              r11, 37
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        lea              r8, [rbp + 272]
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
.Lcall_prolog_α_104_41: lea              r9, [rbp + 288]
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
.Lcall_prolog_α_104_54: mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    n93_call_prolog_α
                                                                              jmp   n88_var_ref_α
n87_call_prolog_β:      mov              r11, 37;                             jmp   n93_call_prolog_α
                        .size            n87_call_prolog_bx, .-n87_call_prolog_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n89_lit_string_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_lit_string_bx, @function
n89_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_107_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n90_var_ref_α
.Llit_string_α_107_0:   .quad            .Llit_string_α_107_0_s
.Llit_string_α_107_0_s: .string          "[]"
                        .size            n89_lit_string_bx, .-n89_lit_string_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n91_call_proc_staged_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_call_proc_staged_bx, @function
n91_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α: mov              r11, 41
                        mov              qword ptr [rbp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_111_200
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_111_201
.Lcall_proc_staged_α_111_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_111_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_111_202
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_111_203
.Lcall_proc_staged_α_111_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_111_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_111_204
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_111_205
.Lcall_proc_staged_α_111_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_111_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_111_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_111_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_111_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_111_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_111_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_111_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 184], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_111_5
                        mov              qword ptr [rbp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_111_2
.Lcall_proc_staged_α_111_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_111_2
.Lcall_proc_staged_α_111_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_111_6
                        mov              qword ptr [rbp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_111_2
.Lcall_proc_staged_α_111_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_111_2
.Lcall_proc_staged_α_111_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_111_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n93_call_prolog_α
.Lcall_proc_staged_α_111_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_111_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
.Lcall_proc_staged_α_111_29:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n93_call_prolog_α
                                                                              jmp   n92_suspend_α
n91_call_proc_staged_β: mov              r11, 41
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 176], 0
                        lea              rdi, [rbp + 192]
                        lea              rsi, [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n93_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              ecx, 64
                        mov              r8d, 1520
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n93_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_111_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_111_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_111_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_111_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_111_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n93_call_prolog_α
                                                                              jmp   n92_suspend_α
.Lcall_proc_staged_α_111_0:
                        .quad            .Lcall_proc_staged_α_111_0_s
.Lcall_proc_staged_α_111_0_s:
                        .string          "queens_2/3"
                        .size            n91_call_proc_staged_bx, .-n91_call_proc_staged_bx
                        .type            n92_suspend_bx, @function
n92_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_suspend_α:          mov              r11, 42
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_113_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 416];          jmp   rax
.Lsuspend_α_113_61:     mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n92_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax;            jmp   queens$2F2_γ
n92_suspend_β:          mov              r11, 42;                             jmp   n91_call_proc_staged_β
                        .size            n92_suspend_bx, .-n92_suspend_bx
                        .type            n93_call_prolog_bx, @function
n93_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_prolog_α:      mov              r11, 43
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    queens$2F2_ω
                                                                              jmp   queens$2F2_ω
n93_call_prolog_β:      mov              r11, 43;                             jmp   queens$2F2_ω
                        .size            n93_call_prolog_bx, .-n93_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_β:
                                                                              jmp   n92_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lqueens$2F2_α_114_50
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
.Lqueens$2F2_α_114_50:  mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        lea              rsp, [rbp + 512]
                        mov              rbp, qword ptr [rbp + 504];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, qword ptr [rbp + 504];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__not_attack$2F2:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 480
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
not_attack$2F2_α_body:
                        .type            n115_call_prolog_bx, @function
n115_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_prolog_α:     mov              r11, 44
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_129_102
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88];           jmp   .Lcall_prolog_α_129_101
.Lcall_prolog_α_129_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_129_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_129_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_129_101
.Lcall_prolog_α_129_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_129_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    not_attack$2F2_ω
                                                                              jmp   n116_var_ref_α
n115_call_prolog_β:     mov              r11, 44;                             jmp   not_attack$2F2_ω
                        .size            n115_call_prolog_bx, .-n115_call_prolog_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n117_var_ref_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_var_ref_bx, @function
n117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n118_call_prolog_α
                        .size            n117_var_ref_bx, .-n117_var_ref_bx
                        .type            n118_call_prolog_bx, @function
n118_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_call_prolog_α:     mov              r11, 47
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        lea              r8, [rbp + 368]
.Lcall_prolog_α_134_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_134_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_134_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_134_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_134_40
.Lcall_prolog_α_134_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_134_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_134_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_134_40
.Lcall_prolog_α_134_56: cmp              al, 72;                              jne   .Lcall_prolog_α_134_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_134_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_134_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_134_40
.Lcall_prolog_α_134_41: lea              r9, [rbp + 384]
.Lcall_prolog_α_134_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_134_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_134_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_134_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_134_42
.Lcall_prolog_α_134_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_134_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_134_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_134_42
.Lcall_prolog_α_134_58: cmp              al, 72;                              jne   .Lcall_prolog_α_134_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_134_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_134_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_134_42
.Lcall_prolog_α_134_43: cmp              r8, r9;                              je    .Lcall_prolog_α_134_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_134_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_134_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_134_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_134_44
                                                                              jmp   .Lcall_prolog_α_134_45
.Lcall_prolog_α_134_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_134_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_134_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_134_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_134_53
                                                                              jmp   .Lcall_prolog_α_134_46
.Lcall_prolog_α_134_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_134_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_134_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_134_51
.Lcall_prolog_α_134_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_134_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_134_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_134_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_134_47
                                                                              jmp   .Lcall_prolog_α_134_48
.Lcall_prolog_α_134_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_134_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_134_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_134_51
.Lcall_prolog_α_134_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_134_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_134_53
                                                                              jmp   .Lcall_prolog_α_134_52
.Lcall_prolog_α_134_49: cmp              dl, 80;                              je    .Lcall_prolog_α_134_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_134_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_134_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_134_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_134_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_134_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_134_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_134_51
                                                                              jmp   .Lcall_prolog_α_134_52
.Lcall_prolog_α_134_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_134_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_134_53
.Lcall_prolog_α_134_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_134_54
.Lcall_prolog_α_134_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_134_54
.Lcall_prolog_α_134_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_134_54: mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n128_call_prolog_α
                                                                              jmp   n119_var_ref_α
n118_call_prolog_β:     mov              r11, 47;                             jmp   n128_call_prolog_α
                        .size            n118_call_prolog_bx, .-n118_call_prolog_bx
                        .type            n119_var_ref_bx, @function
n119_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n120_var_ref_α
                        .size            n119_var_ref_bx, .-n119_var_ref_bx
                        .type            n120_var_ref_bx, @function
n120_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n121_call_prolog_α
                        .size            n120_var_ref_bx, .-n120_var_ref_bx
                        .type            n121_call_prolog_bx, @function
n121_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_call_prolog_α:     mov              r11, 50
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
.Lcall_prolog_α_139_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_139_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_139_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_139_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_139_40
.Lcall_prolog_α_139_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_139_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_139_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_139_40
.Lcall_prolog_α_139_56: cmp              al, 72;                              jne   .Lcall_prolog_α_139_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_139_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_139_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_139_40
.Lcall_prolog_α_139_41: lea              r9, [rbp + 304]
.Lcall_prolog_α_139_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_139_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_139_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_139_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_139_42
.Lcall_prolog_α_139_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_139_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_139_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_139_42
.Lcall_prolog_α_139_58: cmp              al, 72;                              jne   .Lcall_prolog_α_139_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_139_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_139_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_139_42
.Lcall_prolog_α_139_43: cmp              r8, r9;                              je    .Lcall_prolog_α_139_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_139_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_139_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_139_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_139_44
                                                                              jmp   .Lcall_prolog_α_139_45
.Lcall_prolog_α_139_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_139_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_139_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_139_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_139_53
                                                                              jmp   .Lcall_prolog_α_139_46
.Lcall_prolog_α_139_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_139_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_139_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_139_51
.Lcall_prolog_α_139_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_139_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_139_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_139_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_139_47
                                                                              jmp   .Lcall_prolog_α_139_48
.Lcall_prolog_α_139_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_139_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_139_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_139_51
.Lcall_prolog_α_139_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_139_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_139_53
                                                                              jmp   .Lcall_prolog_α_139_52
.Lcall_prolog_α_139_49: cmp              dl, 80;                              je    .Lcall_prolog_α_139_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_139_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_139_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_139_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_139_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_139_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_139_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_139_51
                                                                              jmp   .Lcall_prolog_α_139_52
.Lcall_prolog_α_139_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_139_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_139_53
.Lcall_prolog_α_139_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_139_54
.Lcall_prolog_α_139_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_139_54
.Lcall_prolog_α_139_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_139_54: mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n128_call_prolog_α
                                                                              jmp   n122_var_ref_α
n121_call_prolog_β:     mov              r11, 50;                             jmp   n128_call_prolog_α
                        .size            n121_call_prolog_bx, .-n121_call_prolog_bx
                        .type            n122_var_ref_bx, @function
n122_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n123_var_ref_α
                        .size            n122_var_ref_bx, .-n122_var_ref_bx
                        .type            n123_var_ref_bx, @function
n123_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n124_lit_integer_α
                        .size            n123_var_ref_bx, .-n123_var_ref_bx
                        .type            n124_lit_integer_bx, @function
n124_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     mov              r11, 53
                        mov              qword ptr [rbp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_144_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n125_call_proc_staged_α
.Llit_integer_α_144_0:  .quad            1
                        .size            n124_lit_integer_bx, .-n124_lit_integer_bx
                        .type            n125_call_proc_staged_bx, @function
n125_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        mov              r11, 54
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 240]
                        lea              rcx, [rbp + 256]
                        call             not_attack$2F3_dcα;                  jmp   .Lcall_proc_staged_α_146_2
.Lcall_proc_staged_α_146_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_146_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
.Lcall_proc_staged_α_146_29:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n128_call_prolog_α
                                                                              jmp   n126_move_label_α
n125_call_proc_staged_β:
                        mov              r11, 54;                             jmp   n128_call_prolog_α
.Lcall_proc_staged_β_146_0:
                        .quad            .Lcall_proc_staged_β_146_0_s
.Lcall_proc_staged_β_146_0_s:
                        .string          "not_attack/3"
                        .size            n125_call_proc_staged_bx, .-n125_call_proc_staged_bx
                        .type            n126_move_label_bx, @function
n126_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_move_label_α:      mov              r11, 55
                        lea              rax, [rip + n125_call_proc_staged_β]
                        mov              qword ptr [rbp + 64], rax;           jmp   not_attack$2F2_γ
                        .size            n126_move_label_bx, .-n126_move_label_bx
                        .type            n127_disjunction_bx, @function
n127_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_disjunction_α:     mov              r11, 56
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    not_attack$2F2_ω
                                                                              jmp   rax
n127_disjunction_β:     mov              r11, 56;                             jmp   not_attack$2F2_ω
                        .size            n127_disjunction_bx, .-n127_disjunction_bx
                        .type            n128_call_prolog_bx, @function
n128_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_call_prolog_α:     mov              r11, 57
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    not_attack$2F2_ω
                                                                              jmp   not_attack$2F2_ω
n128_call_prolog_β:     mov              r11, 57;                             jmp   not_attack$2F2_ω
                        .size            n128_call_prolog_bx, .-n128_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_β:
                                                                              jmp   n127_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        lea              rsp, [rbp + 512]
                        mov              rbp, qword ptr [rbp + 504];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, qword ptr [rbp + 504];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_dcα:
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
                        lea              rcx, [rip + .Lnot_attack$2F2_α_152_2]
                        lea              rdx, [rip + .Lnot_attack$2F2_α_152_3]
                                                                              jmp   FN__not_attack$2F2
.Lnot_attack$2F2_α_152_2:
                        pop              r12
                        pop              r12;                                 jmp   r12
.Lnot_attack$2F2_α_152_3:
                        pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__not_attack$2F3:
                        sub              rsp, 1664
                        mov              qword ptr [rsp + 1640], rcx
                        mov              qword ptr [rsp + 1648], rdx
                        mov              qword ptr [rsp + 1656], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1632
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
not_attack$2F3_α_body:
                        .type            n153_call_prolog_bx, @function
n153_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_call_prolog_α:     mov              r11, 58
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_206_102
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104];          jmp   .Lcall_prolog_α_206_101
.Lcall_prolog_α_206_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_206_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_206_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_206_101
.Lcall_prolog_α_206_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_206_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    not_attack$2F3_ω
                                                                              jmp   n154_var_ref_α
n153_call_prolog_β:     mov              r11, 58;                             jmp   not_attack$2F3_ω
                        .size            n153_call_prolog_bx, .-n153_call_prolog_bx
                        .type            n154_var_ref_bx, @function
n154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n155_lit_integer_α
                        .size            n154_var_ref_bx, .-n154_var_ref_bx
                        .type            n155_lit_integer_bx, @function
n155_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     mov              r11, 60
                        mov              qword ptr [rbp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_209_0]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n156_lit_string_α
.Llit_integer_α_209_0:  .quad            2
                        .size            n155_lit_integer_bx, .-n155_lit_integer_bx
                        .type            n156_lit_string_bx, @function
n156_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              r11, 61
                        mov              qword ptr [rbp + 1520], 2            # result
                        mov              dword ptr [rbp + 1524], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_210_0]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n157_call_prolog_α
.Llit_string_α_210_0:   .quad            .Llit_string_α_210_0_s
.Llit_string_α_210_0_s: .string          "[]"
                        .size            n156_lit_string_bx, .-n156_lit_string_bx
                        .type            n157_call_prolog_bx, @function
n157_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_call_prolog_α:     mov              r11, 62
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        lea              r8, [rbp + 1440]
.Lcall_prolog_α_211_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_211_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_211_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_211_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_211_110
.Lcall_prolog_α_211_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_211_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_211_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_211_110
.Lcall_prolog_α_211_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_211_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_211_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_211_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_211_110
.Lcall_prolog_α_211_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_211_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_211_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_211_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_211_114
                                                                              jmp   .Lcall_prolog_α_211_118
.Lcall_prolog_α_211_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_211_115
                        cmp              al, 3;                               je    .Lcall_prolog_α_211_114
                        cmp              al, 2;                               jne   .Lcall_prolog_α_211_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_211_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_211_114
                                                                              jmp   .Lcall_prolog_α_211_116
.Lcall_prolog_α_211_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_211_117
.Lcall_prolog_α_211_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_211_117
.Lcall_prolog_α_211_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_211_117:
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              al, 104;                             je    n170_var_ref_α
                                                                              jmp   n158_var_ref_α
n157_call_prolog_β:     mov              r11, 62;                             jmp   n170_var_ref_α
                        .size            n157_call_prolog_bx, .-n157_call_prolog_bx
                        .type            n158_var_ref_bx, @function
n158_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n159_lit_string_α
                        .size            n158_var_ref_bx, .-n158_var_ref_bx
                        .type            n159_lit_string_bx, @function
n159_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              r11, 64
                        mov              qword ptr [rbp + 1408], 2            # result
                        mov              dword ptr [rbp + 1412], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_214_0]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n160_call_prolog_α
.Llit_string_α_214_0:   .quad            .Llit_string_α_214_0_s
.Llit_string_α_214_0_s: .string          "[]"
                        .size            n159_lit_string_bx, .-n159_lit_string_bx
                        .type            n160_call_prolog_bx, @function
n160_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_call_prolog_α:     mov              r11, 65
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_215_2]
                                                                              jmp   .Lcall_prolog_α_215_3
.Lcall_prolog_α_215_2:  .quad            .Lcall_prolog_α_215_2_s
.Lcall_prolog_α_215_2_s:
                        .string          "[]"
.Lcall_prolog_α_215_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n161_var_ref_α
n160_call_prolog_β:     mov              r11, 65;                             jmp   n169_call_prolog_α
                        .size            n160_call_prolog_bx, .-n160_call_prolog_bx
                        .type            n161_var_ref_bx, @function
n161_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n162_var_ref_α
                        .size            n161_var_ref_bx, .-n161_var_ref_bx
                        .type            n162_var_ref_bx, @function
n162_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n163_call_prolog_α
                        .size            n162_var_ref_bx, .-n162_var_ref_bx
                        .type            n163_call_prolog_bx, @function
n163_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_call_prolog_α:     mov              r11, 68
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        lea              r8, [rbp + 1280]
.Lcall_prolog_α_220_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_220_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_220_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_220_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_220_40
.Lcall_prolog_α_220_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_220_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_220_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_220_40
.Lcall_prolog_α_220_56: cmp              al, 72;                              jne   .Lcall_prolog_α_220_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_220_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_220_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_220_40
.Lcall_prolog_α_220_41: lea              r9, [rbp + 1296]
.Lcall_prolog_α_220_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_220_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_220_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_220_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_220_42
.Lcall_prolog_α_220_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_220_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_220_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_220_42
.Lcall_prolog_α_220_58: cmp              al, 72;                              jne   .Lcall_prolog_α_220_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_220_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_220_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_220_42
.Lcall_prolog_α_220_43: cmp              r8, r9;                              je    .Lcall_prolog_α_220_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_220_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_220_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_220_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_220_44
                                                                              jmp   .Lcall_prolog_α_220_45
.Lcall_prolog_α_220_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_220_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_220_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_220_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_220_53
                                                                              jmp   .Lcall_prolog_α_220_46
.Lcall_prolog_α_220_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_220_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_220_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_220_51
.Lcall_prolog_α_220_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_220_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_220_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_220_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_220_47
                                                                              jmp   .Lcall_prolog_α_220_48
.Lcall_prolog_α_220_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_220_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_220_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_220_51
.Lcall_prolog_α_220_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_220_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_220_53
                                                                              jmp   .Lcall_prolog_α_220_52
.Lcall_prolog_α_220_49: cmp              dl, 80;                              je    .Lcall_prolog_α_220_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_220_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_220_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_220_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_220_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_220_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_220_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_220_51
                                                                              jmp   .Lcall_prolog_α_220_52
.Lcall_prolog_α_220_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_220_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_220_53
.Lcall_prolog_α_220_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_220_54
.Lcall_prolog_α_220_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_220_54
.Lcall_prolog_α_220_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_220_54: mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n164_var_ref_α
n163_call_prolog_β:     mov              r11, 68;                             jmp   n169_call_prolog_α
                        .size            n163_call_prolog_bx, .-n163_call_prolog_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n165_var_ref_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_var_ref_bx, @function
n165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n166_call_prolog_α
                        .size            n165_var_ref_bx, .-n165_var_ref_bx
                        .type            n166_call_prolog_bx, @function
n166_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_call_prolog_α:     mov              r11, 71
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1200]
                        lea              r8, [rbp + 1200]
.Lcall_prolog_α_225_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_225_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_225_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_225_40
.Lcall_prolog_α_225_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_225_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_225_40
.Lcall_prolog_α_225_56: cmp              al, 72;                              jne   .Lcall_prolog_α_225_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_225_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_225_40
.Lcall_prolog_α_225_41: lea              r9, [rbp + 1216]
.Lcall_prolog_α_225_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_225_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_225_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_225_42
.Lcall_prolog_α_225_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_225_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_225_42
.Lcall_prolog_α_225_58: cmp              al, 72;                              jne   .Lcall_prolog_α_225_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_225_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_225_42
.Lcall_prolog_α_225_43: cmp              r8, r9;                              je    .Lcall_prolog_α_225_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_225_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_225_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_225_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_225_44
                                                                              jmp   .Lcall_prolog_α_225_45
.Lcall_prolog_α_225_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_225_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_225_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_225_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_225_53
                                                                              jmp   .Lcall_prolog_α_225_46
.Lcall_prolog_α_225_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_225_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_225_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_225_51
.Lcall_prolog_α_225_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_225_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_225_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_225_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_225_47
                                                                              jmp   .Lcall_prolog_α_225_48
.Lcall_prolog_α_225_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_225_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_225_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_225_51
.Lcall_prolog_α_225_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_225_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_225_53
                                                                              jmp   .Lcall_prolog_α_225_52
.Lcall_prolog_α_225_49: cmp              dl, 80;                              je    .Lcall_prolog_α_225_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_225_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_225_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_225_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_225_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_225_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_225_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_225_51
                                                                              jmp   .Lcall_prolog_α_225_52
.Lcall_prolog_α_225_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_225_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_225_53
.Lcall_prolog_α_225_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_225_54
.Lcall_prolog_α_225_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_225_54
.Lcall_prolog_α_225_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_225_54: mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              al, 104;                             je    n169_call_prolog_α
                                                                              jmp   n167_cut_α
n166_call_prolog_β:     mov              r11, 71;                             jmp   n169_call_prolog_α
                        .size            n166_call_prolog_bx, .-n166_call_prolog_bx
                        .type            n167_cut_bx, @function
n167_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_cut_α:             mov              r11, 72;                             jmp   n168_move_label_α
                        .size            n167_cut_bx, .-n167_cut_bx
                        .type            n168_move_label_bx, @function
n168_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_move_label_α:      mov              r11, 73
                        lea              rax, [rip + n169_call_prolog_α]
                        mov              qword ptr [rbp + 80], rax;           jmp   not_attack$2F3_γ
                        .size            n168_move_label_bx, .-n168_move_label_bx
                        .type            n169_call_prolog_bx, @function
n169_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_call_prolog_α:     mov              r11, 74
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    not_attack$2F3_ω
                                                                              jmp   n170_var_ref_α
n169_call_prolog_β:     mov              r11, 74;                             jmp   not_attack$2F3_ω
                        .size            n169_call_prolog_bx, .-n169_call_prolog_bx
                        .type            n170_var_ref_bx, @function
n170_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n171_lit_integer_α
                        .size            n170_var_ref_bx, .-n170_var_ref_bx
                        .type            n171_lit_integer_bx, @function
n171_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:     mov              r11, 76
                        mov              qword ptr [rbp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_232_0]
                        mov              qword ptr [rbp + 1128], rax;         jmp   n172_lit_integer_α
.Llit_integer_α_232_0:  .quad            3
                        .size            n171_lit_integer_bx, .-n171_lit_integer_bx
                        .type            n172_lit_integer_bx, @function
n172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     mov              r11, 77
                        mov              qword ptr [rbp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_233_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n173_call_prolog_α
.Llit_integer_α_233_0:  .quad            0
                        .size            n172_lit_integer_bx, .-n172_lit_integer_bx
                        .type            n173_call_prolog_bx, @function
n173_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_call_prolog_α:     mov              r11, 78
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        lea              r8, [rbp + 1056]
.Lcall_prolog_α_234_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_234_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_234_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_234_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_234_110
.Lcall_prolog_α_234_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_234_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_234_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_234_110
.Lcall_prolog_α_234_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_234_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_234_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_234_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_234_110
.Lcall_prolog_α_234_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_234_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_234_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_234_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_234_114
                                                                              jmp   .Lcall_prolog_α_234_118
.Lcall_prolog_α_234_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lcall_prolog_α_234_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lcall_prolog_α_234_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lcall_prolog_α_234_115
                                                                              jmp   .Lcall_prolog_α_234_114
.Lcall_prolog_α_234_119:
                        cmp              al, 3;                               jne   .Lcall_prolog_α_234_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_234_114
                                                                              jmp   .Lcall_prolog_α_234_115
.Lcall_prolog_α_234_120:
                        cmp              al, 2;                               jne   .Lcall_prolog_α_234_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_234_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_234_114
                                                                              jmp   .Lcall_prolog_α_234_115
.Lcall_prolog_α_234_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_234_117
.Lcall_prolog_α_234_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_234_117
.Lcall_prolog_α_234_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_234_117:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              al, 104;                             je    n205_call_prolog_α
                                                                              jmp   n174_var_ref_α
n173_call_prolog_β:     mov              r11, 78;                             jmp   n205_call_prolog_α
                        .size            n173_call_prolog_bx, .-n173_call_prolog_bx
                        .type            n174_var_ref_bx, @function
n174_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n175_var_ref_α
                        .size            n174_var_ref_bx, .-n174_var_ref_bx
                        .type            n175_var_ref_bx, @function
n175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n176_var_ref_α
                        .size            n175_var_ref_bx, .-n175_var_ref_bx
                        .type            n176_var_ref_bx, @function
n176_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n177_call_prolog_α
                        .size            n176_var_ref_bx, .-n176_var_ref_bx
                        .type            n177_call_prolog_bx, @function
n177_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_call_prolog_α:     mov              r11, 82
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        lea              r8, [rbp + 960]
.Lcall_prolog_α_241_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_241_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_241_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_241_60
.Lcall_prolog_α_241_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_241_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_241_60
.Lcall_prolog_α_241_63: cmp              al, 72;                              jne   .Lcall_prolog_α_241_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_241_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_241_60
.Lcall_prolog_α_241_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_241_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_241_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_241_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_241_80
                                                                              jmp   .Lcall_prolog_α_241_74
.Lcall_prolog_α_241_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_241_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_241_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_241_73
                        lea              r9, [rbp + 976]
.Lcall_prolog_α_241_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_241_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_241_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_241_64
.Lcall_prolog_α_241_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_241_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_241_64
.Lcall_prolog_α_241_67: cmp              al, 72;                              jne   .Lcall_prolog_α_241_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_241_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_241_64
.Lcall_prolog_α_241_65: lea              rcx, [rbp + 992]
.Lcall_prolog_α_241_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_241_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_241_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_241_68
.Lcall_prolog_α_241_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_241_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_241_68
.Lcall_prolog_α_241_71: cmp              al, 72;                              jne   .Lcall_prolog_α_241_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_241_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_241_68
.Lcall_prolog_α_241_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_241_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_241_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_241_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_241_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_241_75
                                                                              jmp   .Lcall_prolog_α_241_72
.Lcall_prolog_α_241_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_241_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_241_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_241_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_241_76
                                                                              jmp   .Lcall_prolog_α_241_72
.Lcall_prolog_α_241_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_241_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_241_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_241_77
.Lcall_prolog_α_241_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_241_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_241_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_241_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_241_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_241_72
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
                        lea              r9, [rbp + 976]
.Lcall_prolog_α_241_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_241_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_241_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_241_81
.Lcall_prolog_α_241_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_241_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_241_81
.Lcall_prolog_α_241_84: cmp              al, 72;                              jne   .Lcall_prolog_α_241_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_241_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_241_81
.Lcall_prolog_α_241_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_241_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_241_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_241_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_241_85
                                                                              jmp   .Lcall_prolog_α_241_86
.Lcall_prolog_α_241_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_241_87
.Lcall_prolog_α_241_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_241_87: lea              rcx, [rbp + 992]
.Lcall_prolog_α_241_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_241_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_241_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_241_88
.Lcall_prolog_α_241_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_241_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_241_88
.Lcall_prolog_α_241_91: cmp              al, 72;                              jne   .Lcall_prolog_α_241_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_241_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_241_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_241_88
.Lcall_prolog_α_241_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_241_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_241_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_241_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_241_92
                                                                              jmp   .Lcall_prolog_α_241_93
.Lcall_prolog_α_241_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_241_94
.Lcall_prolog_α_241_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_241_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_241_77
.Lcall_prolog_α_241_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_241_77
.Lcall_prolog_α_241_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_241_77: mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    n205_call_prolog_α
                                                                              jmp   n178_var_ref_α
n177_call_prolog_β:     mov              r11, 82;                             jmp   n205_call_prolog_α
                        .size            n177_call_prolog_bx, .-n177_call_prolog_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n179_var_ref_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_var_ref_bx, @function
n179_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n180_call_prolog_α
                        .size            n179_var_ref_bx, .-n179_var_ref_bx
                        .type            n180_call_prolog_bx, @function
n180_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_call_prolog_α:     mov              r11, 85
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        lea              r8, [rbp + 864]
.Lcall_prolog_α_246_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_246_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_246_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_246_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_246_40
.Lcall_prolog_α_246_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_246_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_246_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_246_40
.Lcall_prolog_α_246_56: cmp              al, 72;                              jne   .Lcall_prolog_α_246_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_246_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_246_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_246_40
.Lcall_prolog_α_246_41: lea              r9, [rbp + 880]
.Lcall_prolog_α_246_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_246_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_246_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_246_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_246_42
.Lcall_prolog_α_246_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_246_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_246_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_246_42
.Lcall_prolog_α_246_58: cmp              al, 72;                              jne   .Lcall_prolog_α_246_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_246_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_246_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_246_42
.Lcall_prolog_α_246_43: cmp              r8, r9;                              je    .Lcall_prolog_α_246_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_246_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_246_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_246_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_246_44
                                                                              jmp   .Lcall_prolog_α_246_45
.Lcall_prolog_α_246_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_246_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_246_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_246_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_246_53
                                                                              jmp   .Lcall_prolog_α_246_46
.Lcall_prolog_α_246_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_246_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_246_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_246_51
.Lcall_prolog_α_246_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_246_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_246_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_246_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_246_47
                                                                              jmp   .Lcall_prolog_α_246_48
.Lcall_prolog_α_246_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_246_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_246_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_246_51
.Lcall_prolog_α_246_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_246_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_246_53
                                                                              jmp   .Lcall_prolog_α_246_52
.Lcall_prolog_α_246_49: cmp              dl, 80;                              je    .Lcall_prolog_α_246_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_246_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_246_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_246_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_246_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_246_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_246_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_246_51
                                                                              jmp   .Lcall_prolog_α_246_52
.Lcall_prolog_α_246_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_246_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_246_53
.Lcall_prolog_α_246_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_246_54
.Lcall_prolog_α_246_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_246_54
.Lcall_prolog_α_246_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_246_54: mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              al, 104;                             je    n205_call_prolog_α
                                                                              jmp   n181_var_ref_α
n180_call_prolog_β:     mov              r11, 85;                             jmp   n205_call_prolog_α
                        .size            n180_call_prolog_bx, .-n180_call_prolog_bx
                        .type            n181_var_ref_bx, @function
n181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n182_var_ref_α
                        .size            n181_var_ref_bx, .-n181_var_ref_bx
                        .type            n182_var_ref_bx, @function
n182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n183_call_prolog_α
                        .size            n182_var_ref_bx, .-n182_var_ref_bx
                        .type            n183_call_prolog_bx, @function
n183_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_call_prolog_α:     mov              r11, 88
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        lea              r8, [rbp + 784]
.Lcall_prolog_α_251_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_251_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_251_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_251_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_251_40
.Lcall_prolog_α_251_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_251_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_251_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_251_40
.Lcall_prolog_α_251_56: cmp              al, 72;                              jne   .Lcall_prolog_α_251_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_251_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_251_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_251_40
.Lcall_prolog_α_251_41: lea              r9, [rbp + 800]
.Lcall_prolog_α_251_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_251_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_251_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_251_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_251_42
.Lcall_prolog_α_251_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_251_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_251_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_251_42
.Lcall_prolog_α_251_58: cmp              al, 72;                              jne   .Lcall_prolog_α_251_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_251_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_251_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_251_42
.Lcall_prolog_α_251_43: cmp              r8, r9;                              je    .Lcall_prolog_α_251_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_251_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_251_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_251_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_251_44
                                                                              jmp   .Lcall_prolog_α_251_45
.Lcall_prolog_α_251_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_251_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_251_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_251_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_251_53
                                                                              jmp   .Lcall_prolog_α_251_46
.Lcall_prolog_α_251_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_251_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_251_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_251_51
.Lcall_prolog_α_251_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_251_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_251_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_251_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_251_47
                                                                              jmp   .Lcall_prolog_α_251_48
.Lcall_prolog_α_251_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_251_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_251_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_251_51
.Lcall_prolog_α_251_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_251_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_251_53
                                                                              jmp   .Lcall_prolog_α_251_52
.Lcall_prolog_α_251_49: cmp              dl, 80;                              je    .Lcall_prolog_α_251_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_251_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_251_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_251_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_251_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_251_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_251_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_251_51
                                                                              jmp   .Lcall_prolog_α_251_52
.Lcall_prolog_α_251_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_251_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_251_53
.Lcall_prolog_α_251_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_251_54
.Lcall_prolog_α_251_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_251_54
.Lcall_prolog_α_251_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_251_54: mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    n205_call_prolog_α
                                                                              jmp   n184_var_α
n183_call_prolog_β:     mov              r11, 88;                             jmp   n205_call_prolog_α
                        .size            n183_call_prolog_bx, .-n183_call_prolog_bx
                        .type            n184_var_bx, @function
n184_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             mov              r11, 89
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 664], rax;          jmp   n185_var_α
                        .size            n184_var_bx, .-n184_var_bx
                        .type            n185_var_bx, @function
n185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             mov              r11, 90
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 744], rax;          jmp   n186_var_α
                        .size            n185_var_bx, .-n185_var_bx
                        .type            n186_var_bx, @function
n186_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             mov              r11, 91
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 760], rax;          jmp   n187_call_prolog_α
                        .size            n186_var_bx, .-n186_var_bx
                        .type            n187_call_prolog_bx, @function
n187_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_call_prolog_α:     mov              r11, 92
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n205_call_prolog_α
                                                                              jmp   n188_call_prolog_α
n187_call_prolog_β:     mov              r11, 92;                             jmp   n205_call_prolog_α
                        .size            n187_call_prolog_bx, .-n187_call_prolog_bx
                        .type            n188_call_prolog_bx, @function
n188_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_call_prolog_α:     mov              r11, 93
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n205_call_prolog_α
                                                                              jmp   n189_var_α
n188_call_prolog_β:     mov              r11, 93;                             jmp   n205_call_prolog_α
                        .size            n188_call_prolog_bx, .-n188_call_prolog_bx
                        .type            n189_var_bx, @function
n189_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             mov              r11, 94
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 504], rax;          jmp   n190_var_α
                        .size            n189_var_bx, .-n189_var_bx
                        .type            n190_var_bx, @function
n190_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             mov              r11, 95
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 584], rax;          jmp   n191_var_α
                        .size            n190_var_bx, .-n190_var_bx
                        .type            n191_var_bx, @function
n191_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             mov              r11, 96
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 600], rax;          jmp   n192_call_prolog_α
                        .size            n191_var_bx, .-n191_var_bx
                        .type            n192_call_prolog_bx, @function
n192_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_call_prolog_α:     mov              r11, 97
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n205_call_prolog_α
                                                                              jmp   n193_call_prolog_α
n192_call_prolog_β:     mov              r11, 97;                             jmp   n205_call_prolog_α
                        .size            n192_call_prolog_bx, .-n192_call_prolog_bx
                        .type            n193_call_prolog_bx, @function
n193_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_call_prolog_α:     mov              r11, 98
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    n205_call_prolog_α
                                                                              jmp   n194_var_ref_α
n193_call_prolog_β:     mov              r11, 98;                             jmp   n205_call_prolog_α
                        .size            n193_call_prolog_bx, .-n193_call_prolog_bx
                        .type            n194_var_ref_bx, @function
n194_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n195_var_α
                        .size            n194_var_ref_bx, .-n194_var_ref_bx
                        .type            n195_var_bx, @function
n195_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             mov              r11, 100
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 424], rax;          jmp   n196_lit_integer_α
                        .size            n195_var_bx, .-n195_var_bx
                        .type            n196_lit_integer_bx, @function
n196_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rbp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_272_0]
                        mov              qword ptr [rbp + 440], rax;          jmp   n197_call_prolog_α
.Llit_integer_α_272_0:  .quad            1
                        .size            n196_lit_integer_bx, .-n196_lit_integer_bx
                        .type            n197_call_prolog_bx, @function
n197_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_call_prolog_α:     mov              r11, 102
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n205_call_prolog_α
                                                                              jmp   n198_call_prolog_α
n197_call_prolog_β:     mov              r11, 102;                            jmp   n205_call_prolog_α
                        .size            n197_call_prolog_bx, .-n197_call_prolog_bx
                        .type            n198_call_prolog_bx, @function
n198_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_call_prolog_α:     mov              r11, 103
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n205_call_prolog_α
                                                                              jmp   n199_var_ref_α
n198_call_prolog_β:     mov              r11, 103;                            jmp   n205_call_prolog_α
                        .size            n198_call_prolog_bx, .-n198_call_prolog_bx
                        .type            n199_var_ref_bx, @function
n199_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n200_var_ref_α
                        .size            n199_var_ref_bx, .-n199_var_ref_bx
                        .type            n200_var_ref_bx, @function
n200_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n201_var_ref_α
                        .size            n200_var_ref_bx, .-n200_var_ref_bx
                        .type            n201_var_ref_bx, @function
n201_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n202_call_proc_staged_α
                        .size            n201_var_ref_bx, .-n201_var_ref_bx
                        .type            n202_call_proc_staged_bx, @function
n202_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_call_proc_staged_α:
                        mov              r11, 107
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 256]
                        lea              rcx, [rbp + 272]
                        call             not_attack$2F3_dcα;                  jmp   .Lcall_proc_staged_α_282_2
.Lcall_proc_staged_α_282_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_282_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
.Lcall_proc_staged_α_282_29:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n205_call_prolog_α
                                                                              jmp   n203_move_label_α
n202_call_proc_staged_β:
                        mov              r11, 107;                            jmp   n205_call_prolog_α
.Lcall_proc_staged_β_282_0:
                        .quad            .Lcall_proc_staged_β_282_0_s
.Lcall_proc_staged_β_282_0_s:
                        .string          "not_attack/3"
                        .size            n202_call_proc_staged_bx, .-n202_call_proc_staged_bx
                        .type            n203_move_label_bx, @function
n203_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_move_label_α:      mov              r11, 108
                        lea              rax, [rip + n202_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax;           jmp   not_attack$2F3_γ
                        .size            n203_move_label_bx, .-n203_move_label_bx
                        .type            n204_disjunction_bx, @function
n204_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_disjunction_α:     mov              r11, 109
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    not_attack$2F3_ω
                                                                              jmp   rax
n204_disjunction_β:     mov              r11, 109;                            jmp   not_attack$2F3_ω
                        .size            n204_disjunction_bx, .-n204_disjunction_bx
                        .type            n205_call_prolog_bx, @function
n205_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_call_prolog_α:     mov              r11, 110
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    not_attack$2F3_ω
                                                                              jmp   not_attack$2F3_ω
n205_call_prolog_β:     mov              r11, 110;                            jmp   not_attack$2F3_ω
                        .size            n205_call_prolog_bx, .-n205_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_β:
                                                                              jmp   n204_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1640]
                        lea              rsp, [rbp + 1664]
                        mov              rbp, qword ptr [rbp + 1656];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1648]
                        lea              rsp, [rbp + 1664]
                        mov              rbp, qword ptr [rbp + 1656];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_dcα:
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
                        lea              rcx, [rip + .Lnot_attack$2F3_α_288_2]
                        lea              rdx, [rip + .Lnot_attack$2F3_α_288_3]
                                                                              jmp   FN__not_attack$2F3
.Lnot_attack$2F3_α_288_2:
                        pop              r12
                        pop              r12;                                 jmp   r12
.Lnot_attack$2F3_α_288_3:
                        pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__queens_2$2F3:
                        sub              rsp, 1680
                        mov              qword ptr [rsp + 1656], rcx
                        mov              qword ptr [rsp + 1664], rdx
                        mov              qword ptr [rsp + 1672], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1520
                        mov              edx, 1648
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
queens_2$2F3_α_body:
                        lea              rax, [rip + n303_suspend_β]
                        mov              qword ptr [rbp + 1520], rax
                        .type            n289_call_prolog_bx, @function
n289_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_call_prolog_α:     mov              r11, 111
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_338_102
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72];           jmp   .Lcall_prolog_α_338_101
.Lcall_prolog_α_338_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_338_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_338_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_338_101
.Lcall_prolog_α_338_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_338_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    queens_2$2F3_ω
                                                                              jmp   n290_var_ref_α
n289_call_prolog_β:     mov              r11, 111;                            jmp   queens_2$2F3_ω
                        .size            n289_call_prolog_bx, .-n289_call_prolog_bx
                        .type            n290_var_ref_bx, @function
n290_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n291_lit_integer_α
                        .size            n290_var_ref_bx, .-n290_var_ref_bx
                        .type            n291_lit_integer_bx, @function
n291_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_integer_α:     mov              r11, 113
                        mov              qword ptr [rbp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_341_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n292_lit_string_α
.Llit_integer_α_341_0:  .quad            2
                        .size            n291_lit_integer_bx, .-n291_lit_integer_bx
                        .type            n292_lit_string_bx, @function
n292_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rbp + 1504], 2            # result
                        mov              dword ptr [rbp + 1508], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_342_0]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n293_call_prolog_α
.Llit_string_α_342_0:   .quad            .Llit_string_α_342_0_s
.Llit_string_α_342_0_s: .string          "[]"
                        .size            n292_lit_string_bx, .-n292_lit_string_bx
                        .type            n293_call_prolog_bx, @function
n293_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_call_prolog_α:     mov              r11, 115
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1424]
                        lea              r8, [rbp + 1424]
.Lcall_prolog_α_343_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_343_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_343_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_343_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_343_110
.Lcall_prolog_α_343_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_343_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_343_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_343_110
.Lcall_prolog_α_343_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_343_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_343_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_343_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_343_110
.Lcall_prolog_α_343_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_343_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_343_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_343_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_343_114
                                                                              jmp   .Lcall_prolog_α_343_118
.Lcall_prolog_α_343_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_343_115
                        cmp              al, 3;                               je    .Lcall_prolog_α_343_114
                        cmp              al, 2;                               jne   .Lcall_prolog_α_343_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_343_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_343_114
                                                                              jmp   .Lcall_prolog_α_343_116
.Lcall_prolog_α_343_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_343_117
.Lcall_prolog_α_343_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_343_117
.Lcall_prolog_α_343_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_343_117:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              al, 104;                             je    n305_var_ref_α
                                                                              jmp   n294_var_ref_α
n293_call_prolog_β:     mov              r11, 115;                            jmp   n305_var_ref_α
                        .size            n293_call_prolog_bx, .-n293_call_prolog_bx
                        .type            n294_var_ref_bx, @function
n294_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n295_lit_string_α
                        .size            n294_var_ref_bx, .-n294_var_ref_bx
                        .type            n295_lit_string_bx, @function
n295_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:      mov              r11, 117
                        mov              qword ptr [rbp + 1392], 2            # result
                        mov              dword ptr [rbp + 1396], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_346_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n296_call_prolog_α
.Llit_string_α_346_0:   .quad            .Llit_string_α_346_0_s
.Llit_string_α_346_0_s: .string          "[]"
                        .size            n295_lit_string_bx, .-n295_lit_string_bx
                        .type            n296_call_prolog_bx, @function
n296_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_call_prolog_α:     mov              r11, 118
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_347_2]
                                                                              jmp   .Lcall_prolog_α_347_3
.Lcall_prolog_α_347_2:  .quad            .Lcall_prolog_α_347_2_s
.Lcall_prolog_α_347_2_s:
                        .string          "[]"
.Lcall_prolog_α_347_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              al, 104;                             je    n304_call_prolog_α
                                                                              jmp   n297_var_ref_α
n296_call_prolog_β:     mov              r11, 118;                            jmp   n304_call_prolog_α
                        .size            n296_call_prolog_bx, .-n296_call_prolog_bx
                        .type            n297_var_ref_bx, @function
n297_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n298_var_ref_α
                        .size            n297_var_ref_bx, .-n297_var_ref_bx
                        .type            n298_var_ref_bx, @function
n298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n299_call_prolog_α
                        .size            n298_var_ref_bx, .-n298_var_ref_bx
                        .type            n299_call_prolog_bx, @function
n299_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_prolog_α:     mov              r11, 121
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        lea              r8, [rbp + 1264]
.Lcall_prolog_α_352_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_352_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_352_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_352_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_352_40
.Lcall_prolog_α_352_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_352_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_352_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_352_40
.Lcall_prolog_α_352_56: cmp              al, 72;                              jne   .Lcall_prolog_α_352_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_352_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_352_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_352_40
.Lcall_prolog_α_352_41: lea              r9, [rbp + 1280]
.Lcall_prolog_α_352_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_352_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_352_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_352_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_352_42
.Lcall_prolog_α_352_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_352_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_352_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_352_42
.Lcall_prolog_α_352_58: cmp              al, 72;                              jne   .Lcall_prolog_α_352_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_352_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_352_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_352_42
.Lcall_prolog_α_352_43: cmp              r8, r9;                              je    .Lcall_prolog_α_352_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_352_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_352_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_352_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_352_44
                                                                              jmp   .Lcall_prolog_α_352_45
.Lcall_prolog_α_352_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_352_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_352_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_352_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_352_53
                                                                              jmp   .Lcall_prolog_α_352_46
.Lcall_prolog_α_352_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_352_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_352_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_352_51
.Lcall_prolog_α_352_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_352_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_352_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_352_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_352_47
                                                                              jmp   .Lcall_prolog_α_352_48
.Lcall_prolog_α_352_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_352_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_352_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_352_51
.Lcall_prolog_α_352_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_352_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_352_53
                                                                              jmp   .Lcall_prolog_α_352_52
.Lcall_prolog_α_352_49: cmp              dl, 80;                              je    .Lcall_prolog_α_352_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_352_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_352_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_352_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_352_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_352_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_352_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_352_51
                                                                              jmp   .Lcall_prolog_α_352_52
.Lcall_prolog_α_352_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_352_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_352_53
.Lcall_prolog_α_352_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_352_54
.Lcall_prolog_α_352_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_352_54
.Lcall_prolog_α_352_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_352_54: mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              al, 104;                             je    n304_call_prolog_α
                                                                              jmp   n300_var_ref_α
n299_call_prolog_β:     mov              r11, 121;                            jmp   n304_call_prolog_α
                        .size            n299_call_prolog_bx, .-n299_call_prolog_bx
                        .type            n300_var_ref_bx, @function
n300_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n301_var_ref_α
                        .size            n300_var_ref_bx, .-n300_var_ref_bx
                        .type            n301_var_ref_bx, @function
n301_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n302_call_prolog_α
                        .size            n301_var_ref_bx, .-n301_var_ref_bx
                        .type            n302_call_prolog_bx, @function
n302_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_prolog_α:     mov              r11, 124
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        lea              r8, [rbp + 1184]
.Lcall_prolog_α_357_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_357_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_357_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_357_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_357_40
.Lcall_prolog_α_357_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_357_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_357_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_357_40
.Lcall_prolog_α_357_56: cmp              al, 72;                              jne   .Lcall_prolog_α_357_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_357_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_357_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_357_40
.Lcall_prolog_α_357_41: lea              r9, [rbp + 1200]
.Lcall_prolog_α_357_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_357_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_357_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_357_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_357_42
.Lcall_prolog_α_357_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_357_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_357_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_357_42
.Lcall_prolog_α_357_58: cmp              al, 72;                              jne   .Lcall_prolog_α_357_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_357_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_357_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_357_42
.Lcall_prolog_α_357_43: cmp              r8, r9;                              je    .Lcall_prolog_α_357_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_357_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_357_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_357_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_357_44
                                                                              jmp   .Lcall_prolog_α_357_45
.Lcall_prolog_α_357_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_357_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_357_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_357_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_357_53
                                                                              jmp   .Lcall_prolog_α_357_46
.Lcall_prolog_α_357_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_357_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_357_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_357_51
.Lcall_prolog_α_357_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_357_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_357_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_357_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_357_47
                                                                              jmp   .Lcall_prolog_α_357_48
.Lcall_prolog_α_357_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_357_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_357_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_357_51
.Lcall_prolog_α_357_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_357_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_357_53
                                                                              jmp   .Lcall_prolog_α_357_52
.Lcall_prolog_α_357_49: cmp              dl, 80;                              je    .Lcall_prolog_α_357_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_357_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_357_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_357_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_357_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_357_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_357_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_357_51
                                                                              jmp   .Lcall_prolog_α_357_52
.Lcall_prolog_α_357_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_357_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_357_53
.Lcall_prolog_α_357_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_357_54
.Lcall_prolog_α_357_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_357_54
.Lcall_prolog_α_357_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_357_54: mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    n304_call_prolog_α
                                                                              jmp   n303_suspend_α
n302_call_prolog_β:     mov              r11, 124;                            jmp   n304_call_prolog_α
                        .size            n302_call_prolog_bx, .-n302_call_prolog_bx
                        .type            n303_suspend_bx, @function
n303_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_suspend_α:         mov              r11, 125
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_359_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1520];         jmp   rax
.Lsuspend_α_359_61:     mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rip + n303_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n303_suspend_β]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax;            jmp   queens_2$2F3_γ
n303_suspend_β:         mov              r11, 125;                            jmp   n304_call_prolog_α
                        .size            n303_suspend_bx, .-n303_suspend_bx
                        .type            n304_call_prolog_bx, @function
n304_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_call_prolog_α:     mov              r11, 126
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              al, 104;                             je    queens_2$2F3_ω
                                                                              jmp   n305_var_ref_α
n304_call_prolog_β:     mov              r11, 126;                            jmp   queens_2$2F3_ω
                        .size            n304_call_prolog_bx, .-n304_call_prolog_bx
                        .type            n305_var_ref_bx, @function
n305_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:         mov              r11, 127
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n306_lit_integer_α
                        .size            n305_var_ref_bx, .-n305_var_ref_bx
                        .type            n306_lit_integer_bx, @function
n306_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_integer_α:     mov              r11, 128
                        mov              qword ptr [rbp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_363_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n307_lit_integer_α
.Llit_integer_α_363_0:  .quad            3
                        .size            n306_lit_integer_bx, .-n306_lit_integer_bx
                        .type            n307_lit_integer_bx, @function
n307_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:     mov              r11, 129
                        mov              qword ptr [rbp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_364_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n308_call_prolog_α
.Llit_integer_α_364_0:  .quad            0
                        .size            n307_lit_integer_bx, .-n307_lit_integer_bx
                        .type            n308_call_prolog_bx, @function
n308_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_call_prolog_α:     mov              r11, 130
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        lea              r8, [rbp + 1024]
.Lcall_prolog_α_365_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_365_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_365_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_365_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_365_110
.Lcall_prolog_α_365_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_365_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_365_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_365_110
.Lcall_prolog_α_365_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_365_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_365_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_365_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_365_110
.Lcall_prolog_α_365_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_365_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_365_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_365_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_365_114
                                                                              jmp   .Lcall_prolog_α_365_118
.Lcall_prolog_α_365_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lcall_prolog_α_365_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lcall_prolog_α_365_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lcall_prolog_α_365_115
                                                                              jmp   .Lcall_prolog_α_365_114
.Lcall_prolog_α_365_119:
                        cmp              al, 3;                               jne   .Lcall_prolog_α_365_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_365_114
                                                                              jmp   .Lcall_prolog_α_365_115
.Lcall_prolog_α_365_120:
                        cmp              al, 2;                               jne   .Lcall_prolog_α_365_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_365_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_365_114
                                                                              jmp   .Lcall_prolog_α_365_115
.Lcall_prolog_α_365_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_365_117
.Lcall_prolog_α_365_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_365_117
.Lcall_prolog_α_365_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_365_117:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n309_var_ref_α
n308_call_prolog_β:     mov              r11, 130;                            jmp   n337_call_prolog_α
                        .size            n308_call_prolog_bx, .-n308_call_prolog_bx
                        .type            n309_var_ref_bx, @function
n309_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n310_var_ref_α
                        .size            n309_var_ref_bx, .-n309_var_ref_bx
                        .type            n310_var_ref_bx, @function
n310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n311_var_ref_α
                        .size            n310_var_ref_bx, .-n310_var_ref_bx
                        .type            n311_var_ref_bx, @function
n311_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n312_call_prolog_α
                        .size            n311_var_ref_bx, .-n311_var_ref_bx
                        .type            n312_call_prolog_bx, @function
n312_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_prolog_α:     mov              r11, 134
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lcall_prolog_α_372_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_372_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_372_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_372_60
.Lcall_prolog_α_372_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_372_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_372_60
.Lcall_prolog_α_372_63: cmp              al, 72;                              jne   .Lcall_prolog_α_372_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_372_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_372_60
.Lcall_prolog_α_372_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_372_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_372_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_372_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_372_80
                                                                              jmp   .Lcall_prolog_α_372_74
.Lcall_prolog_α_372_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_372_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_372_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_372_73
                        lea              r9, [rbp + 944]
.Lcall_prolog_α_372_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_372_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_372_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_372_64
.Lcall_prolog_α_372_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_372_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_372_64
.Lcall_prolog_α_372_67: cmp              al, 72;                              jne   .Lcall_prolog_α_372_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_372_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_372_64
.Lcall_prolog_α_372_65: lea              rcx, [rbp + 960]
.Lcall_prolog_α_372_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_372_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_372_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_372_68
.Lcall_prolog_α_372_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_372_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_372_68
.Lcall_prolog_α_372_71: cmp              al, 72;                              jne   .Lcall_prolog_α_372_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_372_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_372_68
.Lcall_prolog_α_372_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_372_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_372_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_372_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_372_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_372_75
                                                                              jmp   .Lcall_prolog_α_372_72
.Lcall_prolog_α_372_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_372_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_372_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_372_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_372_76
                                                                              jmp   .Lcall_prolog_α_372_72
.Lcall_prolog_α_372_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_372_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_372_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_372_77
.Lcall_prolog_α_372_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_372_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_372_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_372_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_372_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_372_72
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
                        lea              r9, [rbp + 944]
.Lcall_prolog_α_372_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_372_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_372_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_372_81
.Lcall_prolog_α_372_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_372_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_372_81
.Lcall_prolog_α_372_84: cmp              al, 72;                              jne   .Lcall_prolog_α_372_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_372_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_372_81
.Lcall_prolog_α_372_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_372_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_372_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_372_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_372_85
                                                                              jmp   .Lcall_prolog_α_372_86
.Lcall_prolog_α_372_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_372_87
.Lcall_prolog_α_372_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_372_87: lea              rcx, [rbp + 960]
.Lcall_prolog_α_372_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_372_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_372_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_372_88
.Lcall_prolog_α_372_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_372_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_372_88
.Lcall_prolog_α_372_91: cmp              al, 72;                              jne   .Lcall_prolog_α_372_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_372_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_372_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_372_88
.Lcall_prolog_α_372_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_372_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_372_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_372_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_372_92
                                                                              jmp   .Lcall_prolog_α_372_93
.Lcall_prolog_α_372_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_372_94
.Lcall_prolog_α_372_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_372_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_372_77
.Lcall_prolog_α_372_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_372_77
.Lcall_prolog_α_372_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_372_77: mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n313_var_ref_α
n312_call_prolog_β:     mov              r11, 134;                            jmp   n337_call_prolog_α
                        .size            n312_call_prolog_bx, .-n312_call_prolog_bx
                        .type            n313_var_ref_bx, @function
n313_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              r11, 135
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n314_var_ref_α
                        .size            n313_var_ref_bx, .-n313_var_ref_bx
                        .type            n314_var_ref_bx, @function
n314_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n315_call_prolog_α
                        .size            n314_var_ref_bx, .-n314_var_ref_bx
                        .type            n315_call_prolog_bx, @function
n315_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_call_prolog_α:     mov              r11, 137
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lcall_prolog_α_377_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_377_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_377_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_377_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_377_40
.Lcall_prolog_α_377_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_377_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_377_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_377_40
.Lcall_prolog_α_377_56: cmp              al, 72;                              jne   .Lcall_prolog_α_377_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_377_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_377_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_377_40
.Lcall_prolog_α_377_41: lea              r9, [rbp + 848]
.Lcall_prolog_α_377_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_377_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_377_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_377_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_377_42
.Lcall_prolog_α_377_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_377_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_377_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_377_42
.Lcall_prolog_α_377_58: cmp              al, 72;                              jne   .Lcall_prolog_α_377_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_377_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_377_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_377_42
.Lcall_prolog_α_377_43: cmp              r8, r9;                              je    .Lcall_prolog_α_377_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_377_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_377_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_377_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_377_44
                                                                              jmp   .Lcall_prolog_α_377_45
.Lcall_prolog_α_377_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_377_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_377_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_377_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_377_53
                                                                              jmp   .Lcall_prolog_α_377_46
.Lcall_prolog_α_377_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_377_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_377_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_377_51
.Lcall_prolog_α_377_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_377_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_377_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_377_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_377_47
                                                                              jmp   .Lcall_prolog_α_377_48
.Lcall_prolog_α_377_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_377_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_377_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_377_51
.Lcall_prolog_α_377_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_377_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_377_53
                                                                              jmp   .Lcall_prolog_α_377_52
.Lcall_prolog_α_377_49: cmp              dl, 80;                              je    .Lcall_prolog_α_377_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_377_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_377_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_377_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_377_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_377_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_377_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_377_51
                                                                              jmp   .Lcall_prolog_α_377_52
.Lcall_prolog_α_377_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_377_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_377_53
.Lcall_prolog_α_377_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_377_54
.Lcall_prolog_α_377_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_377_54
.Lcall_prolog_α_377_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_377_54: mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n316_var_ref_α
n315_call_prolog_β:     mov              r11, 137;                            jmp   n337_call_prolog_α
                        .size            n315_call_prolog_bx, .-n315_call_prolog_bx
                        .type            n316_var_ref_bx, @function
n316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n317_var_ref_α
                        .size            n316_var_ref_bx, .-n316_var_ref_bx
                        .type            n317_var_ref_bx, @function
n317_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n318_call_prolog_α
                        .size            n317_var_ref_bx, .-n317_var_ref_bx
                        .type            n318_call_prolog_bx, @function
n318_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_call_prolog_α:     mov              r11, 140
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        lea              r8, [rbp + 752]
.Lcall_prolog_α_382_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_382_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_382_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_382_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_382_40
.Lcall_prolog_α_382_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_382_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_382_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_382_40
.Lcall_prolog_α_382_56: cmp              al, 72;                              jne   .Lcall_prolog_α_382_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_382_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_382_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_382_40
.Lcall_prolog_α_382_41: lea              r9, [rbp + 768]
.Lcall_prolog_α_382_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_382_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_382_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_382_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_382_42
.Lcall_prolog_α_382_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_382_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_382_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_382_42
.Lcall_prolog_α_382_58: cmp              al, 72;                              jne   .Lcall_prolog_α_382_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_382_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_382_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_382_42
.Lcall_prolog_α_382_43: cmp              r8, r9;                              je    .Lcall_prolog_α_382_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_382_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_382_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_382_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_382_44
                                                                              jmp   .Lcall_prolog_α_382_45
.Lcall_prolog_α_382_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_382_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_382_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_382_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_382_53
                                                                              jmp   .Lcall_prolog_α_382_46
.Lcall_prolog_α_382_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_382_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_382_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_382_51
.Lcall_prolog_α_382_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_382_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_382_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_382_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_382_47
                                                                              jmp   .Lcall_prolog_α_382_48
.Lcall_prolog_α_382_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_382_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_382_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_382_51
.Lcall_prolog_α_382_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_382_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_382_53
                                                                              jmp   .Lcall_prolog_α_382_52
.Lcall_prolog_α_382_49: cmp              dl, 80;                              je    .Lcall_prolog_α_382_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_382_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_382_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_382_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_382_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_382_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_382_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_382_51
                                                                              jmp   .Lcall_prolog_α_382_52
.Lcall_prolog_α_382_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_382_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_382_53
.Lcall_prolog_α_382_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_382_54
.Lcall_prolog_α_382_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_382_54
.Lcall_prolog_α_382_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_382_54: mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n319_var_ref_α
n318_call_prolog_β:     mov              r11, 140;                            jmp   n337_call_prolog_α
                        .size            n318_call_prolog_bx, .-n318_call_prolog_bx
                        .type            n319_var_ref_bx, @function
n319_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n320_lit_string_α
                        .size            n319_var_ref_bx, .-n319_var_ref_bx
                        .type            n320_lit_string_bx, @function
n320_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rbp + 704], 2             # result
                        mov              dword ptr [rbp + 708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_385_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n321_var_ref_α
.Llit_string_α_385_0:   .quad            .Llit_string_α_385_0_s
.Llit_string_α_385_0_s: .string          "."
                        .size            n320_lit_string_bx, .-n320_lit_string_bx
                        .type            n321_var_ref_bx, @function
n321_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n322_var_ref_α
                        .size            n321_var_ref_bx, .-n321_var_ref_bx
                        .type            n322_var_ref_bx, @function
n322_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n323_call_prolog_α
                        .size            n322_var_ref_bx, .-n322_var_ref_bx
                        .type            n323_call_prolog_bx, @function
n323_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_call_prolog_α:     mov              r11, 145
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n324_var_ref_α
n323_call_prolog_β:     mov              r11, 145;                            jmp   n337_call_prolog_α
                        .size            n323_call_prolog_bx, .-n323_call_prolog_bx
                        .type            n324_var_ref_bx, @function
n324_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n325_call_proc_staged_α
                        .size            n324_var_ref_bx, .-n324_var_ref_bx
                        .type            n325_call_proc_staged_bx, @function
n325_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_call_proc_staged_α:
                        mov              r11, 147
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_394_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_394_201
.Lcall_proc_staged_α_394_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_394_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_394_202
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_394_203
.Lcall_proc_staged_α_394_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_394_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_394_204
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_394_205
.Lcall_proc_staged_α_394_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_394_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_394_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_394_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_394_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_394_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_394_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_394_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 552], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_394_5
                        mov              qword ptr [rbp + 544], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_394_2
.Lcall_proc_staged_α_394_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_394_2
.Lcall_proc_staged_α_394_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_394_6
                        mov              qword ptr [rbp + 544], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_394_2
.Lcall_proc_staged_α_394_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_394_2
.Lcall_proc_staged_α_394_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_394_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n337_call_prolog_α
.Lcall_proc_staged_α_394_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_394_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
.Lcall_proc_staged_α_394_29:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n326_var_ref_α
n325_call_proc_staged_β:
                        mov              r11, 147
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 544], 0
                        lea              rdi, [rbp + 560]
                        lea              rsi, [rbp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n337_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              ecx, 64
                        mov              r8d, 896
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n337_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_394_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_394_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_394_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_394_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_394_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n326_var_ref_α
.Lcall_proc_staged_α_394_0:
                        .quad            .Lcall_proc_staged_α_394_0_s
.Lcall_proc_staged_α_394_0_s:
                        .string          "sel/3"
                        .size            n325_call_proc_staged_bx, .-n325_call_proc_staged_bx
                        .type            n326_var_ref_bx, @function
n326_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n327_var_ref_α
                        .size            n326_var_ref_bx, .-n326_var_ref_bx
                        .type            n327_var_ref_bx, @function
n327_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n328_call_proc_staged_α
                        .size            n327_var_ref_bx, .-n327_var_ref_bx
                        .type            n328_call_proc_staged_bx, @function
n328_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_call_proc_staged_α:
                        mov              r11, 150
                        lea              rsi, [rbp + 448]
                        lea              rdx, [rbp + 464]
                        call             not_attack$2F2_dcα;                  jmp   .Lcall_proc_staged_α_400_2
.Lcall_proc_staged_α_400_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_400_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
.Lcall_proc_staged_α_400_29:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n325_call_proc_staged_β
                                                                              jmp   n329_var_ref_α
n328_call_proc_staged_β:
                        mov              r11, 150;                            jmp   n325_call_proc_staged_β
.Lcall_proc_staged_β_400_0:
                        .quad            .Lcall_proc_staged_β_400_0_s
.Lcall_proc_staged_β_400_0_s:
                        .string          "not_attack/2"
                        .size            n328_call_proc_staged_bx, .-n328_call_proc_staged_bx
                        .type            n329_var_ref_bx, @function
n329_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n330_lit_string_α
                        .size            n329_var_ref_bx, .-n329_var_ref_bx
                        .type            n330_lit_string_bx, @function
n330_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rbp + 352], 2             # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_403_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n331_var_ref_α
.Llit_string_α_403_0:   .quad            .Llit_string_α_403_0_s
.Llit_string_α_403_0_s: .string          "."
                        .size            n330_lit_string_bx, .-n330_lit_string_bx
                        .type            n331_var_ref_bx, @function
n331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n332_var_ref_α
                        .size            n331_var_ref_bx, .-n331_var_ref_bx
                        .type            n332_var_ref_bx, @function
n332_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:         mov              r11, 154
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n333_call_prolog_α
                        .size            n332_var_ref_bx, .-n332_var_ref_bx
                        .type            n333_call_prolog_bx, @function
n333_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_call_prolog_α:     mov              r11, 155
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n337_call_prolog_α
                                                                              jmp   n334_var_ref_α
n333_call_prolog_β:     mov              r11, 155;                            jmp   n337_call_prolog_α
                        .size            n333_call_prolog_bx, .-n333_call_prolog_bx
                        .type            n334_var_ref_bx, @function
n334_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n335_call_proc_staged_α
                        .size            n334_var_ref_bx, .-n334_var_ref_bx
                        .type            n335_call_proc_staged_bx, @function
n335_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_call_proc_staged_α:
                        mov              r11, 157
                        mov              qword ptr [rbp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_412_200
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_412_201
.Lcall_proc_staged_α_412_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_412_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_412_202
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_412_203
.Lcall_proc_staged_α_412_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_412_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_412_204
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_412_205
.Lcall_proc_staged_α_412_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_412_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_412_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_412_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_412_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_412_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_412_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_412_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 200], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_412_5
                        mov              qword ptr [rbp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_412_2
.Lcall_proc_staged_α_412_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_412_2
.Lcall_proc_staged_α_412_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_412_6
                        mov              qword ptr [rbp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_412_2
.Lcall_proc_staged_α_412_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_412_2
.Lcall_proc_staged_α_412_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_412_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n328_call_proc_staged_β
.Lcall_proc_staged_α_412_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_412_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
.Lcall_proc_staged_α_412_29:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n328_call_proc_staged_β
                                                                              jmp   n336_suspend_α
n335_call_proc_staged_β:
                        mov              r11, 157
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 192], 0
                        lea              rdi, [rbp + 208]
                        lea              rsi, [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n328_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              ecx, 64
                        mov              r8d, 1520
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n328_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_412_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_412_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_412_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_412_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_412_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n328_call_proc_staged_β
                                                                              jmp   n336_suspend_α
.Lcall_proc_staged_α_412_0:
                        .quad            .Lcall_proc_staged_α_412_0_s
.Lcall_proc_staged_α_412_0_s:
                        .string          "queens_2/3"
                        .size            n335_call_proc_staged_bx, .-n335_call_proc_staged_bx
                        .type            n336_suspend_bx, @function
n336_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_suspend_α:         mov              r11, 158
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_414_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1520];         jmp   rax
.Lsuspend_α_414_61:     mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rip + n336_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n336_suspend_β]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax;            jmp   queens_2$2F3_γ
n336_suspend_β:         mov              r11, 158;                            jmp   n335_call_proc_staged_β
                        .size            n336_suspend_bx, .-n336_suspend_bx
                        .type            n337_call_prolog_bx, @function
n337_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_call_prolog_α:     mov              r11, 159
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    queens_2$2F3_ω
                                                                              jmp   queens_2$2F3_ω
n337_call_prolog_β:     mov              r11, 159;                            jmp   queens_2$2F3_ω
                        .size            n337_call_prolog_bx, .-n337_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
queens_2$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
queens_2$2F3_β:
                                                                              jmp   n303_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
queens_2$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lqueens_2$2F3_α_415_50
                        mov              qword ptr [rsp + 1520], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1520];         jmp   rax
.Lqueens_2$2F3_α_415_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1656]
                        lea              rsp, [rbp + 1680]
                        mov              rbp, qword ptr [rbp + 1672];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
queens_2$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1664]
                        lea              rsp, [rbp + 1680]
                        mov              rbp, qword ptr [rbp + 1672];         jmp   rcx
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
                        sub              rsp, 1248
                        mov              qword ptr [rsp + 1224], rcx
                        mov              qword ptr [rsp + 1232], rdx
                        mov              qword ptr [rsp + 1240], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1216
                        rep              stosb
main_α_body:
                        .type            n416_lit_string_bx, @function
n416_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rbp + 1152], 2            # result
                        mov              dword ptr [rbp + 1156], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_450_0]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n417_lit_integer_α
.Llit_string_α_450_0:   .quad            .Llit_string_α_450_0_s
.Llit_string_α_450_0_s: .string          "."
                        .size            n416_lit_string_bx, .-n416_lit_string_bx
                        .type            n417_lit_integer_bx, @function
n417_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_integer_α:     mov              r11, 161
                        mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_451_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n418_lit_string_α
.Llit_integer_α_451_0:  .quad            1
                        .size            n417_lit_integer_bx, .-n417_lit_integer_bx
                        .type            n418_lit_string_bx, @function
n418_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rbp + 1040], 2            # result
                        mov              dword ptr [rbp + 1044], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_452_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n419_lit_integer_α
.Llit_string_α_452_0:   .quad            .Llit_string_α_452_0_s
.Llit_string_α_452_0_s: .string          "."
                        .size            n418_lit_string_bx, .-n418_lit_string_bx
                        .type            n419_lit_integer_bx, @function
n419_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_integer_α:     mov              r11, 163
                        mov              qword ptr [rbp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_453_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n420_lit_string_α
.Llit_integer_α_453_0:  .quad            2
                        .size            n419_lit_integer_bx, .-n419_lit_integer_bx
                        .type            n420_lit_string_bx, @function
n420_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rbp + 928], 2             # result
                        mov              dword ptr [rbp + 932], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_454_0]
                        mov              qword ptr [rbp + 936], rax;          jmp   n421_lit_integer_α
.Llit_string_α_454_0:   .quad            .Llit_string_α_454_0_s
.Llit_string_α_454_0_s: .string          "."
                        .size            n420_lit_string_bx, .-n420_lit_string_bx
                        .type            n421_lit_integer_bx, @function
n421_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_integer_α:     mov              r11, 165
                        mov              qword ptr [rbp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_455_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n422_lit_string_α
.Llit_integer_α_455_0:  .quad            3
                        .size            n421_lit_integer_bx, .-n421_lit_integer_bx
                        .type            n422_lit_string_bx, @function
n422_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      mov              r11, 166
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_456_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n423_lit_integer_α
.Llit_string_α_456_0:   .quad            .Llit_string_α_456_0_s
.Llit_string_α_456_0_s: .string          "."
                        .size            n422_lit_string_bx, .-n422_lit_string_bx
                        .type            n423_lit_integer_bx, @function
n423_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_integer_α:     mov              r11, 167
                        mov              qword ptr [rbp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_457_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n424_lit_string_α
.Llit_integer_α_457_0:  .quad            4
                        .size            n423_lit_integer_bx, .-n423_lit_integer_bx
                        .type            n424_lit_string_bx, @function
n424_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_string_α:      mov              r11, 168
                        mov              qword ptr [rbp + 704], 2             # result
                        mov              dword ptr [rbp + 708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_458_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n425_lit_integer_α
.Llit_string_α_458_0:   .quad            .Llit_string_α_458_0_s
.Llit_string_α_458_0_s: .string          "."
                        .size            n424_lit_string_bx, .-n424_lit_string_bx
                        .type            n425_lit_integer_bx, @function
n425_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_integer_α:     mov              r11, 169
                        mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_459_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n426_lit_string_α
.Llit_integer_α_459_0:  .quad            5
                        .size            n425_lit_integer_bx, .-n425_lit_integer_bx
                        .type            n426_lit_string_bx, @function
n426_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_460_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n427_lit_integer_α
.Llit_string_α_460_0:   .quad            .Llit_string_α_460_0_s
.Llit_string_α_460_0_s: .string          "."
                        .size            n426_lit_string_bx, .-n426_lit_string_bx
                        .type            n427_lit_integer_bx, @function
n427_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_integer_α:     mov              r11, 171
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_461_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n428_lit_string_α
.Llit_integer_α_461_0:  .quad            6
                        .size            n427_lit_integer_bx, .-n427_lit_integer_bx
                        .type            n428_lit_string_bx, @function
n428_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:      mov              r11, 172
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_462_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n429_lit_integer_α
.Llit_string_α_462_0:   .quad            .Llit_string_α_462_0_s
.Llit_string_α_462_0_s: .string          "."
                        .size            n428_lit_string_bx, .-n428_lit_string_bx
                        .type            n429_lit_integer_bx, @function
n429_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rbp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_463_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n430_lit_string_α
.Llit_integer_α_463_0:  .quad            7
                        .size            n429_lit_integer_bx, .-n429_lit_integer_bx
                        .type            n430_lit_string_bx, @function
n430_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rbp + 368], 2             # result
                        mov              dword ptr [rbp + 372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_464_0]
                        mov              qword ptr [rbp + 376], rax;          jmp   n431_lit_integer_α
.Llit_string_α_464_0:   .quad            .Llit_string_α_464_0_s
.Llit_string_α_464_0_s: .string          "."
                        .size            n430_lit_string_bx, .-n430_lit_string_bx
                        .type            n431_lit_integer_bx, @function
n431_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_integer_α:     mov              r11, 175
                        mov              qword ptr [rbp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_465_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n432_lit_string_α
.Llit_integer_α_465_0:  .quad            8
                        .size            n431_lit_integer_bx, .-n431_lit_integer_bx
                        .type            n432_lit_string_bx, @function
n432_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_466_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n433_call_prolog_α
.Llit_string_α_466_0:   .quad            .Llit_string_α_466_0_s
.Llit_string_α_466_0_s: .string          "[]"
                        .size            n432_lit_string_bx, .-n432_lit_string_bx
                        .type            n433_call_prolog_bx, @function
n433_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_call_prolog_α:     mov              r11, 177
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n434_call_prolog_α
n433_call_prolog_β:     mov              r11, 177;                            jmp   main_ω
                        .size            n433_call_prolog_bx, .-n433_call_prolog_bx
                        .type            n434_call_prolog_bx, @function
n434_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_call_prolog_α:     mov              r11, 178
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n435_call_prolog_α
n434_call_prolog_β:     mov              r11, 178;                            jmp   main_ω
                        .size            n434_call_prolog_bx, .-n434_call_prolog_bx
                        .type            n435_call_prolog_bx, @function
n435_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_call_prolog_α:     mov              r11, 179
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n436_call_prolog_α
n435_call_prolog_β:     mov              r11, 179;                            jmp   main_ω
                        .size            n435_call_prolog_bx, .-n435_call_prolog_bx
                        .type            n436_call_prolog_bx, @function
n436_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_call_prolog_α:     mov              r11, 180
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n437_call_prolog_α
n436_call_prolog_β:     mov              r11, 180;                            jmp   main_ω
                        .size            n436_call_prolog_bx, .-n436_call_prolog_bx
                        .type            n437_call_prolog_bx, @function
n437_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_call_prolog_α:     mov              r11, 181
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n438_call_prolog_α
n437_call_prolog_β:     mov              r11, 181;                            jmp   main_ω
                        .size            n437_call_prolog_bx, .-n437_call_prolog_bx
                        .type            n438_call_prolog_bx, @function
n438_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_call_prolog_α:     mov              r11, 182
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n439_call_prolog_α
n438_call_prolog_β:     mov              r11, 182;                            jmp   main_ω
                        .size            n438_call_prolog_bx, .-n438_call_prolog_bx
                        .type            n439_call_prolog_bx, @function
n439_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_call_prolog_α:     mov              r11, 183
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n440_call_prolog_α
n439_call_prolog_β:     mov              r11, 183;                            jmp   main_ω
                        .size            n439_call_prolog_bx, .-n439_call_prolog_bx
                        .type            n440_call_prolog_bx, @function
n440_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_call_prolog_α:     mov              r11, 184
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    n447_lit_string_α
                                                                              jmp   n441_var_ref_α
n440_call_prolog_β:     mov              r11, 184;                            jmp   n447_lit_string_α
                        .size            n440_call_prolog_bx, .-n440_call_prolog_bx
                        .type            n441_var_ref_bx, @function
n441_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n442_call_proc_staged_α
                        .size            n441_var_ref_bx, .-n441_var_ref_bx
                        .type            n442_call_proc_staged_bx, @function
n442_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_call_proc_staged_α:
                        mov              r11, 186
                        mov              qword ptr [rbp + 224], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_478_200
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_478_201
.Lcall_proc_staged_α_478_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_478_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_478_202
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_478_203
.Lcall_proc_staged_α_478_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_478_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_478_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_478_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_478_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_478_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_478_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_478_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 232], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_478_5
                        mov              qword ptr [rbp + 224], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_478_2
.Lcall_proc_staged_α_478_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_478_2
.Lcall_proc_staged_α_478_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_478_6
                        mov              qword ptr [rbp + 224], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_478_2
.Lcall_proc_staged_α_478_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_478_2
.Lcall_proc_staged_α_478_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_478_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n447_lit_string_α
.Lcall_proc_staged_α_478_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_478_29
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
.Lcall_proc_staged_α_478_29:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n447_lit_string_α
                                                                              jmp   n443_var_α
n442_call_proc_staged_β:
                        mov              r11, 186
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 224], 0
                        lea              rdi, [rbp + 240]
                        lea              rsi, [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n447_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              ecx, 48
                        mov              r8d, 416
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
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
                        test             rax, rax;                            je    n447_lit_string_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_478_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_478_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_478_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_478_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_478_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n447_lit_string_α
                                                                              jmp   n443_var_α
.Lcall_proc_staged_α_478_0:
                        .quad            .Lcall_proc_staged_α_478_0_s
.Lcall_proc_staged_α_478_0_s:
                        .string          "queens/2"
                        .size            n442_call_proc_staged_bx, .-n442_call_proc_staged_bx
                        .type            n443_var_bx, @function
n443_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:             mov              r11, 187
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 168], rax;          jmp   n444_call_prolog_α
                        .size            n443_var_bx, .-n443_var_bx
                        .type            n444_call_prolog_bx, @function
n444_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_call_prolog_α:     mov              r11, 188
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn482: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn482]
                        lea              rsi, [rbp + 144]
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
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n442_call_proc_staged_β
                                                                              jmp   n445_lit_string_α
n444_call_prolog_β:     mov              r11, 188;                            jmp   n442_call_proc_staged_β
                        .size            n444_call_prolog_bx, .-n444_call_prolog_bx
                        .type            n445_lit_string_bx, @function
n445_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_483_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n446_call_prolog_α
.Llit_string_α_483_0:   .quad            .Llit_string_α_483_0_s
.Llit_string_α_483_0_s: .string          ""
                        .size            n445_lit_string_bx, .-n445_lit_string_bx
                        .type            n446_call_prolog_bx, @function
n446_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_call_prolog_α:     mov              r11, 190
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn485: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn485]
                        lea              rsi, [rbp + 96]
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n442_call_proc_staged_β
                                                                              jmp   main_γ
n446_call_prolog_β:     mov              r11, 190;                            jmp   n442_call_proc_staged_β
                        .size            n446_call_prolog_bx, .-n446_call_prolog_bx
                        .type            n447_lit_string_bx, @function
n447_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_string_α:      mov              r11, 191
                        mov              qword ptr [rbp + 48], 2              # result
                        mov              dword ptr [rbp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_486_0]
                        mov              qword ptr [rbp + 56], rax;           jmp   n448_lit_string_α
.Llit_string_α_486_0:   .quad            .Llit_string_α_486_0_s
.Llit_string_α_486_0_s: .string          "user_error"
                        .size            n447_lit_string_bx, .-n447_lit_string_bx
                        .type            n448_lit_string_bx, @function
n448_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rbp + 64], 2              # result
                        mov              dword ptr [rbp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_487_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n449_call_prolog_α
.Llit_string_α_487_0:   .quad            .Llit_string_α_487_0_s
.Llit_string_α_487_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n448_lit_string_bx, .-n448_lit_string_bx
                        .type            n449_call_prolog_bx, @function
n449_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_call_prolog_α:     mov              r11, 193
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn489: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn489]
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
n449_call_prolog_β:     mov              r11, 193;                            jmp   main_ω
                        .size            n449_call_prolog_bx, .-n449_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1224]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, qword ptr [rbp + 1240];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1232]
                        lea              rsp, [rbp + 1248]
                        mov              rbp, qword ptr [rbp + 1240];         jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "sel/3"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__sel$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            992
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "queens/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__queens$2F2
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
.Lstartup_pname2:       .string          "not_attack/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__not_attack$2F2
                        .quad            not_attack$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            464
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "not_attack/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__not_attack$2F3
                        .quad            not_attack$2F3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1616
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "queens_2/3"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__queens_2$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1632
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
