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
FN__q10$2F1:
                        sub              rsp, 1488
                        mov              qword ptr [rsp + 1464], rcx
                        mov              qword ptr [rsp + 1472], rdx
                        mov              qword ptr [rsp + 1480], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1408
                        mov              edx, 1456
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
q10$2F1_α_body:
                        lea              rax, [rip + n118_suspend_β]
                        mov              qword ptr [rbp + 1408], rax
                        .type            n81_call_prolog_bx, @function
n81_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_call_prolog_α:      mov              r11, 31
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_120_102
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40];           jmp   .Lcall_prolog_α_120_101
.Lcall_prolog_α_120_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_120_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_120_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_120_101
.Lcall_prolog_α_120_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_120_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n82_var_ref_α
n81_call_prolog_β:      mov              r11, 31;                             jmp   q10$2F1_ω
                        .size            n81_call_prolog_bx, .-n81_call_prolog_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n83_var_ref_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n84_call_prolog_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_call_prolog_bx, @function
n84_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_call_prolog_α:      mov              r11, 34
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        lea              r8, [rbp + 1344]
.Lcall_prolog_α_125_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_125_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_125_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_125_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_125_40
.Lcall_prolog_α_125_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_125_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_125_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_125_40
.Lcall_prolog_α_125_56: cmp              al, 72;                              jne   .Lcall_prolog_α_125_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_125_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_125_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_125_40
.Lcall_prolog_α_125_41: lea              r9, [rbp + 1360]
.Lcall_prolog_α_125_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_125_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_125_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_125_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_125_42
.Lcall_prolog_α_125_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_125_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_125_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_125_42
.Lcall_prolog_α_125_58: cmp              al, 72;                              jne   .Lcall_prolog_α_125_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_125_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_125_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_125_42
.Lcall_prolog_α_125_43: cmp              r8, r9;                              je    .Lcall_prolog_α_125_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_125_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_125_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_125_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_125_44
                                                                              jmp   .Lcall_prolog_α_125_45
.Lcall_prolog_α_125_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_125_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_125_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_125_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_125_53
                                                                              jmp   .Lcall_prolog_α_125_46
.Lcall_prolog_α_125_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_125_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_125_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_125_51
.Lcall_prolog_α_125_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_125_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_125_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_125_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_125_47
                                                                              jmp   .Lcall_prolog_α_125_48
.Lcall_prolog_α_125_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_125_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_125_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_125_51
.Lcall_prolog_α_125_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_125_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_125_53
                                                                              jmp   .Lcall_prolog_α_125_52
.Lcall_prolog_α_125_49: cmp              dl, 80;                              je    .Lcall_prolog_α_125_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_125_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_125_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_125_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_125_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_125_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_125_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_125_51
                                                                              jmp   .Lcall_prolog_α_125_52
.Lcall_prolog_α_125_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_125_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_125_53
.Lcall_prolog_α_125_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_125_54
.Lcall_prolog_α_125_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_125_54
.Lcall_prolog_α_125_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_125_54: mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              al, 104;                             je    n119_call_prolog_α
                                                                              jmp   n85_lit_string_α
n84_call_prolog_β:      mov              r11, 34;                             jmp   n119_call_prolog_α
                        .size            n84_call_prolog_bx, .-n84_call_prolog_bx
                        .type            n85_lit_string_bx, @function
n85_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rbp + 1296], 2            # result
                        mov              dword ptr [rbp + 1300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_126_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n86_lit_integer_α
.Llit_string_α_126_0:   .quad            .Llit_string_α_126_0_s
.Llit_string_α_126_0_s: .string          "."
                        .size            n85_lit_string_bx, .-n85_lit_string_bx
                        .type            n86_lit_integer_bx, @function
n86_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      mov              r11, 36
                        mov              qword ptr [rbp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_127_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n87_lit_string_α
.Llit_integer_α_127_0:  .quad            1
                        .size            n86_lit_integer_bx, .-n86_lit_integer_bx
                        .type            n87_lit_string_bx, @function
n87_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rbp + 1184], 2            # result
                        mov              dword ptr [rbp + 1188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_128_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n88_lit_integer_α
.Llit_string_α_128_0:   .quad            .Llit_string_α_128_0_s
.Llit_string_α_128_0_s: .string          "."
                        .size            n87_lit_string_bx, .-n87_lit_string_bx
                        .type            n88_lit_integer_bx, @function
n88_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rbp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_129_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n89_lit_string_α
.Llit_integer_α_129_0:  .quad            2
                        .size            n88_lit_integer_bx, .-n88_lit_integer_bx
                        .type            n89_lit_string_bx, @function
n89_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rbp + 1072], 2            # result
                        mov              dword ptr [rbp + 1076], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_130_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n90_lit_integer_α
.Llit_string_α_130_0:   .quad            .Llit_string_α_130_0_s
.Llit_string_α_130_0_s: .string          "."
                        .size            n89_lit_string_bx, .-n89_lit_string_bx
                        .type            n90_lit_integer_bx, @function
n90_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      mov              r11, 40
                        mov              qword ptr [rbp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_131_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n91_lit_string_α
.Llit_integer_α_131_0:  .quad            3
                        .size            n90_lit_integer_bx, .-n90_lit_integer_bx
                        .type            n91_lit_string_bx, @function
n91_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rbp + 960], 2             # result
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_132_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   n92_lit_integer_α
.Llit_string_α_132_0:   .quad            .Llit_string_α_132_0_s
.Llit_string_α_132_0_s: .string          "."
                        .size            n91_lit_string_bx, .-n91_lit_string_bx
                        .type            n92_lit_integer_bx, @function
n92_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rbp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_133_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n93_lit_string_α
.Llit_integer_α_133_0:  .quad            4
                        .size            n92_lit_integer_bx, .-n92_lit_integer_bx
                        .type            n93_lit_string_bx, @function
n93_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rbp + 848], 2             # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_134_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n94_lit_integer_α
.Llit_string_α_134_0:   .quad            .Llit_string_α_134_0_s
.Llit_string_α_134_0_s: .string          "."
                        .size            n93_lit_string_bx, .-n93_lit_string_bx
                        .type            n94_lit_integer_bx, @function
n94_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:      mov              r11, 44
                        mov              qword ptr [rbp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_135_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n95_lit_string_α
.Llit_integer_α_135_0:  .quad            5
                        .size            n94_lit_integer_bx, .-n94_lit_integer_bx
                        .type            n95_lit_string_bx, @function
n95_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rbp + 736], 2             # result
                        mov              dword ptr [rbp + 740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_136_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n96_lit_integer_α
.Llit_string_α_136_0:   .quad            .Llit_string_α_136_0_s
.Llit_string_α_136_0_s: .string          "."
                        .size            n95_lit_string_bx, .-n95_lit_string_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      mov              r11, 46
                        mov              qword ptr [rbp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_137_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n97_lit_string_α
.Llit_integer_α_137_0:  .quad            6
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_lit_string_bx, @function
n97_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rbp + 624], 2             # result
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_138_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n98_lit_integer_α
.Llit_string_α_138_0:   .quad            .Llit_string_α_138_0_s
.Llit_string_α_138_0_s: .string          "."
                        .size            n97_lit_string_bx, .-n97_lit_string_bx
                        .type            n98_lit_integer_bx, @function
n98_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      mov              r11, 48
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_139_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n99_lit_string_α
.Llit_integer_α_139_0:  .quad            7
                        .size            n98_lit_integer_bx, .-n98_lit_integer_bx
                        .type            n99_lit_string_bx, @function
n99_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rbp + 512], 2             # result
                        mov              dword ptr [rbp + 516], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_140_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n100_lit_integer_α
.Llit_string_α_140_0:   .quad            .Llit_string_α_140_0_s
.Llit_string_α_140_0_s: .string          "."
                        .size            n99_lit_string_bx, .-n99_lit_string_bx
                        .type            n100_lit_integer_bx, @function
n100_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     mov              r11, 50
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_141_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n101_lit_string_α
.Llit_integer_α_141_0:  .quad            8
                        .size            n100_lit_integer_bx, .-n100_lit_integer_bx
                        .type            n101_lit_string_bx, @function
n101_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              r11, 51
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_142_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n102_lit_integer_α
.Llit_string_α_142_0:   .quad            .Llit_string_α_142_0_s
.Llit_string_α_142_0_s: .string          "."
                        .size            n101_lit_string_bx, .-n101_lit_string_bx
                        .type            n102_lit_integer_bx, @function
n102_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:     mov              r11, 52
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_143_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n103_lit_string_α
.Llit_integer_α_143_0:  .quad            9
                        .size            n102_lit_integer_bx, .-n102_lit_integer_bx
                        .type            n103_lit_string_bx, @function
n103_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 53
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_144_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n104_lit_integer_α
.Llit_string_α_144_0:   .quad            .Llit_string_α_144_0_s
.Llit_string_α_144_0_s: .string          "."
                        .size            n103_lit_string_bx, .-n103_lit_string_bx
                        .type            n104_lit_integer_bx, @function
n104_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:     mov              r11, 54
                        mov              qword ptr [rbp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_145_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n105_lit_string_α
.Llit_integer_α_145_0:  .quad            10
                        .size            n104_lit_integer_bx, .-n104_lit_integer_bx
                        .type            n105_lit_string_bx, @function
n105_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              r11, 55
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_146_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n106_call_prolog_α
.Llit_string_α_146_0:   .quad            .Llit_string_α_146_0_s
.Llit_string_α_146_0_s: .string          "[]"
                        .size            n105_lit_string_bx, .-n105_lit_string_bx
                        .type            n106_call_prolog_bx, @function
n106_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_prolog_α:     mov              r11, 56
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
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n107_call_prolog_α
n106_call_prolog_β:     mov              r11, 56;                             jmp   q10$2F1_ω
                        .size            n106_call_prolog_bx, .-n106_call_prolog_bx
                        .type            n107_call_prolog_bx, @function
n107_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_call_prolog_α:     mov              r11, 57
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
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n108_call_prolog_α
n107_call_prolog_β:     mov              r11, 57;                             jmp   q10$2F1_ω
                        .size            n107_call_prolog_bx, .-n107_call_prolog_bx
                        .type            n108_call_prolog_bx, @function
n108_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_call_prolog_α:     mov              r11, 58
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n109_call_prolog_α
n108_call_prolog_β:     mov              r11, 58;                             jmp   q10$2F1_ω
                        .size            n108_call_prolog_bx, .-n108_call_prolog_bx
                        .type            n109_call_prolog_bx, @function
n109_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_prolog_α:     mov              r11, 59
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n110_call_prolog_α
n109_call_prolog_β:     mov              r11, 59;                             jmp   q10$2F1_ω
                        .size            n109_call_prolog_bx, .-n109_call_prolog_bx
                        .type            n110_call_prolog_bx, @function
n110_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_prolog_α:     mov              r11, 60
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n111_call_prolog_α
n110_call_prolog_β:     mov              r11, 60;                             jmp   q10$2F1_ω
                        .size            n110_call_prolog_bx, .-n110_call_prolog_bx
                        .type            n111_call_prolog_bx, @function
n111_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_call_prolog_α:     mov              r11, 61
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n112_call_prolog_α
n111_call_prolog_β:     mov              r11, 61;                             jmp   q10$2F1_ω
                        .size            n111_call_prolog_bx, .-n111_call_prolog_bx
                        .type            n112_call_prolog_bx, @function
n112_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_call_prolog_α:     mov              r11, 62
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n113_call_prolog_α
n112_call_prolog_β:     mov              r11, 62;                             jmp   q10$2F1_ω
                        .size            n112_call_prolog_bx, .-n112_call_prolog_bx
                        .type            n113_call_prolog_bx, @function
n113_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_prolog_α:     mov              r11, 63
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n114_call_prolog_α
n113_call_prolog_β:     mov              r11, 63;                             jmp   q10$2F1_ω
                        .size            n113_call_prolog_bx, .-n113_call_prolog_bx
                        .type            n114_call_prolog_bx, @function
n114_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_call_prolog_α:     mov              r11, 64
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n115_call_prolog_α
n114_call_prolog_β:     mov              r11, 64;                             jmp   q10$2F1_ω
                        .size            n114_call_prolog_bx, .-n114_call_prolog_bx
                        .type            n115_call_prolog_bx, @function
n115_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_prolog_α:     mov              r11, 65
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    n119_call_prolog_α
                                                                              jmp   n116_var_ref_α
n115_call_prolog_β:     mov              r11, 65;                             jmp   n119_call_prolog_α
                        .size            n115_call_prolog_bx, .-n115_call_prolog_bx
                        .type            n116_var_ref_bx, @function
n116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n117_call_proc_staged_α
                        .size            n116_var_ref_bx, .-n116_var_ref_bx
                        .type            n117_call_proc_staged_bx, @function
n117_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        mov              r11, 67
                        mov              qword ptr [rbp + 144], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_160_200
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_160_201
.Lcall_proc_staged_α_160_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_160_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_160_202
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_160_203
.Lcall_proc_staged_α_160_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_160_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_160_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 7
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_160_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_160_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_160_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_160_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_160_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 152], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_160_5
                        mov              qword ptr [rbp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_160_2
.Lcall_proc_staged_α_160_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_160_2
.Lcall_proc_staged_α_160_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_160_6
                        mov              qword ptr [rbp + 144], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_160_2
.Lcall_proc_staged_α_160_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_160_2
.Lcall_proc_staged_α_160_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_160_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n119_call_prolog_α
.Lcall_proc_staged_α_160_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_160_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
.Lcall_proc_staged_α_160_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    n119_call_prolog_α
                                                                              jmp   n118_suspend_α
n117_call_proc_staged_β:
                        mov              r11, 67
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 144], 0
                        lea              rdi, [rbp + 160]
                        lea              rsi, [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n119_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              ecx, 48
                        mov              r8d, 640
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 7
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n119_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_160_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_160_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_160_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_160_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_160_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    n119_call_prolog_α
                                                                              jmp   n118_suspend_α
.Lcall_proc_staged_α_160_0:
                        .quad            .Lcall_proc_staged_α_160_0_s
.Lcall_proc_staged_α_160_0_s:
                        .string          "q/2"
                        .size            n117_call_proc_staged_bx, .-n117_call_proc_staged_bx
                        .type            n118_suspend_bx, @function
n118_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_suspend_α:         mov              r11, 68
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_162_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1408];         jmp   rax
.Lsuspend_α_162_61:     mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n118_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n118_suspend_β]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax;            jmp   q10$2F1_γ
n118_suspend_β:         mov              r11, 68;                             jmp   n117_call_proc_staged_β
                        .size            n118_suspend_bx, .-n118_suspend_bx
                        .type            n119_call_prolog_bx, @function
n119_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_prolog_α:     mov              r11, 69
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   q10$2F1_ω
n119_call_prolog_β:     mov              r11, 69;                             jmp   q10$2F1_ω
                        .size            n119_call_prolog_bx, .-n119_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
q10$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
q10$2F1_β:
                                                                              jmp   n118_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
q10$2F1_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lq10$2F1_α_163_50
                        mov              qword ptr [rsp + 1408], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1408];         jmp   rax
.Lq10$2F1_α_163_50:     mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1464]
                        lea              rsp, [rbp + 1488]
                        mov              rbp, qword ptr [rbp + 1480];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q10$2F1_ω:
                        mov              rcx, qword ptr [rsp + 1472]
                        lea              rsp, [rbp + 1488]
                        mov              rbp, qword ptr [rbp + 1480];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test$2F2:
                        sub              rsp, 1056
                        mov              qword ptr [rsp + 1032], rcx
                        mov              qword ptr [rsp + 1040], rdx
                        mov              qword ptr [rsp + 1048], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 944
                        mov              edx, 1024
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
test$2F2_α_body:
                        lea              rax, [rip + n175_suspend_β]
                        mov              qword ptr [rbp + 944], rax
                        .type            n164_call_prolog_bx, @function
n164_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_call_prolog_α:     mov              r11, 70
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_196_102
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56];           jmp   .Lcall_prolog_α_196_101
.Lcall_prolog_α_196_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_196_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_196_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_196_101
.Lcall_prolog_α_196_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_196_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                                                                              jmp   n165_var_ref_α
n164_call_prolog_β:     mov              r11, 70;                             jmp   test$2F2_ω
                        .size            n164_call_prolog_bx, .-n164_call_prolog_bx
                        .type            n165_var_ref_bx, @function
n165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n166_lit_integer_α
                        .size            n165_var_ref_bx, .-n165_var_ref_bx
                        .type            n166_lit_integer_bx, @function
n166_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     mov              r11, 72
                        mov              qword ptr [rbp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_199_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n167_lit_string_α
.Llit_integer_α_199_0:  .quad            2
                        .size            n166_lit_integer_bx, .-n166_lit_integer_bx
                        .type            n167_lit_string_bx, @function
n167_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      mov              r11, 73
                        mov              qword ptr [rbp + 928], 2             # result
                        mov              dword ptr [rbp + 932], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_200_0]
                        mov              qword ptr [rbp + 936], rax;          jmp   n168_call_prolog_α
.Llit_string_α_200_0:   .quad            .Llit_string_α_200_0_s
.Llit_string_α_200_0_s: .string          "[]"
                        .size            n167_lit_string_bx, .-n167_lit_string_bx
                        .type            n168_call_prolog_bx, @function
n168_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_prolog_α:     mov              r11, 74
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        lea              r8, [rbp + 848]
.Lcall_prolog_α_201_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_201_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_201_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_201_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_201_110
.Lcall_prolog_α_201_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_201_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_201_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_201_110
.Lcall_prolog_α_201_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_201_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_201_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_201_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_201_110
.Lcall_prolog_α_201_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_201_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_201_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_201_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_201_114
                                                                              jmp   .Lcall_prolog_α_201_118
.Lcall_prolog_α_201_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_201_115
                        cmp              al, 3;                               je    .Lcall_prolog_α_201_114
                        cmp              al, 2;                               jne   .Lcall_prolog_α_201_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_201_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_201_114
                                                                              jmp   .Lcall_prolog_α_201_116
.Lcall_prolog_α_201_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_201_117
.Lcall_prolog_α_201_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_201_117
.Lcall_prolog_α_201_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_201_117:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n177_var_ref_α
                                                                              jmp   n169_var_ref_α
n168_call_prolog_β:     mov              r11, 74;                             jmp   n177_var_ref_α
                        .size            n168_call_prolog_bx, .-n168_call_prolog_bx
                        .type            n169_var_ref_bx, @function
n169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n170_lit_string_α
                        .size            n169_var_ref_bx, .-n169_var_ref_bx
                        .type            n170_lit_string_bx, @function
n170_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      mov              r11, 76
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_204_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n171_call_prolog_α
.Llit_string_α_204_0:   .quad            .Llit_string_α_204_0_s
.Llit_string_α_204_0_s: .string          "[]"
                        .size            n170_lit_string_bx, .-n170_lit_string_bx
                        .type            n171_call_prolog_bx, @function
n171_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_call_prolog_α:     mov              r11, 77
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_205_2]
                                                                              jmp   .Lcall_prolog_α_205_3
.Lcall_prolog_α_205_2:  .quad            .Lcall_prolog_α_205_2_s
.Lcall_prolog_α_205_2_s:
                        .string          "[]"
.Lcall_prolog_α_205_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    n176_call_prolog_α
                                                                              jmp   n172_var_ref_α
n171_call_prolog_β:     mov              r11, 77;                             jmp   n176_call_prolog_α
                        .size            n171_call_prolog_bx, .-n171_call_prolog_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n173_var_ref_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n174_call_prolog_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_call_prolog_bx, @function
n174_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_prolog_α:     mov              r11, 80
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lcall_prolog_α_210_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_210_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_210_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_210_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_210_40
.Lcall_prolog_α_210_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_210_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_210_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_210_40
.Lcall_prolog_α_210_56: cmp              al, 72;                              jne   .Lcall_prolog_α_210_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_210_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_210_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_210_40
.Lcall_prolog_α_210_41: lea              r9, [rbp + 704]
.Lcall_prolog_α_210_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_210_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_210_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_210_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_210_42
.Lcall_prolog_α_210_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_210_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_210_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_210_42
.Lcall_prolog_α_210_58: cmp              al, 72;                              jne   .Lcall_prolog_α_210_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_210_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_210_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_210_42
.Lcall_prolog_α_210_43: cmp              r8, r9;                              je    .Lcall_prolog_α_210_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_210_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_210_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_210_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_210_44
                                                                              jmp   .Lcall_prolog_α_210_45
.Lcall_prolog_α_210_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_210_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_210_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_210_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_210_53
                                                                              jmp   .Lcall_prolog_α_210_46
.Lcall_prolog_α_210_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_210_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_210_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_210_51
.Lcall_prolog_α_210_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_210_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_210_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_210_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_210_47
                                                                              jmp   .Lcall_prolog_α_210_48
.Lcall_prolog_α_210_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_210_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_210_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_210_51
.Lcall_prolog_α_210_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_210_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_210_53
                                                                              jmp   .Lcall_prolog_α_210_52
.Lcall_prolog_α_210_49: cmp              dl, 80;                              je    .Lcall_prolog_α_210_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_210_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_210_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_210_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_210_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_210_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_210_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_210_51
                                                                              jmp   .Lcall_prolog_α_210_52
.Lcall_prolog_α_210_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_210_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_210_53
.Lcall_prolog_α_210_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_210_54
.Lcall_prolog_α_210_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_210_54
.Lcall_prolog_α_210_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_210_54: mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n176_call_prolog_α
                                                                              jmp   n175_suspend_α
n174_call_prolog_β:     mov              r11, 80;                             jmp   n176_call_prolog_α
                        .size            n174_call_prolog_bx, .-n174_call_prolog_bx
                        .type            n175_suspend_bx, @function
n175_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_suspend_α:         mov              r11, 81
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_212_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 944];          jmp   rax
.Lsuspend_α_212_61:     mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n175_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n175_suspend_β]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax;            jmp   test$2F2_γ
n175_suspend_β:         mov              r11, 81;                             jmp   n176_call_prolog_α
                        .size            n175_suspend_bx, .-n175_suspend_bx
                        .type            n176_call_prolog_bx, @function
n176_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_call_prolog_α:     mov              r11, 82
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    test$2F2_ω
                                                                              jmp   n177_var_ref_α
n176_call_prolog_β:     mov              r11, 82;                             jmp   test$2F2_ω
                        .size            n176_call_prolog_bx, .-n176_call_prolog_bx
                        .type            n177_var_ref_bx, @function
n177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n178_lit_integer_α
                        .size            n177_var_ref_bx, .-n177_var_ref_bx
                        .type            n178_lit_integer_bx, @function
n178_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:     mov              r11, 84
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_216_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n179_lit_integer_α
.Llit_integer_α_216_0:  .quad            3
                        .size            n178_lit_integer_bx, .-n178_lit_integer_bx
                        .type            n179_lit_integer_bx, @function
n179_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     mov              r11, 85
                        mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_217_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n180_call_prolog_α
.Llit_integer_α_217_0:  .quad            0
                        .size            n179_lit_integer_bx, .-n179_lit_integer_bx
                        .type            n180_call_prolog_bx, @function
n180_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_call_prolog_α:     mov              r11, 86
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lcall_prolog_α_218_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_218_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_218_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_218_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_218_110
.Lcall_prolog_α_218_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_218_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_218_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_218_110
.Lcall_prolog_α_218_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_218_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_218_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_218_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_218_110
.Lcall_prolog_α_218_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_218_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_218_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_218_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_218_114
                                                                              jmp   .Lcall_prolog_α_218_118
.Lcall_prolog_α_218_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lcall_prolog_α_218_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lcall_prolog_α_218_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lcall_prolog_α_218_115
                                                                              jmp   .Lcall_prolog_α_218_114
.Lcall_prolog_α_218_119:
                        cmp              al, 3;                               jne   .Lcall_prolog_α_218_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_218_114
                                                                              jmp   .Lcall_prolog_α_218_115
.Lcall_prolog_α_218_120:
                        cmp              al, 2;                               jne   .Lcall_prolog_α_218_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_218_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_218_114
                                                                              jmp   .Lcall_prolog_α_218_115
.Lcall_prolog_α_218_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_218_117
.Lcall_prolog_α_218_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_218_117
.Lcall_prolog_α_218_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_218_117:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n181_var_ref_α
n180_call_prolog_β:     mov              r11, 86;                             jmp   n195_call_prolog_α
                        .size            n180_call_prolog_bx, .-n180_call_prolog_bx
                        .type            n181_var_ref_bx, @function
n181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n182_var_ref_α
                        .size            n181_var_ref_bx, .-n181_var_ref_bx
                        .type            n182_var_ref_bx, @function
n182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n183_var_ref_α
                        .size            n182_var_ref_bx, .-n182_var_ref_bx
                        .type            n183_var_ref_bx, @function
n183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n184_call_prolog_α
                        .size            n183_var_ref_bx, .-n183_var_ref_bx
                        .type            n184_call_prolog_bx, @function
n184_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_call_prolog_α:     mov              r11, 90
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        lea              r8, [rbp + 432]
.Lcall_prolog_α_225_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_225_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_225_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_225_60
.Lcall_prolog_α_225_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_225_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_225_60
.Lcall_prolog_α_225_63: cmp              al, 72;                              jne   .Lcall_prolog_α_225_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_225_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_225_60
.Lcall_prolog_α_225_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_225_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_225_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_225_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_225_80
                                                                              jmp   .Lcall_prolog_α_225_74
.Lcall_prolog_α_225_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_225_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_225_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_225_73
                        lea              r9, [rbp + 448]
.Lcall_prolog_α_225_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_225_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_225_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_225_64
.Lcall_prolog_α_225_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_225_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_225_64
.Lcall_prolog_α_225_67: cmp              al, 72;                              jne   .Lcall_prolog_α_225_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_225_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_225_64
.Lcall_prolog_α_225_65: lea              rcx, [rbp + 464]
.Lcall_prolog_α_225_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_225_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_225_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_225_68
.Lcall_prolog_α_225_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_225_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_225_68
.Lcall_prolog_α_225_71: cmp              al, 72;                              jne   .Lcall_prolog_α_225_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_225_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_225_68
.Lcall_prolog_α_225_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_225_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_225_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_225_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_225_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_225_75
                                                                              jmp   .Lcall_prolog_α_225_72
.Lcall_prolog_α_225_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_225_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_225_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_225_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_225_76
                                                                              jmp   .Lcall_prolog_α_225_72
.Lcall_prolog_α_225_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_225_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_225_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_225_77
.Lcall_prolog_α_225_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_225_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_225_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_225_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_225_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_225_72
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
                        lea              r9, [rbp + 448]
.Lcall_prolog_α_225_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_225_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_225_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_225_81
.Lcall_prolog_α_225_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_225_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_225_81
.Lcall_prolog_α_225_84: cmp              al, 72;                              jne   .Lcall_prolog_α_225_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_225_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_225_81
.Lcall_prolog_α_225_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_225_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_225_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_225_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_225_85
                                                                              jmp   .Lcall_prolog_α_225_86
.Lcall_prolog_α_225_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_225_87
.Lcall_prolog_α_225_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_225_87: lea              rcx, [rbp + 464]
.Lcall_prolog_α_225_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_225_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_225_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_225_88
.Lcall_prolog_α_225_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_225_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_225_88
.Lcall_prolog_α_225_91: cmp              al, 72;                              jne   .Lcall_prolog_α_225_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_225_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_225_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_225_88
.Lcall_prolog_α_225_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_225_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_225_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_225_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_225_92
                                                                              jmp   .Lcall_prolog_α_225_93
.Lcall_prolog_α_225_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_225_94
.Lcall_prolog_α_225_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_225_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_225_77
.Lcall_prolog_α_225_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_225_77
.Lcall_prolog_α_225_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_225_77: mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n185_var_ref_α
n184_call_prolog_β:     mov              r11, 90;                             jmp   n195_call_prolog_α
                        .size            n184_call_prolog_bx, .-n184_call_prolog_bx
                        .type            n185_var_ref_bx, @function
n185_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n186_var_ref_α
                        .size            n185_var_ref_bx, .-n185_var_ref_bx
                        .type            n186_var_ref_bx, @function
n186_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n187_call_prolog_α
                        .size            n186_var_ref_bx, .-n186_var_ref_bx
                        .type            n187_call_prolog_bx, @function
n187_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_call_prolog_α:     mov              r11, 93
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lcall_prolog_α_230_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_230_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_230_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_230_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_230_40
.Lcall_prolog_α_230_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_230_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_230_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_230_40
.Lcall_prolog_α_230_56: cmp              al, 72;                              jne   .Lcall_prolog_α_230_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_230_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_230_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_230_40
.Lcall_prolog_α_230_41: lea              r9, [rbp + 352]
.Lcall_prolog_α_230_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_230_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_230_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_230_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_230_42
.Lcall_prolog_α_230_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_230_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_230_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_230_42
.Lcall_prolog_α_230_58: cmp              al, 72;                              jne   .Lcall_prolog_α_230_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_230_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_230_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_230_42
.Lcall_prolog_α_230_43: cmp              r8, r9;                              je    .Lcall_prolog_α_230_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_230_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_230_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_230_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_230_44
                                                                              jmp   .Lcall_prolog_α_230_45
.Lcall_prolog_α_230_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_230_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_230_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_230_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_230_53
                                                                              jmp   .Lcall_prolog_α_230_46
.Lcall_prolog_α_230_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_230_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_230_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_230_51
.Lcall_prolog_α_230_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_230_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_230_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_230_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_230_47
                                                                              jmp   .Lcall_prolog_α_230_48
.Lcall_prolog_α_230_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_230_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_230_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_230_51
.Lcall_prolog_α_230_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_230_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_230_53
                                                                              jmp   .Lcall_prolog_α_230_52
.Lcall_prolog_α_230_49: cmp              dl, 80;                              je    .Lcall_prolog_α_230_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_230_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_230_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_230_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_230_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_230_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_230_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_230_51
                                                                              jmp   .Lcall_prolog_α_230_52
.Lcall_prolog_α_230_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_230_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_230_53
.Lcall_prolog_α_230_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_230_54
.Lcall_prolog_α_230_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_230_54
.Lcall_prolog_α_230_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_230_54: mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n188_var_ref_α
n187_call_prolog_β:     mov              r11, 93;                             jmp   n195_call_prolog_α
                        .size            n187_call_prolog_bx, .-n187_call_prolog_bx
                        .type            n188_var_ref_bx, @function
n188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n189_var_ref_α
                        .size            n188_var_ref_bx, .-n188_var_ref_bx
                        .type            n189_var_ref_bx, @function
n189_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n190_call_proc_staged_α
                        .size            n189_var_ref_bx, .-n189_var_ref_bx
                        .type            n190_call_proc_staged_bx, @function
n190_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_call_proc_staged_α:
                        mov              r11, 96
                        mov              qword ptr [rbp + 256], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_236_200
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_236_201
.Lcall_proc_staged_α_236_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_236_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_236_202
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_236_203
.Lcall_proc_staged_α_236_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_236_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_236_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_236_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_236_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_236_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_236_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_236_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 264], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_236_5
                        mov              qword ptr [rbp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_236_2
.Lcall_proc_staged_α_236_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_236_2
.Lcall_proc_staged_α_236_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_236_6
                        mov              qword ptr [rbp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_236_2
.Lcall_proc_staged_α_236_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_236_2
.Lcall_proc_staged_α_236_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_236_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n195_call_prolog_α
.Lcall_proc_staged_α_236_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_236_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
.Lcall_proc_staged_α_236_29:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n191_var_ref_α
n190_call_proc_staged_β:
                        mov              r11, 96
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 256], 0
                        lea              rdi, [rbp + 272]
                        lea              rsi, [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n195_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              ecx, 48
                        mov              r8d, 944
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n195_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_236_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_236_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_236_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_236_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_236_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    n195_call_prolog_α
                                                                              jmp   n191_var_ref_α
.Lcall_proc_staged_α_236_0:
                        .quad            .Lcall_proc_staged_α_236_0_s
.Lcall_proc_staged_α_236_0_s:
                        .string          "test/2"
                        .size            n190_call_proc_staged_bx, .-n190_call_proc_staged_bx
                        .type            n191_var_ref_bx, @function
n191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n192_var_ref_α
                        .size            n191_var_ref_bx, .-n191_var_ref_bx
                        .type            n192_var_ref_bx, @function
n192_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n193_call_proc_staged_α
                        .size            n192_var_ref_bx, .-n192_var_ref_bx
                        .type            n193_call_proc_staged_bx, @function
n193_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        mov              r11, 99
                        lea              rsi, [rbp + 176]
                        lea              rdx, [rbp + 192]
                        call             nd$2F2_dcα;                          jmp   .Lcall_proc_staged_α_242_2
.Lcall_proc_staged_α_242_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_242_29
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
.Lcall_proc_staged_α_242_29:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n190_call_proc_staged_β
                                                                              jmp   n194_suspend_α
n193_call_proc_staged_β:
                        mov              r11, 99;                             jmp   n190_call_proc_staged_β
.Lcall_proc_staged_β_242_0:
                        .quad            .Lcall_proc_staged_β_242_0_s
.Lcall_proc_staged_β_242_0_s:
                        .string          "nd/2"
                        .size            n193_call_proc_staged_bx, .-n193_call_proc_staged_bx
                        .type            n194_suspend_bx, @function
n194_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_suspend_α:         mov              r11, 100
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_244_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 944];          jmp   rax
.Lsuspend_α_244_61:     mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n194_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n194_suspend_β]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax;            jmp   test$2F2_γ
n194_suspend_β:         mov              r11, 100;                            jmp   n193_call_proc_staged_β
                        .size            n194_suspend_bx, .-n194_suspend_bx
                        .type            n195_call_prolog_bx, @function
n195_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_call_prolog_α:     mov              r11, 101
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
                        cmp              al, 104;                             je    test$2F2_ω
                                                                              jmp   test$2F2_ω
n195_call_prolog_β:     mov              r11, 101;                            jmp   test$2F2_ω
                        .size            n195_call_prolog_bx, .-n195_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_β:
                                                                              jmp   n175_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Ltest$2F2_α_245_50
                        mov              qword ptr [rsp + 944], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 944];          jmp   rax
.Ltest$2F2_α_245_50:    mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1032]
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1040]
                        lea              rsp, [rbp + 1056]
                        mov              rbp, qword ptr [rbp + 1048];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__nd$2F2:
                        sub              rsp, 1328
                        mov              qword ptr [rsp + 1304], rcx
                        mov              qword ptr [rsp + 1312], rdx
                        mov              qword ptr [rsp + 1320], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1296
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
nd$2F2_α_body:
                        .type            n246_call_prolog_bx, @function
n246_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_call_prolog_α:     mov              r11, 102
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_283_102
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88];           jmp   .Lcall_prolog_α_283_101
.Lcall_prolog_α_283_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_283_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_283_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_283_101
.Lcall_prolog_α_283_100:
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
.Lcall_prolog_α_283_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    nd$2F2_ω
                                                                              jmp   n247_var_ref_α
n246_call_prolog_β:     mov              r11, 102;                            jmp   nd$2F2_ω
                        .size            n246_call_prolog_bx, .-n246_call_prolog_bx
                        .type            n247_var_ref_bx, @function
n247_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n248_lit_string_α
                        .size            n247_var_ref_bx, .-n247_var_ref_bx
                        .type            n248_lit_string_bx, @function
n248_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rbp + 1152], 2            # result
                        mov              dword ptr [rbp + 1156], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_286_0]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n249_var_ref_α
.Llit_string_α_286_0:   .quad            .Llit_string_α_286_0_s
.Llit_string_α_286_0_s: .string          "p"
                        .size            n248_lit_string_bx, .-n248_lit_string_bx
                        .type            n249_var_ref_bx, @function
n249_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n250_var_ref_α
                        .size            n249_var_ref_bx, .-n249_var_ref_bx
                        .type            n250_var_ref_bx, @function
n250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n251_call_prolog_α
                        .size            n250_var_ref_bx, .-n250_var_ref_bx
                        .type            n251_call_prolog_bx, @function
n251_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_call_prolog_α:     mov              r11, 107
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1048]
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
                        cmp              al, 104;                             je    n282_call_prolog_α
                                                                              jmp   n252_call_prolog_α
n251_call_prolog_β:     mov              r11, 107;                            jmp   n282_call_prolog_α
                        .size            n251_call_prolog_bx, .-n251_call_prolog_bx
                        .type            n252_call_prolog_bx, @function
n252_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_prolog_α:     mov              r11, 108
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lcall_prolog_α_292_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_292_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_292_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_292_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_292_40
.Lcall_prolog_α_292_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_292_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_292_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_292_40
.Lcall_prolog_α_292_56: cmp              al, 72;                              jne   .Lcall_prolog_α_292_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_292_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_292_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_292_40
.Lcall_prolog_α_292_41: lea              r9, [rbp + 1008]
.Lcall_prolog_α_292_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_292_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_292_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_292_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_292_42
.Lcall_prolog_α_292_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_292_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_292_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_292_42
.Lcall_prolog_α_292_58: cmp              al, 72;                              jne   .Lcall_prolog_α_292_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_292_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_292_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_292_42
.Lcall_prolog_α_292_43: cmp              r8, r9;                              je    .Lcall_prolog_α_292_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_292_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_292_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_292_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_292_44
                                                                              jmp   .Lcall_prolog_α_292_45
.Lcall_prolog_α_292_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_292_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_292_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_292_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_292_53
                                                                              jmp   .Lcall_prolog_α_292_46
.Lcall_prolog_α_292_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_292_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_292_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_292_51
.Lcall_prolog_α_292_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_292_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_292_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_292_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_292_47
                                                                              jmp   .Lcall_prolog_α_292_48
.Lcall_prolog_α_292_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_292_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_292_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_292_51
.Lcall_prolog_α_292_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_292_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_292_53
                                                                              jmp   .Lcall_prolog_α_292_52
.Lcall_prolog_α_292_49: cmp              dl, 80;                              je    .Lcall_prolog_α_292_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_292_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_292_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_292_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_292_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_292_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_292_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_292_51
                                                                              jmp   .Lcall_prolog_α_292_52
.Lcall_prolog_α_292_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_292_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_292_53
.Lcall_prolog_α_292_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_292_54
.Lcall_prolog_α_292_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_292_54
.Lcall_prolog_α_292_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_292_54: mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    n282_call_prolog_α
                                                                              jmp   n253_var_ref_α
n252_call_prolog_β:     mov              r11, 108;                            jmp   n282_call_prolog_α
                        .size            n252_call_prolog_bx, .-n252_call_prolog_bx
                        .type            n253_var_ref_bx, @function
n253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n254_lit_string_α
                        .size            n253_var_ref_bx, .-n253_var_ref_bx
                        .type            n254_lit_string_bx, @function
n254_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rbp + 960], 2             # result
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_295_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   n255_var_ref_α
.Llit_string_α_295_0:   .quad            .Llit_string_α_295_0_s
.Llit_string_α_295_0_s: .string          "p"
                        .size            n254_lit_string_bx, .-n254_lit_string_bx
                        .type            n255_var_ref_bx, @function
n255_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n256_var_ref_α
                        .size            n255_var_ref_bx, .-n255_var_ref_bx
                        .type            n256_var_ref_bx, @function
n256_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n257_call_prolog_α
                        .size            n256_var_ref_bx, .-n256_var_ref_bx
                        .type            n257_call_prolog_bx, @function
n257_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_call_prolog_α:     mov              r11, 113
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    n282_call_prolog_α
                                                                              jmp   n258_call_prolog_α
n257_call_prolog_β:     mov              r11, 113;                            jmp   n282_call_prolog_α
                        .size            n257_call_prolog_bx, .-n257_call_prolog_bx
                        .type            n258_call_prolog_bx, @function
n258_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_call_prolog_α:     mov              r11, 114
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        lea              r8, [rbp + 800]
.Lcall_prolog_α_301_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_301_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_301_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_301_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_301_40
.Lcall_prolog_α_301_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_301_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_301_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_301_40
.Lcall_prolog_α_301_56: cmp              al, 72;                              jne   .Lcall_prolog_α_301_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_301_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_301_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_301_40
.Lcall_prolog_α_301_41: lea              r9, [rbp + 816]
.Lcall_prolog_α_301_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_301_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_301_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_301_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_301_42
.Lcall_prolog_α_301_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_301_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_301_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_301_42
.Lcall_prolog_α_301_58: cmp              al, 72;                              jne   .Lcall_prolog_α_301_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_301_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_301_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_301_42
.Lcall_prolog_α_301_43: cmp              r8, r9;                              je    .Lcall_prolog_α_301_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_301_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_301_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_301_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_301_44
                                                                              jmp   .Lcall_prolog_α_301_45
.Lcall_prolog_α_301_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_301_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_301_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_301_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_301_53
                                                                              jmp   .Lcall_prolog_α_301_46
.Lcall_prolog_α_301_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_301_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_301_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_301_51
.Lcall_prolog_α_301_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_301_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_301_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_301_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_301_47
                                                                              jmp   .Lcall_prolog_α_301_48
.Lcall_prolog_α_301_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_301_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_301_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_301_51
.Lcall_prolog_α_301_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_301_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_301_53
                                                                              jmp   .Lcall_prolog_α_301_52
.Lcall_prolog_α_301_49: cmp              dl, 80;                              je    .Lcall_prolog_α_301_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_301_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_301_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_301_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_301_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_301_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_301_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_301_51
                                                                              jmp   .Lcall_prolog_α_301_52
.Lcall_prolog_α_301_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_301_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_301_53
.Lcall_prolog_α_301_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_301_54
.Lcall_prolog_α_301_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_301_54
.Lcall_prolog_α_301_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_301_54: mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    n282_call_prolog_α
                                                                              jmp   n259_var_ref_α
n258_call_prolog_β:     mov              r11, 114;                            jmp   n282_call_prolog_α
                        .size            n258_call_prolog_bx, .-n258_call_prolog_bx
                        .type            n259_var_ref_bx, @function
n259_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n260_var_α
                        .size            n259_var_ref_bx, .-n259_var_ref_bx
                        .type            n260_var_bx, @function
n260_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             mov              r11, 116
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 760], rax;          jmp   n261_var_α
                        .size            n260_var_bx, .-n260_var_bx
                        .type            n261_var_bx, @function
n261_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             mov              r11, 117
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 776], rax;          jmp   n262_call_prolog_α
                        .size            n261_var_bx, .-n261_var_bx
                        .type            n262_call_prolog_bx, @function
n262_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_call_prolog_α:     mov              r11, 118
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    n282_call_prolog_α
                                                                              jmp   n263_call_prolog_α
n262_call_prolog_β:     mov              r11, 118;                            jmp   n282_call_prolog_α
                        .size            n262_call_prolog_bx, .-n262_call_prolog_bx
                        .type            n263_call_prolog_bx, @function
n263_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_call_prolog_α:     mov              r11, 119
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    n282_call_prolog_α
                                                                              jmp   n264_var_ref_α
n263_call_prolog_β:     mov              r11, 119;                            jmp   n282_call_prolog_α
                        .size            n263_call_prolog_bx, .-n263_call_prolog_bx
                        .type            n264_var_ref_bx, @function
n264_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n265_var_α
                        .size            n264_var_ref_bx, .-n264_var_ref_bx
                        .type            n265_var_bx, @function
n265_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             mov              r11, 121
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 600], rax;          jmp   n266_var_α
                        .size            n265_var_bx, .-n265_var_bx
                        .type            n266_var_bx, @function
n266_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:             mov              r11, 122
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 616], rax;          jmp   n267_call_prolog_α
                        .size            n266_var_bx, .-n266_var_bx
                        .type            n267_call_prolog_bx, @function
n267_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_call_prolog_α:     mov              r11, 123
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    n282_call_prolog_α
                                                                              jmp   n268_call_prolog_α
n267_call_prolog_β:     mov              r11, 123;                            jmp   n282_call_prolog_α
                        .size            n267_call_prolog_bx, .-n267_call_prolog_bx
                        .type            n268_call_prolog_bx, @function
n268_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_call_prolog_α:     mov              r11, 124
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    n282_call_prolog_α
                                                                              jmp   n269_var_α
n268_call_prolog_β:     mov              r11, 124;                            jmp   n282_call_prolog_α
                        .size            n268_call_prolog_bx, .-n268_call_prolog_bx
                        .type            n269_var_bx, @function
n269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             mov              r11, 125
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 440], rax;          jmp   n270_var_α
                        .size            n269_var_bx, .-n269_var_bx
                        .type            n270_var_bx, @function
n270_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:             mov              r11, 126
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 456], rax;          jmp   n271_call_prolog_α
                        .size            n270_var_bx, .-n270_var_bx
                        .type            n271_call_prolog_bx, @function
n271_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_call_prolog_α:     mov              r11, 127
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n282_call_prolog_α
                                                                              jmp   n272_var_ref_α
n271_call_prolog_β:     mov              r11, 127;                            jmp   n282_call_prolog_α
                        .size            n271_call_prolog_bx, .-n271_call_prolog_bx
                        .type            n272_var_ref_bx, @function
n272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n273_var_α
                        .size            n272_var_ref_bx, .-n272_var_ref_bx
                        .type            n273_var_bx, @function
n273_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             mov              r11, 129
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 360], rax;          jmp   n274_var_α
                        .size            n273_var_bx, .-n273_var_bx
                        .type            n274_var_bx, @function
n274_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             mov              r11, 130
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 376], rax;          jmp   n275_call_prolog_α
                        .size            n274_var_bx, .-n274_var_bx
                        .type            n275_call_prolog_bx, @function
n275_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_call_prolog_α:     mov              r11, 131
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n282_call_prolog_α
                                                                              jmp   n276_call_prolog_α
n275_call_prolog_β:     mov              r11, 131;                            jmp   n282_call_prolog_α
                        .size            n275_call_prolog_bx, .-n275_call_prolog_bx
                        .type            n276_call_prolog_bx, @function
n276_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_call_prolog_α:     mov              r11, 132
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    n282_call_prolog_α
                                                                              jmp   n277_var_α
n276_call_prolog_β:     mov              r11, 132;                            jmp   n282_call_prolog_α
                        .size            n276_call_prolog_bx, .-n276_call_prolog_bx
                        .type            n277_var_bx, @function
n277_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             mov              r11, 133
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 200], rax;          jmp   n278_var_α
                        .size            n277_var_bx, .-n277_var_bx
                        .type            n278_var_bx, @function
n278_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             mov              r11, 134
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 216], rax;          jmp   n279_call_prolog_α
                        .size            n278_var_bx, .-n278_var_bx
                        .type            n279_call_prolog_bx, @function
n279_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_call_prolog_α:     mov              r11, 135
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n282_call_prolog_α
                                                                              jmp   n280_move_label_α
n279_call_prolog_β:     mov              r11, 135;                            jmp   n282_call_prolog_α
                        .size            n279_call_prolog_bx, .-n279_call_prolog_bx
                        .type            n280_move_label_bx, @function
n280_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_move_label_α:      mov              r11, 136
                        lea              rax, [rip + n282_call_prolog_α]
                        mov              qword ptr [rbp + 64], rax;           jmp   nd$2F2_γ
                        .size            n280_move_label_bx, .-n280_move_label_bx
                        .type            n281_disjunction_bx, @function
n281_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_disjunction_α:     mov              r11, 137
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    nd$2F2_ω
                                                                              jmp   rax
n281_disjunction_β:     mov              r11, 137;                            jmp   nd$2F2_ω
                        .size            n281_disjunction_bx, .-n281_disjunction_bx
                        .type            n282_call_prolog_bx, @function
n282_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_call_prolog_α:     mov              r11, 138
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
                        cmp              al, 104;                             je    nd$2F2_ω
                                                                              jmp   nd$2F2_ω
n282_call_prolog_β:     mov              r11, 138;                            jmp   nd$2F2_ω
                        .size            n282_call_prolog_bx, .-n282_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
nd$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
nd$2F2_β:
                                                                              jmp   n281_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
nd$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1304]
                        lea              rsp, [rbp + 1328]
                        mov              rbp, qword ptr [rbp + 1320];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
nd$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1312]
                        lea              rsp, [rbp + 1328]
                        mov              rbp, qword ptr [rbp + 1320];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
nd$2F2_dcα:
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
                        lea              rcx, [rip + .Lnd$2F2_α_341_2]
                        lea              rdx, [rip + .Lnd$2F2_α_341_3];       jmp   FN__nd$2F2
.Lnd$2F2_α_341_2:       pop              r12
                        pop              r12;                                 jmp   r12
.Lnd$2F2_α_341_3:       pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__safe$2F2:
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rcx
                        mov              qword ptr [rsp + 944], rdx
                        mov              qword ptr [rsp + 952], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 928
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
safe$2F2_α_body:
                        lea              rax, [rip + n349_suspend_β]
                        mov              qword ptr [rbp + 848], rax
                        .type            n342_call_prolog_bx, @function
n342_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_call_prolog_α:     mov              r11, 139
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_369_102
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56];           jmp   .Lcall_prolog_α_369_101
.Lcall_prolog_α_369_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_369_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_369_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_369_101
.Lcall_prolog_α_369_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_369_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    safe$2F2_ω
                                                                              jmp   n343_var_ref_α
n342_call_prolog_β:     mov              r11, 139;                            jmp   safe$2F2_ω
                        .size            n342_call_prolog_bx, .-n342_call_prolog_bx
                        .type            n343_var_ref_bx, @function
n343_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n344_var_ref_α
                        .size            n343_var_ref_bx, .-n343_var_ref_bx
                        .type            n344_var_ref_bx, @function
n344_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n345_call_prolog_α
                        .size            n344_var_ref_bx, .-n344_var_ref_bx
                        .type            n345_call_prolog_bx, @function
n345_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_call_prolog_α:     mov              r11, 142
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
.Lcall_prolog_α_374_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_374_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_374_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_374_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_374_40
.Lcall_prolog_α_374_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_374_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_374_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_374_40
.Lcall_prolog_α_374_56: cmp              al, 72;                              jne   .Lcall_prolog_α_374_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_374_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_374_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_374_40
.Lcall_prolog_α_374_41: lea              r9, [rbp + 800]
.Lcall_prolog_α_374_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_374_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_374_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_374_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_374_42
.Lcall_prolog_α_374_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_374_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_374_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_374_42
.Lcall_prolog_α_374_58: cmp              al, 72;                              jne   .Lcall_prolog_α_374_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_374_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_374_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_374_42
.Lcall_prolog_α_374_43: cmp              r8, r9;                              je    .Lcall_prolog_α_374_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_374_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_374_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_374_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_374_44
                                                                              jmp   .Lcall_prolog_α_374_45
.Lcall_prolog_α_374_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_374_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_374_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_374_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_374_53
                                                                              jmp   .Lcall_prolog_α_374_46
.Lcall_prolog_α_374_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_374_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_374_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_374_51
.Lcall_prolog_α_374_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_374_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_374_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_374_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_374_47
                                                                              jmp   .Lcall_prolog_α_374_48
.Lcall_prolog_α_374_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_374_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_374_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_374_51
.Lcall_prolog_α_374_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_374_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_374_53
                                                                              jmp   .Lcall_prolog_α_374_52
.Lcall_prolog_α_374_49: cmp              dl, 80;                              je    .Lcall_prolog_α_374_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_374_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_374_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_374_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_374_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_374_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_374_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_374_51
                                                                              jmp   .Lcall_prolog_α_374_52
.Lcall_prolog_α_374_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_374_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_374_53
.Lcall_prolog_α_374_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_374_54
.Lcall_prolog_α_374_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_374_54
.Lcall_prolog_α_374_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_374_54: mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    n350_call_prolog_α
                                                                              jmp   n346_var_ref_α
n345_call_prolog_β:     mov              r11, 142;                            jmp   n350_call_prolog_α
                        .size            n345_call_prolog_bx, .-n345_call_prolog_bx
                        .type            n346_var_ref_bx, @function
n346_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n347_lit_string_α
                        .size            n346_var_ref_bx, .-n346_var_ref_bx
                        .type            n347_lit_string_bx, @function
n347_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_377_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n348_call_prolog_α
.Llit_string_α_377_0:   .quad            .Llit_string_α_377_0_s
.Llit_string_α_377_0_s: .string          "[]"
                        .size            n347_lit_string_bx, .-n347_lit_string_bx
                        .type            n348_call_prolog_bx, @function
n348_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_call_prolog_α:     mov              r11, 145
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_378_2]
                                                                              jmp   .Lcall_prolog_α_378_3
.Lcall_prolog_α_378_2:  .quad            .Lcall_prolog_α_378_2_s
.Lcall_prolog_α_378_2_s:
                        .string          "[]"
.Lcall_prolog_α_378_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    n350_call_prolog_α
                                                                              jmp   n349_suspend_α
n348_call_prolog_β:     mov              r11, 145;                            jmp   n350_call_prolog_α
                        .size            n348_call_prolog_bx, .-n348_call_prolog_bx
                        .type            n349_suspend_bx, @function
n349_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_suspend_α:         mov              r11, 146
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_380_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 848];          jmp   rax
.Lsuspend_α_380_61:     mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n349_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n349_suspend_β]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax;            jmp   safe$2F2_γ
n349_suspend_β:         mov              r11, 146;                            jmp   n350_call_prolog_α
                        .size            n349_suspend_bx, .-n349_suspend_bx
                        .type            n350_call_prolog_bx, @function
n350_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_call_prolog_α:     mov              r11, 147
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    safe$2F2_ω
                                                                              jmp   n351_var_ref_α
n350_call_prolog_β:     mov              r11, 147;                            jmp   safe$2F2_ω
                        .size            n350_call_prolog_bx, .-n350_call_prolog_bx
                        .type            n351_var_ref_bx, @function
n351_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:         mov              r11, 148
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n352_var_ref_α
                        .size            n351_var_ref_bx, .-n351_var_ref_bx
                        .type            n352_var_ref_bx, @function
n352_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n353_call_prolog_α
                        .size            n352_var_ref_bx, .-n352_var_ref_bx
                        .type            n353_call_prolog_bx, @function
n353_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_call_prolog_α:     mov              r11, 150
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lcall_prolog_α_386_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_386_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_386_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_386_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_386_40
.Lcall_prolog_α_386_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_386_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_386_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_386_40
.Lcall_prolog_α_386_56: cmp              al, 72;                              jne   .Lcall_prolog_α_386_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_386_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_386_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_386_40
.Lcall_prolog_α_386_41: lea              r9, [rbp + 592]
.Lcall_prolog_α_386_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_386_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_386_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_386_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_386_42
.Lcall_prolog_α_386_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_386_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_386_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_386_42
.Lcall_prolog_α_386_58: cmp              al, 72;                              jne   .Lcall_prolog_α_386_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_386_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_386_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_386_42
.Lcall_prolog_α_386_43: cmp              r8, r9;                              je    .Lcall_prolog_α_386_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_386_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_386_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_386_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_386_44
                                                                              jmp   .Lcall_prolog_α_386_45
.Lcall_prolog_α_386_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_386_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_386_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_386_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_386_53
                                                                              jmp   .Lcall_prolog_α_386_46
.Lcall_prolog_α_386_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_386_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_386_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_386_51
.Lcall_prolog_α_386_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_386_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_386_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_386_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_386_47
                                                                              jmp   .Lcall_prolog_α_386_48
.Lcall_prolog_α_386_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_386_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_386_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_386_51
.Lcall_prolog_α_386_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_386_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_386_53
                                                                              jmp   .Lcall_prolog_α_386_52
.Lcall_prolog_α_386_49: cmp              dl, 80;                              je    .Lcall_prolog_α_386_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_386_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_386_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_386_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_386_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_386_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_386_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_386_51
                                                                              jmp   .Lcall_prolog_α_386_52
.Lcall_prolog_α_386_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_386_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_386_53
.Lcall_prolog_α_386_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_386_54
.Lcall_prolog_α_386_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_386_54
.Lcall_prolog_α_386_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_386_54: mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    n368_call_prolog_α
                                                                              jmp   n354_var_ref_α
n353_call_prolog_β:     mov              r11, 150;                            jmp   n368_call_prolog_α
                        .size            n353_call_prolog_bx, .-n353_call_prolog_bx
                        .type            n354_var_ref_bx, @function
n354_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n355_var_ref_α
                        .size            n354_var_ref_bx, .-n354_var_ref_bx
                        .type            n355_var_ref_bx, @function
n355_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n356_var_ref_α
                        .size            n355_var_ref_bx, .-n355_var_ref_bx
                        .type            n356_var_ref_bx, @function
n356_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n357_call_prolog_α
                        .size            n356_var_ref_bx, .-n356_var_ref_bx
                        .type            n357_call_prolog_bx, @function
n357_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_call_prolog_α:     mov              r11, 154
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        lea              r8, [rbp + 480]
.Lcall_prolog_α_393_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_393_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_393_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_393_60
.Lcall_prolog_α_393_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_393_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_393_60
.Lcall_prolog_α_393_63: cmp              al, 72;                              jne   .Lcall_prolog_α_393_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_393_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_393_60
.Lcall_prolog_α_393_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_393_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_393_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_393_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_393_80
                                                                              jmp   .Lcall_prolog_α_393_74
.Lcall_prolog_α_393_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_393_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_393_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_393_73
                        lea              r9, [rbp + 496]
.Lcall_prolog_α_393_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_393_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_393_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_393_64
.Lcall_prolog_α_393_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_393_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_393_64
.Lcall_prolog_α_393_67: cmp              al, 72;                              jne   .Lcall_prolog_α_393_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_393_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_393_64
.Lcall_prolog_α_393_65: lea              rcx, [rbp + 512]
.Lcall_prolog_α_393_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_393_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_393_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_393_68
.Lcall_prolog_α_393_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_393_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_393_68
.Lcall_prolog_α_393_71: cmp              al, 72;                              jne   .Lcall_prolog_α_393_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_393_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_393_68
.Lcall_prolog_α_393_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_393_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_393_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_393_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_393_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_393_75
                                                                              jmp   .Lcall_prolog_α_393_72
.Lcall_prolog_α_393_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_393_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_393_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_393_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_393_76
                                                                              jmp   .Lcall_prolog_α_393_72
.Lcall_prolog_α_393_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_393_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_393_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_393_77
.Lcall_prolog_α_393_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_393_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_393_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_393_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_393_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_393_72
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
                        lea              r9, [rbp + 496]
.Lcall_prolog_α_393_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_393_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_393_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_393_81
.Lcall_prolog_α_393_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_393_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_393_81
.Lcall_prolog_α_393_84: cmp              al, 72;                              jne   .Lcall_prolog_α_393_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_393_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_393_81
.Lcall_prolog_α_393_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_393_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_393_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_393_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_393_85
                                                                              jmp   .Lcall_prolog_α_393_86
.Lcall_prolog_α_393_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_393_87
.Lcall_prolog_α_393_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_393_87: lea              rcx, [rbp + 512]
.Lcall_prolog_α_393_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_393_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_393_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_393_88
.Lcall_prolog_α_393_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_393_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_393_88
.Lcall_prolog_α_393_91: cmp              al, 72;                              jne   .Lcall_prolog_α_393_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_393_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_393_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_393_88
.Lcall_prolog_α_393_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_393_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_393_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_393_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_393_92
                                                                              jmp   .Lcall_prolog_α_393_93
.Lcall_prolog_α_393_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_393_94
.Lcall_prolog_α_393_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_393_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_393_77
.Lcall_prolog_α_393_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_393_77
.Lcall_prolog_α_393_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_393_77: mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    n368_call_prolog_α
                                                                              jmp   n358_var_ref_α
n357_call_prolog_β:     mov              r11, 154;                            jmp   n368_call_prolog_α
                        .size            n357_call_prolog_bx, .-n357_call_prolog_bx
                        .type            n358_var_ref_bx, @function
n358_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n359_var_ref_α
                        .size            n358_var_ref_bx, .-n358_var_ref_bx
                        .type            n359_var_ref_bx, @function
n359_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n360_call_proc_staged_α
                        .size            n359_var_ref_bx, .-n359_var_ref_bx
                        .type            n360_call_proc_staged_bx, @function
n360_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_proc_staged_α:
                        mov              r11, 157
                        mov              qword ptr [rbp + 384], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_399_200
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_399_201
.Lcall_proc_staged_α_399_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_399_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_399_202
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_399_203
.Lcall_proc_staged_α_399_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_399_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_399_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_399_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_399_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_399_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_399_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_399_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 392], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_399_5
                        mov              qword ptr [rbp + 384], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_399_2
.Lcall_proc_staged_α_399_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_399_2
.Lcall_proc_staged_α_399_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_399_6
                        mov              qword ptr [rbp + 384], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_399_2
.Lcall_proc_staged_α_399_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_399_2
.Lcall_proc_staged_α_399_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_399_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n368_call_prolog_α
.Lcall_proc_staged_α_399_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_399_29
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
.Lcall_proc_staged_α_399_29:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    n368_call_prolog_α
                                                                              jmp   n361_lit_string_α
n360_call_proc_staged_β:
                        mov              r11, 157
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 384], 0
                        lea              rdi, [rbp + 400]
                        lea              rsi, [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n368_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              ecx, 48
                        mov              r8d, 944
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n368_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_399_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_399_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_399_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_399_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_399_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    n368_call_prolog_α
                                                                              jmp   n361_lit_string_α
.Lcall_proc_staged_α_399_0:
                        .quad            .Lcall_proc_staged_α_399_0_s
.Lcall_proc_staged_α_399_0_s:
                        .string          "test/2"
                        .size            n360_call_proc_staged_bx, .-n360_call_proc_staged_bx
                        .type            n361_lit_string_bx, @function
n361_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_400_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n362_var_ref_α
.Llit_string_α_400_0:   .quad            .Llit_string_α_400_0_s
.Llit_string_α_400_0_s: .string          "."
                        .size            n361_lit_string_bx, .-n361_lit_string_bx
                        .type            n362_var_ref_bx, @function
n362_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n363_var_ref_α
                        .size            n362_var_ref_bx, .-n362_var_ref_bx
                        .type            n363_var_ref_bx, @function
n363_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n364_call_prolog_α
                        .size            n363_var_ref_bx, .-n363_var_ref_bx
                        .type            n364_call_prolog_bx, @function
n364_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_call_prolog_α:     mov              r11, 161
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    n368_call_prolog_α
                                                                              jmp   n365_var_ref_α
n364_call_prolog_β:     mov              r11, 161;                            jmp   n368_call_prolog_α
                        .size            n364_call_prolog_bx, .-n364_call_prolog_bx
                        .type            n365_var_ref_bx, @function
n365_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n366_call_proc_staged_α
                        .size            n365_var_ref_bx, .-n365_var_ref_bx
                        .type            n366_call_proc_staged_bx, @function
n366_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_call_proc_staged_α:
                        mov              r11, 163
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_409_200
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_409_201
.Lcall_proc_staged_α_409_200:
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
.Lcall_proc_staged_α_409_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_409_202
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_409_203
.Lcall_proc_staged_α_409_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_409_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_409_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_409_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_409_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_409_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_409_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_409_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 168], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_409_5
                        mov              qword ptr [rbp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_409_2
.Lcall_proc_staged_α_409_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_409_2
.Lcall_proc_staged_α_409_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_409_6
                        mov              qword ptr [rbp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_409_2
.Lcall_proc_staged_α_409_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_409_2
.Lcall_proc_staged_α_409_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_409_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n360_call_proc_staged_β
.Lcall_proc_staged_α_409_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_409_29
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
.Lcall_proc_staged_α_409_29:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n360_call_proc_staged_β
                                                                              jmp   n367_suspend_α
n366_call_proc_staged_β:
                        mov              r11, 163
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 160], 0
                        lea              rdi, [rbp + 176]
                        lea              rsi, [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n360_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              ecx, 48
                        mov              r8d, 848
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
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
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
                        test             rax, rax;                            je    n360_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_409_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_409_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_409_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_409_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_409_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n360_call_proc_staged_β
                                                                              jmp   n367_suspend_α
.Lcall_proc_staged_α_409_0:
                        .quad            .Lcall_proc_staged_α_409_0_s
.Lcall_proc_staged_α_409_0_s:
                        .string          "safe/2"
                        .size            n366_call_proc_staged_bx, .-n366_call_proc_staged_bx
                        .type            n367_suspend_bx, @function
n367_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_suspend_α:         mov              r11, 164
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_411_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 848];          jmp   rax
.Lsuspend_α_411_61:     mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n367_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n367_suspend_β]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax;            jmp   safe$2F2_γ
n367_suspend_β:         mov              r11, 164;                            jmp   n366_call_proc_staged_β
                        .size            n367_suspend_bx, .-n367_suspend_bx
                        .type            n368_call_prolog_bx, @function
n368_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_call_prolog_α:     mov              r11, 165
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
                        cmp              al, 104;                             je    safe$2F2_ω
                                                                              jmp   safe$2F2_ω
n368_call_prolog_β:     mov              r11, 165;                            jmp   safe$2F2_ω
                        .size            n368_call_prolog_bx, .-n368_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
safe$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
safe$2F2_β:
                                                                              jmp   n349_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
safe$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lsafe$2F2_α_412_50
                        mov              qword ptr [rsp + 848], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 848];          jmp   rax
.Lsafe$2F2_α_412_50:    mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 936]
                        lea              rsp, [rbp + 960]
                        mov              rbp, qword ptr [rbp + 952];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
safe$2F2_ω:
                        mov              rcx, qword ptr [rsp + 944]
                        lea              rsp, [rbp + 960]
                        mov              rbp, qword ptr [rbp + 952];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__perm$2F2:
                        sub              rsp, 1008
                        mov              qword ptr [rsp + 984], rcx
                        mov              qword ptr [rsp + 992], rdx
                        mov              qword ptr [rsp + 1000], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 880
                        mov              edx, 976
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
perm$2F2_α_body:
                        lea              rax, [rip + n424_suspend_β]
                        mov              qword ptr [rbp + 880], rax
                        .type            n413_call_prolog_bx, @function
n413_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_call_prolog_α:     mov              r11, 166
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_442_102
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56];           jmp   .Lcall_prolog_α_442_101
.Lcall_prolog_α_442_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_442_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_442_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_442_101
.Lcall_prolog_α_442_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_442_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    perm$2F2_ω
                                                                              jmp   n414_var_ref_α
n413_call_prolog_β:     mov              r11, 166;                            jmp   perm$2F2_ω
                        .size            n413_call_prolog_bx, .-n413_call_prolog_bx
                        .type            n414_var_ref_bx, @function
n414_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n415_lit_integer_α
                        .size            n414_var_ref_bx, .-n414_var_ref_bx
                        .type            n415_lit_integer_bx, @function
n415_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rbp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_445_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n416_lit_string_α
.Llit_integer_α_445_0:  .quad            2
                        .size            n415_lit_integer_bx, .-n415_lit_integer_bx
                        .type            n416_lit_string_bx, @function
n416_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_446_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n417_call_prolog_α
.Llit_string_α_446_0:   .quad            .Llit_string_α_446_0_s
.Llit_string_α_446_0_s: .string          "[]"
                        .size            n416_lit_string_bx, .-n416_lit_string_bx
                        .type            n417_call_prolog_bx, @function
n417_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_call_prolog_α:     mov              r11, 170
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        lea              r8, [rbp + 784]
.Lcall_prolog_α_447_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_447_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_447_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_447_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_447_110
.Lcall_prolog_α_447_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_447_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_447_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_447_110
.Lcall_prolog_α_447_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_447_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_447_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_447_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_447_110
.Lcall_prolog_α_447_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_447_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_447_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_447_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_447_114
                                                                              jmp   .Lcall_prolog_α_447_118
.Lcall_prolog_α_447_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_447_115
                        cmp              al, 3;                               je    .Lcall_prolog_α_447_114
                        cmp              al, 2;                               jne   .Lcall_prolog_α_447_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_447_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_447_114
                                                                              jmp   .Lcall_prolog_α_447_116
.Lcall_prolog_α_447_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_447_117
.Lcall_prolog_α_447_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_447_117
.Lcall_prolog_α_447_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_447_117:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    n426_var_ref_α
                                                                              jmp   n418_var_ref_α
n417_call_prolog_β:     mov              r11, 170;                            jmp   n426_var_ref_α
                        .size            n417_call_prolog_bx, .-n417_call_prolog_bx
                        .type            n418_var_ref_bx, @function
n418_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n419_lit_string_α
                        .size            n418_var_ref_bx, .-n418_var_ref_bx
                        .type            n419_lit_string_bx, @function
n419_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:      mov              r11, 172
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_450_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n420_call_prolog_α
.Llit_string_α_450_0:   .quad            .Llit_string_α_450_0_s
.Llit_string_α_450_0_s: .string          "[]"
                        .size            n419_lit_string_bx, .-n419_lit_string_bx
                        .type            n420_call_prolog_bx, @function
n420_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_call_prolog_α:     mov              r11, 173
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_451_2]
                                                                              jmp   .Lcall_prolog_α_451_3
.Lcall_prolog_α_451_2:  .quad            .Lcall_prolog_α_451_2_s
.Lcall_prolog_α_451_2_s:
                        .string          "[]"
.Lcall_prolog_α_451_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    n425_call_prolog_α
                                                                              jmp   n421_var_ref_α
n420_call_prolog_β:     mov              r11, 173;                            jmp   n425_call_prolog_α
                        .size            n420_call_prolog_bx, .-n420_call_prolog_bx
                        .type            n421_var_ref_bx, @function
n421_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n422_lit_string_α
                        .size            n421_var_ref_bx, .-n421_var_ref_bx
                        .type            n422_lit_string_bx, @function
n422_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rbp + 672], 2             # result
                        mov              dword ptr [rbp + 676], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_454_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n423_call_prolog_α
.Llit_string_α_454_0:   .quad            .Llit_string_α_454_0_s
.Llit_string_α_454_0_s: .string          "[]"
                        .size            n422_lit_string_bx, .-n422_lit_string_bx
                        .type            n423_call_prolog_bx, @function
n423_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_call_prolog_α:     mov              r11, 176
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_455_2]
                                                                              jmp   .Lcall_prolog_α_455_3
.Lcall_prolog_α_455_2:  .quad            .Lcall_prolog_α_455_2_s
.Lcall_prolog_α_455_2_s:
                        .string          "[]"
.Lcall_prolog_α_455_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n425_call_prolog_α
                                                                              jmp   n424_suspend_α
n423_call_prolog_β:     mov              r11, 176;                            jmp   n425_call_prolog_α
                        .size            n423_call_prolog_bx, .-n423_call_prolog_bx
                        .type            n424_suspend_bx, @function
n424_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_suspend_α:         mov              r11, 177
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_457_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 880];          jmp   rax
.Lsuspend_α_457_61:     mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n424_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n424_suspend_β]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax;            jmp   perm$2F2_γ
n424_suspend_β:         mov              r11, 177;                            jmp   n425_call_prolog_α
                        .size            n424_suspend_bx, .-n424_suspend_bx
                        .type            n425_call_prolog_bx, @function
n425_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_call_prolog_α:     mov              r11, 178
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    perm$2F2_ω
                                                                              jmp   n426_var_ref_α
n425_call_prolog_β:     mov              r11, 178;                            jmp   perm$2F2_ω
                        .size            n425_call_prolog_bx, .-n425_call_prolog_bx
                        .type            n426_var_ref_bx, @function
n426_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n427_var_ref_α
                        .size            n426_var_ref_bx, .-n426_var_ref_bx
                        .type            n427_var_ref_bx, @function
n427_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n428_call_prolog_α
                        .size            n427_var_ref_bx, .-n427_var_ref_bx
                        .type            n428_call_prolog_bx, @function
n428_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_call_prolog_α:     mov              r11, 181
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lcall_prolog_α_463_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_463_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_463_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_463_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_463_40
.Lcall_prolog_α_463_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_463_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_463_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_463_40
.Lcall_prolog_α_463_56: cmp              al, 72;                              jne   .Lcall_prolog_α_463_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_463_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_463_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_463_40
.Lcall_prolog_α_463_41: lea              r9, [rbp + 512]
.Lcall_prolog_α_463_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_463_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_463_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_463_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_463_42
.Lcall_prolog_α_463_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_463_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_463_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_463_42
.Lcall_prolog_α_463_58: cmp              al, 72;                              jne   .Lcall_prolog_α_463_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_463_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_463_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_463_42
.Lcall_prolog_α_463_43: cmp              r8, r9;                              je    .Lcall_prolog_α_463_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_463_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_463_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_463_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_463_44
                                                                              jmp   .Lcall_prolog_α_463_45
.Lcall_prolog_α_463_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_463_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_463_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_463_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_463_53
                                                                              jmp   .Lcall_prolog_α_463_46
.Lcall_prolog_α_463_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_463_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_463_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_463_51
.Lcall_prolog_α_463_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_463_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_463_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_463_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_463_47
                                                                              jmp   .Lcall_prolog_α_463_48
.Lcall_prolog_α_463_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_463_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_463_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_463_51
.Lcall_prolog_α_463_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_463_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_463_53
                                                                              jmp   .Lcall_prolog_α_463_52
.Lcall_prolog_α_463_49: cmp              dl, 80;                              je    .Lcall_prolog_α_463_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_463_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_463_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_463_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_463_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_463_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_463_51
                                                                              jmp   .Lcall_prolog_α_463_52
.Lcall_prolog_α_463_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_463_53
.Lcall_prolog_α_463_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_463_54
.Lcall_prolog_α_463_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_463_54
.Lcall_prolog_α_463_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_463_54: mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n441_call_prolog_α
                                                                              jmp   n429_var_ref_α
n428_call_prolog_β:     mov              r11, 181;                            jmp   n441_call_prolog_α
                        .size            n428_call_prolog_bx, .-n428_call_prolog_bx
                        .type            n429_var_ref_bx, @function
n429_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_var_ref_α:         mov              r11, 182
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n430_var_ref_α
                        .size            n429_var_ref_bx, .-n429_var_ref_bx
                        .type            n430_var_ref_bx, @function
n430_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n431_var_ref_α
                        .size            n430_var_ref_bx, .-n430_var_ref_bx
                        .type            n431_var_ref_bx, @function
n431_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:         mov              r11, 184
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n432_call_prolog_α
                        .size            n431_var_ref_bx, .-n431_var_ref_bx
                        .type            n432_call_prolog_bx, @function
n432_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_call_prolog_α:     mov              r11, 185
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lcall_prolog_α_470_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_470_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_470_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_470_60
.Lcall_prolog_α_470_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_470_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_470_60
.Lcall_prolog_α_470_63: cmp              al, 72;                              jne   .Lcall_prolog_α_470_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_470_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_470_60
.Lcall_prolog_α_470_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_470_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_470_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_470_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_470_80
                                                                              jmp   .Lcall_prolog_α_470_74
.Lcall_prolog_α_470_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_470_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_470_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_470_73
                        lea              r9, [rbp + 416]
.Lcall_prolog_α_470_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_470_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_470_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_470_64
.Lcall_prolog_α_470_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_470_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_470_64
.Lcall_prolog_α_470_67: cmp              al, 72;                              jne   .Lcall_prolog_α_470_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_470_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_470_64
.Lcall_prolog_α_470_65: lea              rcx, [rbp + 432]
.Lcall_prolog_α_470_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_470_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_470_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_470_68
.Lcall_prolog_α_470_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_470_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_470_68
.Lcall_prolog_α_470_71: cmp              al, 72;                              jne   .Lcall_prolog_α_470_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_470_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_470_68
.Lcall_prolog_α_470_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_470_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_470_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_470_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_470_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_470_75
                                                                              jmp   .Lcall_prolog_α_470_72
.Lcall_prolog_α_470_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_470_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_470_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_470_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_470_76
                                                                              jmp   .Lcall_prolog_α_470_72
.Lcall_prolog_α_470_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_470_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_470_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_470_77
.Lcall_prolog_α_470_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_470_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_470_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_470_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_470_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_470_72
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
                        lea              r9, [rbp + 416]
.Lcall_prolog_α_470_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_470_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_470_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_470_81
.Lcall_prolog_α_470_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_470_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_470_81
.Lcall_prolog_α_470_84: cmp              al, 72;                              jne   .Lcall_prolog_α_470_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_470_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_470_81
.Lcall_prolog_α_470_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_470_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_470_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_470_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_470_85
                                                                              jmp   .Lcall_prolog_α_470_86
.Lcall_prolog_α_470_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_470_87
.Lcall_prolog_α_470_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_470_87: lea              rcx, [rbp + 432]
.Lcall_prolog_α_470_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_470_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_470_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_470_88
.Lcall_prolog_α_470_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_470_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_470_88
.Lcall_prolog_α_470_91: cmp              al, 72;                              jne   .Lcall_prolog_α_470_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_470_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_470_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_470_88
.Lcall_prolog_α_470_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_470_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_470_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_470_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_470_92
                                                                              jmp   .Lcall_prolog_α_470_93
.Lcall_prolog_α_470_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_470_94
.Lcall_prolog_α_470_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_470_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_470_77
.Lcall_prolog_α_470_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_470_77
.Lcall_prolog_α_470_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_470_77: mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n441_call_prolog_α
                                                                              jmp   n433_var_ref_α
n432_call_prolog_β:     mov              r11, 185;                            jmp   n441_call_prolog_α
                        .size            n432_call_prolog_bx, .-n432_call_prolog_bx
                        .type            n433_var_ref_bx, @function
n433_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n434_var_ref_α
                        .size            n433_var_ref_bx, .-n433_var_ref_bx
                        .type            n434_var_ref_bx, @function
n434_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n435_var_ref_α
                        .size            n434_var_ref_bx, .-n434_var_ref_bx
                        .type            n435_var_ref_bx, @function
n435_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n436_call_proc_staged_α
                        .size            n435_var_ref_bx, .-n435_var_ref_bx
                        .type            n436_call_proc_staged_bx, @function
n436_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_call_proc_staged_α:
                        mov              r11, 189
                        mov              qword ptr [rbp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_478_200
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_478_201
.Lcall_proc_staged_α_478_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
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
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_478_203
.Lcall_proc_staged_α_478_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_478_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_478_204
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_478_205
.Lcall_proc_staged_α_478_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_478_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_478_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_478_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_478_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_478_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_478_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_478_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 296], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_478_5
                        mov              qword ptr [rbp + 288], 1
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
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_478_6
                        mov              qword ptr [rbp + 288], 1
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n441_call_prolog_α
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
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
.Lcall_proc_staged_α_478_29:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    n441_call_prolog_α
                                                                              jmp   n437_var_ref_α
n436_call_proc_staged_β:
                        mov              r11, 189
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 288], 0
                        lea              rdi, [rbp + 304]
                        lea              rsi, [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n441_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
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
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
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
                        test             rax, rax;                            je    n441_call_prolog_α
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
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    n441_call_prolog_α
                                                                              jmp   n437_var_ref_α
.Lcall_proc_staged_α_478_0:
                        .quad            .Lcall_proc_staged_α_478_0_s
.Lcall_proc_staged_α_478_0_s:
                        .string          "sel/3"
                        .size            n436_call_proc_staged_bx, .-n436_call_proc_staged_bx
                        .type            n437_var_ref_bx, @function
n437_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:         mov              r11, 190
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n438_var_ref_α
                        .size            n437_var_ref_bx, .-n437_var_ref_bx
                        .type            n438_var_ref_bx, @function
n438_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n439_call_proc_staged_α
                        .size            n438_var_ref_bx, .-n438_var_ref_bx
                        .type            n439_call_proc_staged_bx, @function
n439_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_call_proc_staged_α:
                        mov              r11, 192
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_484_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_484_201
.Lcall_proc_staged_α_484_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_484_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_484_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_484_203
.Lcall_proc_staged_α_484_202:
                        mov              edi, 1
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
.Lcall_proc_staged_α_484_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_484_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_484_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_484_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_484_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_484_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_484_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 168], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_484_5
                        mov              qword ptr [rbp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_484_2
.Lcall_proc_staged_α_484_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_484_2
.Lcall_proc_staged_α_484_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_484_6
                        mov              qword ptr [rbp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_484_2
.Lcall_proc_staged_α_484_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_484_2
.Lcall_proc_staged_α_484_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_484_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n436_call_proc_staged_β
.Lcall_proc_staged_α_484_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_484_29
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
.Lcall_proc_staged_α_484_29:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n436_call_proc_staged_β
                                                                              jmp   n440_suspend_α
n439_call_proc_staged_β:
                        mov              r11, 192
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 160], 0
                        lea              rdi, [rbp + 176]
                        lea              rsi, [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n436_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              ecx, 48
                        mov              r8d, 880
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
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
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n436_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_484_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_484_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_484_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_484_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_484_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n436_call_proc_staged_β
                                                                              jmp   n440_suspend_α
.Lcall_proc_staged_α_484_0:
                        .quad            .Lcall_proc_staged_α_484_0_s
.Lcall_proc_staged_α_484_0_s:
                        .string          "perm/2"
                        .size            n439_call_proc_staged_bx, .-n439_call_proc_staged_bx
                        .type            n440_suspend_bx, @function
n440_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_suspend_α:         mov              r11, 193
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_486_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 880];          jmp   rax
.Lsuspend_α_486_61:     mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n440_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n440_suspend_β]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax;            jmp   perm$2F2_γ
n440_suspend_β:         mov              r11, 193;                            jmp   n439_call_proc_staged_β
                        .size            n440_suspend_bx, .-n440_suspend_bx
                        .type            n441_call_prolog_bx, @function
n441_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_call_prolog_α:     mov              r11, 194
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
                        cmp              al, 104;                             je    perm$2F2_ω
                                                                              jmp   perm$2F2_ω
n441_call_prolog_β:     mov              r11, 194;                            jmp   perm$2F2_ω
                        .size            n441_call_prolog_bx, .-n441_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
perm$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
perm$2F2_β:
                                                                              jmp   n424_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
perm$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lperm$2F2_α_487_50
                        mov              qword ptr [rsp + 880], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 880];          jmp   rax
.Lperm$2F2_α_487_50:    mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 984]
                        lea              rsp, [rbp + 1008]
                        mov              rbp, qword ptr [rbp + 1000];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
perm$2F2_ω:
                        mov              rcx, qword ptr [rsp + 992]
                        lea              rsp, [rbp + 1008]
                        mov              rbp, qword ptr [rbp + 1000];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pair$2F3:
                        sub              rsp, 1376
                        mov              qword ptr [rsp + 1352], rcx
                        mov              qword ptr [rsp + 1360], rdx
                        mov              qword ptr [rsp + 1368], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1232
                        mov              edx, 1344
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
pair$2F3_α_body:
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rbp + 1232], rax
                        .type            n488_call_prolog_bx, @function
n488_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n488_call_prolog_α:     mov              r11, 195
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_529_102
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72];           jmp   .Lcall_prolog_α_529_101
.Lcall_prolog_α_529_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_529_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_529_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_529_101
.Lcall_prolog_α_529_100:
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
.Lcall_prolog_α_529_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    pair$2F3_ω
                                                                              jmp   n489_var_ref_α
n488_call_prolog_β:     mov              r11, 195;                            jmp   pair$2F3_ω
                        .size            n488_call_prolog_bx, .-n488_call_prolog_bx
                        .type            n489_var_ref_bx, @function
n489_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n489_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n490_lit_integer_α
                        .size            n489_var_ref_bx, .-n489_var_ref_bx
                        .type            n490_lit_integer_bx, @function
n490_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_integer_α:     mov              r11, 197
                        mov              qword ptr [rbp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_532_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n491_lit_string_α
.Llit_integer_α_532_0:  .quad            2
                        .size            n490_lit_integer_bx, .-n490_lit_integer_bx
                        .type            n491_lit_string_bx, @function
n491_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:      mov              r11, 198
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_533_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n492_call_prolog_α
.Llit_string_α_533_0:   .quad            .Llit_string_α_533_0_s
.Llit_string_α_533_0_s: .string          "[]"
                        .size            n491_lit_string_bx, .-n491_lit_string_bx
                        .type            n492_call_prolog_bx, @function
n492_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n492_call_prolog_α:     mov              r11, 199
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        lea              r8, [rbp + 1136]
.Lcall_prolog_α_534_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_534_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_534_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_534_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_534_110
.Lcall_prolog_α_534_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_534_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_534_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_534_110
.Lcall_prolog_α_534_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_534_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_534_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_534_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_534_110
.Lcall_prolog_α_534_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_534_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_534_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_534_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_534_114
                                                                              jmp   .Lcall_prolog_α_534_118
.Lcall_prolog_α_534_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_534_115
                        cmp              al, 3;                               je    .Lcall_prolog_α_534_114
                        cmp              al, 2;                               jne   .Lcall_prolog_α_534_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_534_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_534_114
                                                                              jmp   .Lcall_prolog_α_534_116
.Lcall_prolog_α_534_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_534_117
.Lcall_prolog_α_534_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_534_117
.Lcall_prolog_α_534_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_534_117:
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              al, 104;                             je    n504_var_ref_α
                                                                              jmp   n493_var_ref_α
n492_call_prolog_β:     mov              r11, 199;                            jmp   n504_var_ref_α
                        .size            n492_call_prolog_bx, .-n492_call_prolog_bx
                        .type            n493_var_ref_bx, @function
n493_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n494_lit_string_α
                        .size            n493_var_ref_bx, .-n493_var_ref_bx
                        .type            n494_lit_string_bx, @function
n494_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:      mov              r11, 201
                        mov              qword ptr [rbp + 1104], 2            # result
                        mov              dword ptr [rbp + 1108], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_537_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n495_call_prolog_α
.Llit_string_α_537_0:   .quad            .Llit_string_α_537_0_s
.Llit_string_α_537_0_s: .string          "[]"
                        .size            n494_lit_string_bx, .-n494_lit_string_bx
                        .type            n495_call_prolog_bx, @function
n495_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n495_call_prolog_α:     mov              r11, 202
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_538_2]
                                                                              jmp   .Lcall_prolog_α_538_3
.Lcall_prolog_α_538_2:  .quad            .Lcall_prolog_α_538_2_s
.Lcall_prolog_α_538_2_s:
                        .string          "[]"
.Lcall_prolog_α_538_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              al, 104;                             je    n503_call_prolog_α
                                                                              jmp   n496_var_ref_α
n495_call_prolog_β:     mov              r11, 202;                            jmp   n503_call_prolog_α
                        .size            n495_call_prolog_bx, .-n495_call_prolog_bx
                        .type            n496_var_ref_bx, @function
n496_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n497_lit_string_α
                        .size            n496_var_ref_bx, .-n496_var_ref_bx
                        .type            n497_lit_string_bx, @function
n497_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:      mov              r11, 204
                        mov              qword ptr [rbp + 1024], 2            # result
                        mov              dword ptr [rbp + 1028], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_541_0]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n498_call_prolog_α
.Llit_string_α_541_0:   .quad            .Llit_string_α_541_0_s
.Llit_string_α_541_0_s: .string          "[]"
                        .size            n497_lit_string_bx, .-n497_lit_string_bx
                        .type            n498_call_prolog_bx, @function
n498_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n498_call_prolog_α:     mov              r11, 205
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_542_2]
                                                                              jmp   .Lcall_prolog_α_542_3
.Lcall_prolog_α_542_2:  .quad            .Lcall_prolog_α_542_2_s
.Lcall_prolog_α_542_2_s:
                        .string          "[]"
.Lcall_prolog_α_542_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              al, 104;                             je    n503_call_prolog_α
                                                                              jmp   n499_var_ref_α
n498_call_prolog_β:     mov              r11, 205;                            jmp   n503_call_prolog_α
                        .size            n498_call_prolog_bx, .-n498_call_prolog_bx
                        .type            n499_var_ref_bx, @function
n499_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n500_lit_string_α
                        .size            n499_var_ref_bx, .-n499_var_ref_bx
                        .type            n500_lit_string_bx, @function
n500_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n500_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_545_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n501_call_prolog_α
.Llit_string_α_545_0:   .quad            .Llit_string_α_545_0_s
.Llit_string_α_545_0_s: .string          "[]"
                        .size            n500_lit_string_bx, .-n500_lit_string_bx
                        .type            n501_call_prolog_bx, @function
n501_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n501_call_prolog_α:     mov              r11, 208
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_546_2]
                                                                              jmp   .Lcall_prolog_α_546_3
.Lcall_prolog_α_546_2:  .quad            .Lcall_prolog_α_546_2_s
.Lcall_prolog_α_546_2_s:
                        .string          "[]"
.Lcall_prolog_α_546_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    n503_call_prolog_α
                                                                              jmp   n502_suspend_α
n501_call_prolog_β:     mov              r11, 208;                            jmp   n503_call_prolog_α
                        .size            n501_call_prolog_bx, .-n501_call_prolog_bx
                        .type            n502_suspend_bx, @function
n502_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n502_suspend_α:         mov              r11, 209
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_548_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1232];         jmp   rax
.Lsuspend_α_548_61:     mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rip + n502_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax;            jmp   pair$2F3_γ
n502_suspend_β:         mov              r11, 209;                            jmp   n503_call_prolog_α
                        .size            n502_suspend_bx, .-n502_suspend_bx
                        .type            n503_call_prolog_bx, @function
n503_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n503_call_prolog_α:     mov              r11, 210
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    pair$2F3_ω
                                                                              jmp   n504_var_ref_α
n503_call_prolog_β:     mov              r11, 210;                            jmp   pair$2F3_ω
                        .size            n503_call_prolog_bx, .-n503_call_prolog_bx
                        .type            n504_var_ref_bx, @function
n504_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n505_lit_integer_α
                        .size            n504_var_ref_bx, .-n504_var_ref_bx
                        .type            n505_lit_integer_bx, @function
n505_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_integer_α:     mov              r11, 212
                        mov              qword ptr [rbp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_552_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n506_lit_integer_α
.Llit_integer_α_552_0:  .quad            3
                        .size            n505_lit_integer_bx, .-n505_lit_integer_bx
                        .type            n506_lit_integer_bx, @function
n506_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_integer_α:     mov              r11, 213
                        mov              qword ptr [rbp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_553_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n507_call_prolog_α
.Llit_integer_α_553_0:  .quad            0
                        .size            n506_lit_integer_bx, .-n506_lit_integer_bx
                        .type            n507_call_prolog_bx, @function
n507_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_call_prolog_α:     mov              r11, 214
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lcall_prolog_α_554_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_554_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_554_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_554_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_554_110
.Lcall_prolog_α_554_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_554_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_554_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_554_110
.Lcall_prolog_α_554_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_554_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_554_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_554_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_554_110
.Lcall_prolog_α_554_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_554_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_554_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_554_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_554_114
                                                                              jmp   .Lcall_prolog_α_554_118
.Lcall_prolog_α_554_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lcall_prolog_α_554_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lcall_prolog_α_554_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lcall_prolog_α_554_115
                                                                              jmp   .Lcall_prolog_α_554_114
.Lcall_prolog_α_554_119:
                        cmp              al, 3;                               jne   .Lcall_prolog_α_554_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_554_114
                                                                              jmp   .Lcall_prolog_α_554_115
.Lcall_prolog_α_554_120:
                        cmp              al, 2;                               jne   .Lcall_prolog_α_554_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_554_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_554_114
                                                                              jmp   .Lcall_prolog_α_554_115
.Lcall_prolog_α_554_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_554_117
.Lcall_prolog_α_554_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_554_117
.Lcall_prolog_α_554_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_554_117:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    n528_call_prolog_α
                                                                              jmp   n508_var_ref_α
n507_call_prolog_β:     mov              r11, 214;                            jmp   n528_call_prolog_α
                        .size            n507_call_prolog_bx, .-n507_call_prolog_bx
                        .type            n508_var_ref_bx, @function
n508_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:         mov              r11, 215
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n509_var_ref_α
                        .size            n508_var_ref_bx, .-n508_var_ref_bx
                        .type            n509_var_ref_bx, @function
n509_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n510_var_ref_α
                        .size            n509_var_ref_bx, .-n509_var_ref_bx
                        .type            n510_var_ref_bx, @function
n510_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_var_ref_α:         mov              r11, 217
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n511_call_prolog_α
                        .size            n510_var_ref_bx, .-n510_var_ref_bx
                        .type            n511_call_prolog_bx, @function
n511_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_call_prolog_α:     mov              r11, 218
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        lea              r8, [rbp + 640]
.Lcall_prolog_α_561_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_561_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_561_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_561_60
.Lcall_prolog_α_561_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_561_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_561_60
.Lcall_prolog_α_561_63: cmp              al, 72;                              jne   .Lcall_prolog_α_561_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_561_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_561_60
.Lcall_prolog_α_561_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_561_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_561_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_561_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_561_80
                                                                              jmp   .Lcall_prolog_α_561_74
.Lcall_prolog_α_561_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_561_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_561_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_561_73
                        lea              r9, [rbp + 656]
.Lcall_prolog_α_561_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_561_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_561_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_561_64
.Lcall_prolog_α_561_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_561_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_561_64
.Lcall_prolog_α_561_67: cmp              al, 72;                              jne   .Lcall_prolog_α_561_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_561_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_561_64
.Lcall_prolog_α_561_65: lea              rcx, [rbp + 672]
.Lcall_prolog_α_561_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_561_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_561_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_561_68
.Lcall_prolog_α_561_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_561_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_561_68
.Lcall_prolog_α_561_71: cmp              al, 72;                              jne   .Lcall_prolog_α_561_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_561_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_561_68
.Lcall_prolog_α_561_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_561_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_561_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_561_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_561_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_561_75
                                                                              jmp   .Lcall_prolog_α_561_72
.Lcall_prolog_α_561_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_561_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_561_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_561_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_561_76
                                                                              jmp   .Lcall_prolog_α_561_72
.Lcall_prolog_α_561_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_561_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_561_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_561_77
.Lcall_prolog_α_561_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_561_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_561_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_561_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_561_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_561_72
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
                        lea              r9, [rbp + 656]
.Lcall_prolog_α_561_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_561_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_561_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_561_81
.Lcall_prolog_α_561_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_561_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_561_81
.Lcall_prolog_α_561_84: cmp              al, 72;                              jne   .Lcall_prolog_α_561_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_561_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_561_81
.Lcall_prolog_α_561_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_561_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_561_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_561_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_561_85
                                                                              jmp   .Lcall_prolog_α_561_86
.Lcall_prolog_α_561_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_561_87
.Lcall_prolog_α_561_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_561_87: lea              rcx, [rbp + 672]
.Lcall_prolog_α_561_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_561_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_561_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_561_88
.Lcall_prolog_α_561_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_561_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_561_88
.Lcall_prolog_α_561_91: cmp              al, 72;                              jne   .Lcall_prolog_α_561_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_561_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_561_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_561_88
.Lcall_prolog_α_561_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_561_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_561_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_561_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_561_92
                                                                              jmp   .Lcall_prolog_α_561_93
.Lcall_prolog_α_561_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_561_94
.Lcall_prolog_α_561_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_561_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_561_77
.Lcall_prolog_α_561_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_561_77
.Lcall_prolog_α_561_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_561_77: mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    n528_call_prolog_α
                                                                              jmp   n512_var_ref_α
n511_call_prolog_β:     mov              r11, 218;                            jmp   n528_call_prolog_α
                        .size            n511_call_prolog_bx, .-n511_call_prolog_bx
                        .type            n512_var_ref_bx, @function
n512_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n513_var_ref_α
                        .size            n512_var_ref_bx, .-n512_var_ref_bx
                        .type            n513_var_ref_bx, @function
n513_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:         mov              r11, 220
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n514_var_ref_α
                        .size            n513_var_ref_bx, .-n513_var_ref_bx
                        .type            n514_var_ref_bx, @function
n514_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n515_call_prolog_α
                        .size            n514_var_ref_bx, .-n514_var_ref_bx
                        .type            n515_call_prolog_bx, @function
n515_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_call_prolog_α:     mov              r11, 222
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lcall_prolog_α_568_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_568_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_568_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_568_60
.Lcall_prolog_α_568_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_568_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_568_60
.Lcall_prolog_α_568_63: cmp              al, 72;                              jne   .Lcall_prolog_α_568_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_568_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_568_60
.Lcall_prolog_α_568_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_568_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_568_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_568_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_568_80
                                                                              jmp   .Lcall_prolog_α_568_74
.Lcall_prolog_α_568_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_568_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_568_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_568_73
                        lea              r9, [rbp + 544]
.Lcall_prolog_α_568_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_568_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_568_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_568_64
.Lcall_prolog_α_568_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_568_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_568_64
.Lcall_prolog_α_568_67: cmp              al, 72;                              jne   .Lcall_prolog_α_568_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_568_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_568_64
.Lcall_prolog_α_568_65: lea              rcx, [rbp + 560]
.Lcall_prolog_α_568_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_568_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_568_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_568_68
.Lcall_prolog_α_568_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_568_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_568_68
.Lcall_prolog_α_568_71: cmp              al, 72;                              jne   .Lcall_prolog_α_568_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_568_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_568_68
.Lcall_prolog_α_568_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_568_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_568_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_568_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_568_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_568_75
                                                                              jmp   .Lcall_prolog_α_568_72
.Lcall_prolog_α_568_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_568_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_568_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_568_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_568_76
                                                                              jmp   .Lcall_prolog_α_568_72
.Lcall_prolog_α_568_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_568_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_568_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_568_77
.Lcall_prolog_α_568_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_568_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_568_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_568_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_568_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_568_72
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
                        lea              r9, [rbp + 544]
.Lcall_prolog_α_568_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_568_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_568_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_568_81
.Lcall_prolog_α_568_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_568_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_568_81
.Lcall_prolog_α_568_84: cmp              al, 72;                              jne   .Lcall_prolog_α_568_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_568_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_568_81
.Lcall_prolog_α_568_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_568_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_568_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_568_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_568_85
                                                                              jmp   .Lcall_prolog_α_568_86
.Lcall_prolog_α_568_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_568_87
.Lcall_prolog_α_568_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_568_87: lea              rcx, [rbp + 560]
.Lcall_prolog_α_568_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_568_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_568_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_568_88
.Lcall_prolog_α_568_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_568_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_568_88
.Lcall_prolog_α_568_91: cmp              al, 72;                              jne   .Lcall_prolog_α_568_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_568_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_568_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_568_88
.Lcall_prolog_α_568_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_568_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_568_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_568_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_568_92
                                                                              jmp   .Lcall_prolog_α_568_93
.Lcall_prolog_α_568_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_568_94
.Lcall_prolog_α_568_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_568_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_568_77
.Lcall_prolog_α_568_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_568_77
.Lcall_prolog_α_568_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_568_77: mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n528_call_prolog_α
                                                                              jmp   n516_var_ref_α
n515_call_prolog_β:     mov              r11, 222;                            jmp   n528_call_prolog_α
                        .size            n515_call_prolog_bx, .-n515_call_prolog_bx
                        .type            n516_var_ref_bx, @function
n516_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:         mov              r11, 223
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n517_lit_string_α
                        .size            n516_var_ref_bx, .-n516_var_ref_bx
                        .type            n517_lit_string_bx, @function
n517_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_string_α:      mov              r11, 224
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_571_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n518_var_ref_α
.Llit_string_α_571_0:   .quad            .Llit_string_α_571_0_s
.Llit_string_α_571_0_s: .string          "p"
                        .size            n517_lit_string_bx, .-n517_lit_string_bx
                        .type            n518_var_ref_bx, @function
n518_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n519_var_ref_α
                        .size            n518_var_ref_bx, .-n518_var_ref_bx
                        .type            n519_var_ref_bx, @function
n519_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:         mov              r11, 226
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n520_call_prolog_α
                        .size            n519_var_ref_bx, .-n519_var_ref_bx
                        .type            n520_call_prolog_bx, @function
n520_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n520_call_prolog_α:     mov              r11, 227
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n528_call_prolog_α
                                                                              jmp   n521_var_ref_α
n520_call_prolog_β:     mov              r11, 227;                            jmp   n528_call_prolog_α
                        .size            n520_call_prolog_bx, .-n520_call_prolog_bx
                        .type            n521_var_ref_bx, @function
n521_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n521_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n522_call_prolog_α
                        .size            n521_var_ref_bx, .-n521_var_ref_bx
                        .type            n522_call_prolog_bx, @function
n522_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n522_call_prolog_α:     mov              r11, 229
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lcall_prolog_α_579_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_579_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_579_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_579_60
.Lcall_prolog_α_579_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_579_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_579_60
.Lcall_prolog_α_579_63: cmp              al, 72;                              jne   .Lcall_prolog_α_579_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_579_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_579_60
.Lcall_prolog_α_579_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_579_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_579_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_579_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_579_80
                                                                              jmp   .Lcall_prolog_α_579_74
.Lcall_prolog_α_579_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_579_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_579_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_579_73
                        lea              r9, [rbp + 320]
.Lcall_prolog_α_579_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_579_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_579_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_579_64
.Lcall_prolog_α_579_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_579_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_579_64
.Lcall_prolog_α_579_67: cmp              al, 72;                              jne   .Lcall_prolog_α_579_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_579_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_579_64
.Lcall_prolog_α_579_65: lea              rcx, [rbp + 336]
.Lcall_prolog_α_579_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_579_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_579_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_579_68
.Lcall_prolog_α_579_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_579_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_579_68
.Lcall_prolog_α_579_71: cmp              al, 72;                              jne   .Lcall_prolog_α_579_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_579_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_579_68
.Lcall_prolog_α_579_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_579_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_579_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_579_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_579_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_579_75
                                                                              jmp   .Lcall_prolog_α_579_72
.Lcall_prolog_α_579_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_579_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_579_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_579_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_579_76
                                                                              jmp   .Lcall_prolog_α_579_72
.Lcall_prolog_α_579_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_579_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_579_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_579_77
.Lcall_prolog_α_579_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_579_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_579_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_579_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_579_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_579_72
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
.Lcall_prolog_α_579_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_579_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_579_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_579_81
.Lcall_prolog_α_579_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_579_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_579_81
.Lcall_prolog_α_579_84: cmp              al, 72;                              jne   .Lcall_prolog_α_579_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_579_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_579_81
.Lcall_prolog_α_579_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_579_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_579_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_579_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_579_85
                                                                              jmp   .Lcall_prolog_α_579_86
.Lcall_prolog_α_579_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_579_87
.Lcall_prolog_α_579_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_579_87: lea              rcx, [rbp + 336]
.Lcall_prolog_α_579_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_579_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_579_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_579_88
.Lcall_prolog_α_579_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_579_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_579_88
.Lcall_prolog_α_579_91: cmp              al, 72;                              jne   .Lcall_prolog_α_579_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_579_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_579_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_579_88
.Lcall_prolog_α_579_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_579_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_579_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_579_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_579_92
                                                                              jmp   .Lcall_prolog_α_579_93
.Lcall_prolog_α_579_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_579_94
.Lcall_prolog_α_579_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_579_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_579_77
.Lcall_prolog_α_579_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_579_77
.Lcall_prolog_α_579_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_579_77: mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n528_call_prolog_α
                                                                              jmp   n523_var_ref_α
n522_call_prolog_β:     mov              r11, 229;                            jmp   n528_call_prolog_α
                        .size            n522_call_prolog_bx, .-n522_call_prolog_bx
                        .type            n523_var_ref_bx, @function
n523_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n524_var_ref_α
                        .size            n523_var_ref_bx, .-n523_var_ref_bx
                        .type            n524_var_ref_bx, @function
n524_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n525_var_ref_α
                        .size            n524_var_ref_bx, .-n524_var_ref_bx
                        .type            n525_var_ref_bx, @function
n525_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:         mov              r11, 232
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n526_call_proc_staged_α
                        .size            n525_var_ref_bx, .-n525_var_ref_bx
                        .type            n526_call_proc_staged_bx, @function
n526_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n526_call_proc_staged_α:
                        mov              r11, 233
                        mov              qword ptr [rbp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_587_200
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_587_201
.Lcall_proc_staged_α_587_200:
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
.Lcall_proc_staged_α_587_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_587_202
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_587_203
.Lcall_proc_staged_α_587_202:
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
.Lcall_proc_staged_α_587_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_587_204
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_587_205
.Lcall_proc_staged_α_587_204:
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
.Lcall_proc_staged_α_587_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_587_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_587_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_587_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_587_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_587_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_587_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 200], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_587_5
                        mov              qword ptr [rbp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_587_2
.Lcall_proc_staged_α_587_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_587_2
.Lcall_proc_staged_α_587_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_587_6
                        mov              qword ptr [rbp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_587_2
.Lcall_proc_staged_α_587_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_587_2
.Lcall_proc_staged_α_587_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_587_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n528_call_prolog_α
.Lcall_proc_staged_α_587_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_587_29
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
.Lcall_proc_staged_α_587_29:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n528_call_prolog_α
                                                                              jmp   n527_suspend_α
n526_call_proc_staged_β:
                        mov              r11, 233
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
                        test             rax, rax;                            je    n528_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              ecx, 64
                        mov              r8d, 1232
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
                        test             rax, rax;                            je    n528_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_587_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_587_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_587_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_587_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_587_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n528_call_prolog_α
                                                                              jmp   n527_suspend_α
.Lcall_proc_staged_α_587_0:
                        .quad            .Lcall_proc_staged_α_587_0_s
.Lcall_proc_staged_α_587_0_s:
                        .string          "pair/3"
                        .size            n526_call_proc_staged_bx, .-n526_call_proc_staged_bx
                        .type            n527_suspend_bx, @function
n527_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n527_suspend_α:         mov              r11, 234
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_589_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1232];         jmp   rax
.Lsuspend_α_589_61:     mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rip + n527_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n527_suspend_β]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax;            jmp   pair$2F3_γ
n527_suspend_β:         mov              r11, 234;                            jmp   n526_call_proc_staged_β
                        .size            n527_suspend_bx, .-n527_suspend_bx
                        .type            n528_call_prolog_bx, @function
n528_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n528_call_prolog_α:     mov              r11, 235
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
                        cmp              al, 104;                             je    pair$2F3_ω
                                                                              jmp   pair$2F3_ω
n528_call_prolog_β:     mov              r11, 235;                            jmp   pair$2F3_ω
                        .size            n528_call_prolog_bx, .-n528_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
pair$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pair$2F3_β:
                                                                              jmp   n502_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
pair$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lpair$2F3_α_590_50
                        mov              qword ptr [rsp + 1232], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1232];         jmp   rax
.Lpair$2F3_α_590_50:    mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1352]
                        lea              rsp, [rbp + 1376]
                        mov              rbp, qword ptr [rbp + 1368];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pair$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1360]
                        lea              rsp, [rbp + 1376]
                        mov              rbp, qword ptr [rbp + 1368];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__q$2F2:
                        sub              rsp, 752
                        mov              qword ptr [rsp + 728], rcx
                        mov              qword ptr [rsp + 736], rdx
                        mov              qword ptr [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 640
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
q$2F2_α_body:
                        lea              rax, [rip + n608_suspend_β]
                        mov              qword ptr [rbp + 640], rax
                        .type            n591_call_prolog_bx, @function
n591_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_call_prolog_α:     mov              r11, 236
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_610_102
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56];           jmp   .Lcall_prolog_α_610_101
.Lcall_prolog_α_610_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_610_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_610_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_610_101
.Lcall_prolog_α_610_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_610_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    q$2F2_ω
                                                                              jmp   n592_var_ref_α
n591_call_prolog_β:     mov              r11, 236;                            jmp   q$2F2_ω
                        .size            n591_call_prolog_bx, .-n591_call_prolog_bx
                        .type            n592_var_ref_bx, @function
n592_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n593_var_ref_α
                        .size            n592_var_ref_bx, .-n592_var_ref_bx
                        .type            n593_var_ref_bx, @function
n593_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_var_ref_α:         mov              r11, 238
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n594_call_prolog_α
                        .size            n593_var_ref_bx, .-n593_var_ref_bx
                        .type            n594_call_prolog_bx, @function
n594_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_call_prolog_α:     mov              r11, 239
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lcall_prolog_α_615_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_615_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_615_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_615_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_615_40
.Lcall_prolog_α_615_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_615_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_615_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_615_40
.Lcall_prolog_α_615_56: cmp              al, 72;                              jne   .Lcall_prolog_α_615_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_615_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_615_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_615_40
.Lcall_prolog_α_615_41: lea              r9, [rbp + 592]
.Lcall_prolog_α_615_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_615_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_615_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_615_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_615_42
.Lcall_prolog_α_615_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_615_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_615_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_615_42
.Lcall_prolog_α_615_58: cmp              al, 72;                              jne   .Lcall_prolog_α_615_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_615_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_615_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_615_42
.Lcall_prolog_α_615_43: cmp              r8, r9;                              je    .Lcall_prolog_α_615_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_615_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_615_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_615_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_615_44
                                                                              jmp   .Lcall_prolog_α_615_45
.Lcall_prolog_α_615_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_615_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_615_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_615_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_615_53
                                                                              jmp   .Lcall_prolog_α_615_46
.Lcall_prolog_α_615_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_615_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_615_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_615_51
.Lcall_prolog_α_615_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_615_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_615_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_615_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_615_47
                                                                              jmp   .Lcall_prolog_α_615_48
.Lcall_prolog_α_615_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_615_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_615_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_615_51
.Lcall_prolog_α_615_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_615_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_615_53
                                                                              jmp   .Lcall_prolog_α_615_52
.Lcall_prolog_α_615_49: cmp              dl, 80;                              je    .Lcall_prolog_α_615_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_615_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_615_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_615_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_615_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_615_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_615_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_615_51
                                                                              jmp   .Lcall_prolog_α_615_52
.Lcall_prolog_α_615_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_615_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_615_53
.Lcall_prolog_α_615_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_615_54
.Lcall_prolog_α_615_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_615_54
.Lcall_prolog_α_615_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_615_54: mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    n609_call_prolog_α
                                                                              jmp   n595_var_ref_α
n594_call_prolog_β:     mov              r11, 239;                            jmp   n609_call_prolog_α
                        .size            n594_call_prolog_bx, .-n594_call_prolog_bx
                        .type            n595_var_ref_bx, @function
n595_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n596_var_ref_α
                        .size            n595_var_ref_bx, .-n595_var_ref_bx
                        .type            n596_var_ref_bx, @function
n596_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_var_ref_α:         mov              r11, 241
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n597_call_prolog_α
                        .size            n596_var_ref_bx, .-n596_var_ref_bx
                        .type            n597_call_prolog_bx, @function
n597_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_call_prolog_α:     mov              r11, 242
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lcall_prolog_α_620_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_620_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_620_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_620_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_620_40
.Lcall_prolog_α_620_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_620_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_620_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_620_40
.Lcall_prolog_α_620_56: cmp              al, 72;                              jne   .Lcall_prolog_α_620_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_620_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_620_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_620_40
.Lcall_prolog_α_620_41: lea              r9, [rbp + 512]
.Lcall_prolog_α_620_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_620_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_620_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_620_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_620_42
.Lcall_prolog_α_620_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_620_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_620_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_620_42
.Lcall_prolog_α_620_58: cmp              al, 72;                              jne   .Lcall_prolog_α_620_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_620_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_620_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_620_42
.Lcall_prolog_α_620_43: cmp              r8, r9;                              je    .Lcall_prolog_α_620_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_620_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_620_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_620_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_620_44
                                                                              jmp   .Lcall_prolog_α_620_45
.Lcall_prolog_α_620_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_620_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_620_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_620_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_620_53
                                                                              jmp   .Lcall_prolog_α_620_46
.Lcall_prolog_α_620_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_620_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_620_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_620_51
.Lcall_prolog_α_620_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_620_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_620_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_620_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_620_47
                                                                              jmp   .Lcall_prolog_α_620_48
.Lcall_prolog_α_620_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_620_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_620_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_620_51
.Lcall_prolog_α_620_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_620_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_620_53
                                                                              jmp   .Lcall_prolog_α_620_52
.Lcall_prolog_α_620_49: cmp              dl, 80;                              je    .Lcall_prolog_α_620_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_620_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_620_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_620_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_620_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_620_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_620_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_620_51
                                                                              jmp   .Lcall_prolog_α_620_52
.Lcall_prolog_α_620_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_620_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_620_53
.Lcall_prolog_α_620_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_620_54
.Lcall_prolog_α_620_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_620_54
.Lcall_prolog_α_620_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_620_54: mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n609_call_prolog_α
                                                                              jmp   n598_var_ref_α
n597_call_prolog_β:     mov              r11, 242;                            jmp   n609_call_prolog_α
                        .size            n597_call_prolog_bx, .-n597_call_prolog_bx
                        .type            n598_var_ref_bx, @function
n598_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:         mov              r11, 243
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n599_var_ref_α
                        .size            n598_var_ref_bx, .-n598_var_ref_bx
                        .type            n599_var_ref_bx, @function
n599_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n599_var_ref_α:         mov              r11, 244
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n600_call_proc_staged_α
                        .size            n599_var_ref_bx, .-n599_var_ref_bx
                        .type            n600_call_proc_staged_bx, @function
n600_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n600_call_proc_staged_α:
                        mov              r11, 245
                        mov              qword ptr [rbp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_626_200
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_626_201
.Lcall_proc_staged_α_626_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_626_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_626_202
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_626_203
.Lcall_proc_staged_α_626_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_626_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_626_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_626_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_626_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_626_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_626_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_626_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 424], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_626_5
                        mov              qword ptr [rbp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_626_2
.Lcall_proc_staged_α_626_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_626_2
.Lcall_proc_staged_α_626_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_626_6
                        mov              qword ptr [rbp + 416], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_626_2
.Lcall_proc_staged_α_626_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_626_2
.Lcall_proc_staged_α_626_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_626_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n609_call_prolog_α
.Lcall_proc_staged_α_626_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_626_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
.Lcall_proc_staged_α_626_29:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    n609_call_prolog_α
                                                                              jmp   n601_var_ref_α
n600_call_proc_staged_β:
                        mov              r11, 245
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 416], 0
                        lea              rdi, [rbp + 432]
                        lea              rsi, [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n609_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              ecx, 48
                        mov              r8d, 880
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n609_call_prolog_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_626_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_626_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_626_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_626_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_626_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    n609_call_prolog_α
                                                                              jmp   n601_var_ref_α
.Lcall_proc_staged_α_626_0:
                        .quad            .Lcall_proc_staged_α_626_0_s
.Lcall_proc_staged_α_626_0_s:
                        .string          "perm/2"
                        .size            n600_call_proc_staged_bx, .-n600_call_proc_staged_bx
                        .type            n601_var_ref_bx, @function
n601_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n601_var_ref_α:         mov              r11, 246
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n602_var_ref_α
                        .size            n601_var_ref_bx, .-n601_var_ref_bx
                        .type            n602_var_ref_bx, @function
n602_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:         mov              r11, 247
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n603_var_ref_α
                        .size            n602_var_ref_bx, .-n602_var_ref_bx
                        .type            n603_var_ref_bx, @function
n603_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n603_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n604_call_proc_staged_α
                        .size            n603_var_ref_bx, .-n603_var_ref_bx
                        .type            n604_call_proc_staged_bx, @function
n604_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n604_call_proc_staged_α:
                        mov              r11, 249
                        mov              qword ptr [rbp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_634_200
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_634_201
.Lcall_proc_staged_α_634_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_634_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_634_202
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_634_203
.Lcall_proc_staged_α_634_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_634_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_634_204
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_634_205
.Lcall_proc_staged_α_634_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_634_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_634_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_634_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_634_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_634_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_634_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_634_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 296], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_634_5
                        mov              qword ptr [rbp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_634_2
.Lcall_proc_staged_α_634_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_634_2
.Lcall_proc_staged_α_634_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_634_6
                        mov              qword ptr [rbp + 288], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_634_2
.Lcall_proc_staged_α_634_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_634_2
.Lcall_proc_staged_α_634_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_634_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n600_call_proc_staged_β
.Lcall_proc_staged_α_634_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_634_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
.Lcall_proc_staged_α_634_29:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    n600_call_proc_staged_β
                                                                              jmp   n605_lit_string_α
n604_call_proc_staged_β:
                        mov              r11, 249
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 288], 0
                        lea              rdi, [rbp + 304]
                        lea              rsi, [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n600_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              ecx, 64
                        mov              r8d, 1232
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
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
                        test             rax, rax;                            je    n600_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_634_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_634_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_634_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_634_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_634_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    n600_call_proc_staged_β
                                                                              jmp   n605_lit_string_α
.Lcall_proc_staged_α_634_0:
                        .quad            .Lcall_proc_staged_α_634_0_s
.Lcall_proc_staged_α_634_0_s:
                        .string          "pair/3"
                        .size            n604_call_proc_staged_bx, .-n604_call_proc_staged_bx
                        .type            n605_lit_string_bx, @function
n605_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_string_α:      mov              r11, 250
                        mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_635_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n606_var_ref_α
.Llit_string_α_635_0:   .quad            .Llit_string_α_635_0_s
.Llit_string_α_635_0_s: .string          "[]"
                        .size            n605_lit_string_bx, .-n605_lit_string_bx
                        .type            n606_var_ref_bx, @function
n606_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n606_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n607_call_proc_staged_α
                        .size            n606_var_ref_bx, .-n606_var_ref_bx
                        .type            n607_call_proc_staged_bx, @function
n607_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n607_call_proc_staged_α:
                        mov              r11, 252
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_639_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_639_201
.Lcall_proc_staged_α_639_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_639_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_639_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_639_203
.Lcall_proc_staged_α_639_202:
                        mov              edi, 1
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
.Lcall_proc_staged_α_639_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_639_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_639_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_639_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_639_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_639_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_639_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 168], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_639_5
                        mov              qword ptr [rbp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_639_2
.Lcall_proc_staged_α_639_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_639_2
.Lcall_proc_staged_α_639_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_639_6
                        mov              qword ptr [rbp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_639_2
.Lcall_proc_staged_α_639_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_639_2
.Lcall_proc_staged_α_639_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_639_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n604_call_proc_staged_β
.Lcall_proc_staged_α_639_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_639_29
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
.Lcall_proc_staged_α_639_29:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n604_call_proc_staged_β
                                                                              jmp   n608_suspend_α
n607_call_proc_staged_β:
                        mov              r11, 252
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 160], 0
                        lea              rdi, [rbp + 176]
                        lea              rsi, [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n604_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              ecx, 48
                        mov              r8d, 848
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
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
                        test             rax, rax;                            je    n604_call_proc_staged_β
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_639_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_639_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_639_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_639_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_639_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n604_call_proc_staged_β
                                                                              jmp   n608_suspend_α
.Lcall_proc_staged_α_639_0:
                        .quad            .Lcall_proc_staged_α_639_0_s
.Lcall_proc_staged_α_639_0_s:
                        .string          "safe/2"
                        .size            n607_call_proc_staged_bx, .-n607_call_proc_staged_bx
                        .type            n608_suspend_bx, @function
n608_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n608_suspend_α:         mov              r11, 253
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_641_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 640];          jmp   rax
.Lsuspend_α_641_61:     mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n608_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n608_suspend_β]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax;            jmp   q$2F2_γ
n608_suspend_β:         mov              r11, 253;                            jmp   n607_call_proc_staged_β
                        .size            n608_suspend_bx, .-n608_suspend_bx
                        .type            n609_call_prolog_bx, @function
n609_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n609_call_prolog_α:     mov              r11, 254
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
                        cmp              al, 104;                             je    q$2F2_ω
                                                                              jmp   q$2F2_ω
n609_call_prolog_β:     mov              r11, 254;                            jmp   q$2F2_ω
                        .size            n609_call_prolog_bx, .-n609_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
q$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
q$2F2_β:
                                                                              jmp   n608_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
q$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lq$2F2_α_642_50
                        mov              qword ptr [rsp + 640], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 640];          jmp   rax
.Lq$2F2_α_642_50:       mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 728]
                        lea              rsp, [rbp + 752]
                        mov              rbp, qword ptr [rbp + 744];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q$2F2_ω:
                        mov              rcx, qword ptr [rsp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, qword ptr [rbp + 744];          jmp   rcx
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
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 288
                        rep              stosb
main_α_body:
                        .type            n643_var_ref_bx, @function
n643_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n643_var_ref_α:         mov              r11, 255
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n644_call_proc_staged_α
                        .size            n643_var_ref_bx, .-n643_var_ref_bx
                        .type            n644_call_proc_staged_bx, @function
n644_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n644_call_proc_staged_α:
                        mov              r11, 256
                        mov              qword ptr [rbp + 208], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_655_200
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_655_201
.Lcall_proc_staged_α_655_200:
                        mov              edi, 0
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
.Lcall_proc_staged_α_655_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_655_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_655_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_655_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_655_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_655_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_655_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 216], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_655_5
                        mov              qword ptr [rbp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_655_2
.Lcall_proc_staged_α_655_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_655_2
.Lcall_proc_staged_α_655_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_655_6
                        mov              qword ptr [rbp + 208], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_655_2
.Lcall_proc_staged_α_655_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_655_2
.Lcall_proc_staged_α_655_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_655_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n649_lit_string_α
.Lcall_proc_staged_α_655_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_655_29
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
.Lcall_proc_staged_α_655_29:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n649_lit_string_α
                                                                              jmp   n645_var_α
n644_call_proc_staged_β:
                        mov              r11, 256
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 208], 0
                        lea              rdi, [rbp + 224]
                        lea              rsi, [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n649_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              ecx, 32
                        mov              r8d, 1408
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n649_lit_string_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_655_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_655_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_655_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_655_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_655_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n649_lit_string_α
                                                                              jmp   n645_var_α
.Lcall_proc_staged_α_655_0:
                        .quad            .Lcall_proc_staged_α_655_0_s
.Lcall_proc_staged_α_655_0_s:
                        .string          "q10/1"
                        .size            n644_call_proc_staged_bx, .-n644_call_proc_staged_bx
                        .type            n645_var_bx, @function
n645_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n645_var_α:             mov              r11, 257
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 168], rax;          jmp   n646_call_prolog_α
                        .size            n645_var_bx, .-n645_var_bx
                        .type            n646_call_prolog_bx, @function
n646_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n646_call_prolog_α:     mov              r11, 258
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn659: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn659]
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
                        cmp              al, 104;                             je    n644_call_proc_staged_β
                                                                              jmp   n647_lit_string_α
n646_call_prolog_β:     mov              r11, 258;                            jmp   n644_call_proc_staged_β
                        .size            n646_call_prolog_bx, .-n646_call_prolog_bx
                        .type            n647_lit_string_bx, @function
n647_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n647_lit_string_α:      mov              r11, 259
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_660_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n648_call_prolog_α
.Llit_string_α_660_0:   .quad            .Llit_string_α_660_0_s
.Llit_string_α_660_0_s: .string          ""
                        .size            n647_lit_string_bx, .-n647_lit_string_bx
                        .type            n648_call_prolog_bx, @function
n648_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n648_call_prolog_α:     mov              r11, 260
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn662: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn662]
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
                        cmp              al, 104;                             je    n644_call_proc_staged_β
                                                                              jmp   main_γ
n648_call_prolog_β:     mov              r11, 260;                            jmp   n644_call_proc_staged_β
                        .size            n648_call_prolog_bx, .-n648_call_prolog_bx
                        .type            n649_lit_string_bx, @function
n649_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n649_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rbp + 48], 2              # result
                        mov              dword ptr [rbp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_663_0]
                        mov              qword ptr [rbp + 56], rax;           jmp   n650_lit_string_α
.Llit_string_α_663_0:   .quad            .Llit_string_α_663_0_s
.Llit_string_α_663_0_s: .string          "user_error"
                        .size            n649_lit_string_bx, .-n649_lit_string_bx
                        .type            n650_lit_string_bx, @function
n650_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n650_lit_string_α:      mov              r11, 262
                        mov              qword ptr [rbp + 64], 2              # result
                        mov              dword ptr [rbp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_664_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n651_call_prolog_α
.Llit_string_α_664_0:   .quad            .Llit_string_α_664_0_s
.Llit_string_α_664_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n650_lit_string_bx, .-n650_lit_string_bx
                        .type            n651_call_prolog_bx, @function
n651_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n651_call_prolog_α:     mov              r11, 263
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn666: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn666]
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
n651_call_prolog_β:     mov              r11, 263;                            jmp   main_ω
                        .size            n651_call_prolog_bx, .-n651_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 296]
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312];          jmp   rcx
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
.Lstartup_pname1:       .string          "q10/1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__q10$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1440
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "test/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__test$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1008
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "nd/2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__nd$2F2
                        .quad            nd$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1280
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "safe/2"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__safe$2F2
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
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "perm/2"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__perm$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            960
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pair/3"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__pair$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1328
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "q/2"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__q$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            704
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
