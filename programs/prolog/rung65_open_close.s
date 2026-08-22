                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__append$2F3:
                        sub              rsp, 1216
                        mov              qword ptr [rsp + 1192], rcx
                        mov              qword ptr [rsp + 1200], rdx
                        mov              qword ptr [rsp + 1208], rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1184
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
append$2F3_α_body:
                        lea              rax, [rip + n14_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx37_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx37_101
.Lx37_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx37_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx37_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx37_101
.Lx37_100:              lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx37_101:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    append$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                              jmp   append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n3_lit_string_α
.Lx40_0:                .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 2
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n4_call_builtin_prolog_α
.Lx41_0:                .quad            .Lx41_0_s
.Lx41_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
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
.Lx42_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx42_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx42_111
                        cmp              esi, 1;                              jne   .Lx42_112
                        mov              r8, rax;                             jmp   .Lx42_110
.Lx42_112:              cmp              esi, 2;                              jne   .Lx42_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx42_111
                        mov              r8, rax;                             jmp   .Lx42_110
.Lx42_113:              cmp              al, 72;                              jne   .Lx42_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx42_111
                        cmp              rax, r8;                             je    .Lx42_111
                        mov              r8, rax;                             jmp   .Lx42_110
.Lx42_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx42_114
                        cmp              al, 104;                             je    .Lx42_114
                        cmp              al, 72;                              jne   .Lx42_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx42_114
                                                                              jmp   .Lx42_118
.Lx42_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx42_115
                        cmp              al, 3;                               je    .Lx42_114
                        cmp              al, 2;                               jne   .Lx42_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx42_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx42_114
                                                                              jmp   .Lx42_116
.Lx42_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx42_117
.Lx42_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx42_117
.Lx42_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx42_117:              mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n16_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                                                                              jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n7_call_builtin_prolog_α
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        mov              rsi, qword ptr [rip + .Lx46_2];      jmp   .Lx46_3
.Lx46_2:                .quad            .Lx46_2_s
.Lx46_2_s:              .string          "[]"
.Lx46_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n15_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_var_ref_α
n7_call_builtin_prolog_β:
                                                                              jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n10_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
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
.Lx51_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx51_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx51_41
                        cmp              esi, 1;                              jne   .Lx51_55
                        mov              r8, rax;                             jmp   .Lx51_40
.Lx51_55:               cmp              esi, 2;                              jne   .Lx51_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx51_41
                        mov              r8, rax;                             jmp   .Lx51_40
.Lx51_56:               cmp              al, 72;                              jne   .Lx51_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx51_41
                        cmp              rax, r8;                             je    .Lx51_41
                        mov              r8, rax;                             jmp   .Lx51_40
.Lx51_41:               lea              r9, [rsp + 848]
.Lx51_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx51_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx51_43
                        cmp              esi, 1;                              jne   .Lx51_57
                        mov              r9, rax;                             jmp   .Lx51_42
.Lx51_57:               cmp              esi, 2;                              jne   .Lx51_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx51_43
                        mov              r9, rax;                             jmp   .Lx51_42
.Lx51_58:               cmp              al, 72;                              jne   .Lx51_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx51_43
                        cmp              rax, r9;                             je    .Lx51_43
                        mov              r9, rax;                             jmp   .Lx51_42
.Lx51_43:               cmp              r8, r9;                              je    .Lx51_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx51_44
                        cmp              al, 104;                             je    .Lx51_44
                        cmp              al, 72;                              jne   .Lx51_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx51_44
                                                                              jmp   .Lx51_45
.Lx51_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx51_53
                        cmp              al, 104;                             je    .Lx51_53
                        cmp              al, 72;                              jne   .Lx51_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx51_53
                                                                              jmp   .Lx51_46
.Lx51_46:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx51_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx51_53
                        add              r11, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx51_51
.Lx51_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx51_47
                        cmp              al, 104;                             je    .Lx51_47
                        cmp              al, 72;                              jne   .Lx51_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx51_47
                                                                              jmp   .Lx51_48
.Lx51_47:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx51_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx51_53
                        add              r11, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx51_51
.Lx51_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx51_49
                        cmp              dl, 80;                              je    .Lx51_53
                                                                              jmp   .Lx51_52
.Lx51_49:               cmp              dl, 80;                              je    .Lx51_52
                        cmp              cl, 5;                               je    .Lx51_53
                        cmp              dl, 5;                               je    .Lx51_53
                        cmp              cl, 3;                               jne   .Lx51_50
                        cmp              dl, 3;                               jne   .Lx51_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx51_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx51_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx51_51
                                                                              jmp   .Lx51_52
.Lx51_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx51_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx51_53
.Lx51_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx51_54
.Lx51_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx51_54
.Lx51_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx51_54:               mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n15_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_var_ref_α
n10_call_builtin_prolog_β:
                                                                              jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
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
.Lx56_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx56_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx56_41
                        cmp              esi, 1;                              jne   .Lx56_55
                        mov              r8, rax;                             jmp   .Lx56_40
.Lx56_55:               cmp              esi, 2;                              jne   .Lx56_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx56_41
                        mov              r8, rax;                             jmp   .Lx56_40
.Lx56_56:               cmp              al, 72;                              jne   .Lx56_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx56_41
                        cmp              rax, r8;                             je    .Lx56_41
                        mov              r8, rax;                             jmp   .Lx56_40
.Lx56_41:               lea              r9, [rsp + 768]
.Lx56_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx56_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx56_43
                        cmp              esi, 1;                              jne   .Lx56_57
                        mov              r9, rax;                             jmp   .Lx56_42
.Lx56_57:               cmp              esi, 2;                              jne   .Lx56_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx56_43
                        mov              r9, rax;                             jmp   .Lx56_42
.Lx56_58:               cmp              al, 72;                              jne   .Lx56_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx56_43
                        cmp              rax, r9;                             je    .Lx56_43
                        mov              r9, rax;                             jmp   .Lx56_42
.Lx56_43:               cmp              r8, r9;                              je    .Lx56_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx56_44
                        cmp              al, 104;                             je    .Lx56_44
                        cmp              al, 72;                              jne   .Lx56_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx56_44
                                                                              jmp   .Lx56_45
.Lx56_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx56_53
                        cmp              al, 104;                             je    .Lx56_53
                        cmp              al, 72;                              jne   .Lx56_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx56_53
                                                                              jmp   .Lx56_46
.Lx56_46:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx56_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx56_53
                        add              r11, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx56_51
.Lx56_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx56_47
                        cmp              al, 104;                             je    .Lx56_47
                        cmp              al, 72;                              jne   .Lx56_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx56_47
                                                                              jmp   .Lx56_48
.Lx56_47:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx56_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx56_53
                        add              r11, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx56_51
.Lx56_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx56_49
                        cmp              dl, 80;                              je    .Lx56_53
                                                                              jmp   .Lx56_52
.Lx56_49:               cmp              dl, 80;                              je    .Lx56_52
                        cmp              cl, 5;                               je    .Lx56_53
                        cmp              dl, 5;                               je    .Lx56_53
                        cmp              cl, 3;                               jne   .Lx56_50
                        cmp              dl, 3;                               jne   .Lx56_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx56_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx56_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx56_51
                                                                              jmp   .Lx56_52
.Lx56_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx56_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx56_53
.Lx56_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx56_54
.Lx56_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx56_54
.Lx56_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx56_54:               mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n15_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_suspend_α
n13_call_builtin_prolog_β:
                                                                              jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx58_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lx58_61:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n14_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n14_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   append$2F3_γ
n14_suspend_β:                                                                jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    append$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_var_ref_α
n15_call_builtin_prolog_β:
                                                                              jmp   append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n17_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n18_lit_integer_α
.Lx62_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n19_call_builtin_prolog_α
.Lx63_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
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
.Lx64_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx64_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx64_111
                        cmp              esi, 1;                              jne   .Lx64_112
                        mov              r8, rax;                             jmp   .Lx64_110
.Lx64_112:              cmp              esi, 2;                              jne   .Lx64_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx64_111
                        mov              r8, rax;                             jmp   .Lx64_110
.Lx64_113:              cmp              al, 72;                              jne   .Lx64_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx64_111
                        cmp              rax, r8;                             je    .Lx64_111
                        mov              r8, rax;                             jmp   .Lx64_110
.Lx64_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx64_114
                        cmp              al, 104;                             je    .Lx64_114
                        cmp              al, 72;                              jne   .Lx64_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx64_114
                                                                              jmp   .Lx64_118
.Lx64_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx64_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              dl, 0;                               je    .Lx64_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx64_115
                                                                              jmp   .Lx64_114
.Lx64_119:              cmp              al, 3;                               jne   .Lx64_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx64_114
                                                                              jmp   .Lx64_115
.Lx64_120:              cmp              al, 2;                               jne   .Lx64_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx64_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx64_114
                                                                              jmp   .Lx64_115
.Lx64_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx64_117
.Lx64_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx64_117
.Lx64_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx64_117:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n36_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_var_ref_α
n19_call_builtin_prolog_β:
                                                                              jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
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
.Lx71_60:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx71_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx71_61
                        cmp              esi, 1;                              jne   .Lx71_62
                        mov              r8, rax;                             jmp   .Lx71_60
.Lx71_62:               cmp              esi, 2;                              jne   .Lx71_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx71_61
                        mov              r8, rax;                             jmp   .Lx71_60
.Lx71_63:               cmp              al, 72;                              jne   .Lx71_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx71_61
                        cmp              rax, r8;                             je    .Lx71_61
                        mov              r8, rax;                             jmp   .Lx71_60
.Lx71_61:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx71_80
                        cmp              al, 104;                             je    .Lx71_80
                        cmp              al, 72;                              jne   .Lx71_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx71_80
                                                                              jmp   .Lx71_74
.Lx71_74:               mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx71_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx71_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx71_73
                        lea              r9, [rsp + 512]
.Lx71_64:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx71_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx71_65
                        cmp              esi, 1;                              jne   .Lx71_66
                        mov              r9, rax;                             jmp   .Lx71_64
.Lx71_66:               cmp              esi, 2;                              jne   .Lx71_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx71_65
                        mov              r9, rax;                             jmp   .Lx71_64
.Lx71_67:               cmp              al, 72;                              jne   .Lx71_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx71_65
                        cmp              rax, r9;                             je    .Lx71_65
                        mov              r9, rax;                             jmp   .Lx71_64
.Lx71_65:               lea              rcx, [rsp + 528]
.Lx71_68:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx71_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx71_69
                        cmp              esi, 1;                              jne   .Lx71_70
                        mov              rcx, rax;                            jmp   .Lx71_68
.Lx71_70:               cmp              esi, 2;                              jne   .Lx71_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx71_69
                        mov              rcx, rax;                            jmp   .Lx71_68
.Lx71_71:               cmp              al, 72;                              jne   .Lx71_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx71_69
                        cmp              rax, rcx;                            je    .Lx71_69
                        mov              rcx, rax;                            jmp   .Lx71_68
.Lx71_69:               cmp              r9, rcx;                             je    .Lx71_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx71_75
                        cmp              al, 104;                             je    .Lx71_75
                        cmp              al, 72;                              jne   .Lx71_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx71_75
                                                                              jmp   .Lx71_72
.Lx71_75:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx71_76
                        cmp              al, 104;                             je    .Lx71_76
                        cmp              al, 72;                              jne   .Lx71_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx71_76
                                                                              jmp   .Lx71_72
.Lx71_76:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx71_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx71_72
                        add              r11, rsi
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
                        mov              r10, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx71_77
.Lx71_80:               lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx71_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx71_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax;                            ja    .Lx71_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx71_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx71_72
                        lea              r10, [rip + g_hp_fr]
                        mov              r11, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, r11
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rsp + 512]
.Lx71_81:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx71_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx71_82
                        cmp              esi, 1;                              jne   .Lx71_83
                        mov              r9, rax;                             jmp   .Lx71_81
.Lx71_83:               cmp              esi, 2;                              jne   .Lx71_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx71_82
                        mov              r9, rax;                             jmp   .Lx71_81
.Lx71_84:               cmp              al, 72;                              jne   .Lx71_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx71_82
                        cmp              rax, r9;                             je    .Lx71_82
                        mov              r9, rax;                             jmp   .Lx71_81
.Lx71_82:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx71_85
                        cmp              al, 104;                             je    .Lx71_85
                        cmp              al, 72;                              jne   .Lx71_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx71_85
                                                                              jmp   .Lx71_86
.Lx71_85:               mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx71_87
.Lx71_86:               mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx71_87:               lea              rcx, [rsp + 528]
.Lx71_88:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx71_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx71_89
                        cmp              esi, 1;                              jne   .Lx71_90
                        mov              rcx, rax;                            jmp   .Lx71_88
.Lx71_90:               cmp              esi, 2;                              jne   .Lx71_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx71_89
                        mov              rcx, rax;                            jmp   .Lx71_88
.Lx71_91:               cmp              al, 72;                              jne   .Lx71_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx71_89
                        cmp              rax, rcx;                            je    .Lx71_89
                        mov              rcx, rax;                            jmp   .Lx71_88
.Lx71_89:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx71_92
                        cmp              al, 104;                             je    .Lx71_92
                        cmp              al, 72;                              jne   .Lx71_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx71_92
                                                                              jmp   .Lx71_93
.Lx71_92:               mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx71_94
.Lx71_93:               mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx71_94:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx71_77
.Lx71_73:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx71_77
.Lx71_72:               mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx71_77:               mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n36_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_var_ref_α
n23_call_builtin_prolog_β:
                                                                              jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
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
.Lx76_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx76_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx76_41
                        cmp              esi, 1;                              jne   .Lx76_55
                        mov              r8, rax;                             jmp   .Lx76_40
.Lx76_55:               cmp              esi, 2;                              jne   .Lx76_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx76_41
                        mov              r8, rax;                             jmp   .Lx76_40
.Lx76_56:               cmp              al, 72;                              jne   .Lx76_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx76_41
                        cmp              rax, r8;                             je    .Lx76_41
                        mov              r8, rax;                             jmp   .Lx76_40
.Lx76_41:               lea              r9, [rsp + 416]
.Lx76_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx76_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx76_43
                        cmp              esi, 1;                              jne   .Lx76_57
                        mov              r9, rax;                             jmp   .Lx76_42
.Lx76_57:               cmp              esi, 2;                              jne   .Lx76_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx76_43
                        mov              r9, rax;                             jmp   .Lx76_42
.Lx76_58:               cmp              al, 72;                              jne   .Lx76_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx76_43
                        cmp              rax, r9;                             je    .Lx76_43
                        mov              r9, rax;                             jmp   .Lx76_42
.Lx76_43:               cmp              r8, r9;                              je    .Lx76_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx76_44
                        cmp              al, 104;                             je    .Lx76_44
                        cmp              al, 72;                              jne   .Lx76_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx76_44
                                                                              jmp   .Lx76_45
.Lx76_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx76_53
                        cmp              al, 104;                             je    .Lx76_53
                        cmp              al, 72;                              jne   .Lx76_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx76_53
                                                                              jmp   .Lx76_46
.Lx76_46:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx76_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx76_53
                        add              r11, rsi
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx76_51
.Lx76_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx76_47
                        cmp              al, 104;                             je    .Lx76_47
                        cmp              al, 72;                              jne   .Lx76_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx76_47
                                                                              jmp   .Lx76_48
.Lx76_47:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx76_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx76_53
                        add              r11, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx76_51
.Lx76_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx76_49
                        cmp              dl, 80;                              je    .Lx76_53
                                                                              jmp   .Lx76_52
.Lx76_49:               cmp              dl, 80;                              je    .Lx76_52
                        cmp              cl, 5;                               je    .Lx76_53
                        cmp              dl, 5;                               je    .Lx76_53
                        cmp              cl, 3;                               jne   .Lx76_50
                        cmp              dl, 3;                               jne   .Lx76_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx76_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx76_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx76_51
                                                                              jmp   .Lx76_52
.Lx76_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx76_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx76_53
.Lx76_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx76_54
.Lx76_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx76_54
.Lx76_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx76_54:               mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n36_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_var_ref_α
n26_call_builtin_prolog_β:
                                                                              jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
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
.Lx83_60:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx83_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx83_61
                        cmp              esi, 1;                              jne   .Lx83_62
                        mov              r8, rax;                             jmp   .Lx83_60
.Lx83_62:               cmp              esi, 2;                              jne   .Lx83_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx83_61
                        mov              r8, rax;                             jmp   .Lx83_60
.Lx83_63:               cmp              al, 72;                              jne   .Lx83_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx83_61
                        cmp              rax, r8;                             je    .Lx83_61
                        mov              r8, rax;                             jmp   .Lx83_60
.Lx83_61:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx83_80
                        cmp              al, 104;                             je    .Lx83_80
                        cmp              al, 72;                              jne   .Lx83_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx83_80
                                                                              jmp   .Lx83_74
.Lx83_74:               mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx83_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx83_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx83_73
                        lea              r9, [rsp + 320]
.Lx83_64:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx83_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx83_65
                        cmp              esi, 1;                              jne   .Lx83_66
                        mov              r9, rax;                             jmp   .Lx83_64
.Lx83_66:               cmp              esi, 2;                              jne   .Lx83_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx83_65
                        mov              r9, rax;                             jmp   .Lx83_64
.Lx83_67:               cmp              al, 72;                              jne   .Lx83_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx83_65
                        cmp              rax, r9;                             je    .Lx83_65
                        mov              r9, rax;                             jmp   .Lx83_64
.Lx83_65:               lea              rcx, [rsp + 336]
.Lx83_68:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx83_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx83_69
                        cmp              esi, 1;                              jne   .Lx83_70
                        mov              rcx, rax;                            jmp   .Lx83_68
.Lx83_70:               cmp              esi, 2;                              jne   .Lx83_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx83_69
                        mov              rcx, rax;                            jmp   .Lx83_68
.Lx83_71:               cmp              al, 72;                              jne   .Lx83_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx83_69
                        cmp              rax, rcx;                            je    .Lx83_69
                        mov              rcx, rax;                            jmp   .Lx83_68
.Lx83_69:               cmp              r9, rcx;                             je    .Lx83_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx83_75
                        cmp              al, 104;                             je    .Lx83_75
                        cmp              al, 72;                              jne   .Lx83_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx83_75
                                                                              jmp   .Lx83_72
.Lx83_75:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx83_76
                        cmp              al, 104;                             je    .Lx83_76
                        cmp              al, 72;                              jne   .Lx83_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx83_76
                                                                              jmp   .Lx83_72
.Lx83_76:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx83_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx83_72
                        add              r11, rsi
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
                        mov              r10, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx83_77
.Lx83_80:               lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            je    .Lx83_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax;                            je    .Lx83_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax;                            ja    .Lx83_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11;                            je    .Lx83_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx83_72
                        lea              r10, [rip + g_hp_fr]
                        mov              r11, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, r11
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rsp + 320]
.Lx83_81:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx83_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx83_82
                        cmp              esi, 1;                              jne   .Lx83_83
                        mov              r9, rax;                             jmp   .Lx83_81
.Lx83_83:               cmp              esi, 2;                              jne   .Lx83_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx83_82
                        mov              r9, rax;                             jmp   .Lx83_81
.Lx83_84:               cmp              al, 72;                              jne   .Lx83_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx83_82
                        cmp              rax, r9;                             je    .Lx83_82
                        mov              r9, rax;                             jmp   .Lx83_81
.Lx83_82:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx83_85
                        cmp              al, 104;                             je    .Lx83_85
                        cmp              al, 72;                              jne   .Lx83_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx83_85
                                                                              jmp   .Lx83_86
.Lx83_85:               mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx83_87
.Lx83_86:               mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx83_87:               lea              rcx, [rsp + 336]
.Lx83_88:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx83_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx83_89
                        cmp              esi, 1;                              jne   .Lx83_90
                        mov              rcx, rax;                            jmp   .Lx83_88
.Lx83_90:               cmp              esi, 2;                              jne   .Lx83_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx83_89
                        mov              rcx, rax;                            jmp   .Lx83_88
.Lx83_91:               cmp              al, 72;                              jne   .Lx83_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx83_89
                        cmp              rax, rcx;                            je    .Lx83_89
                        mov              rcx, rax;                            jmp   .Lx83_88
.Lx83_89:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx83_92
                        cmp              al, 104;                             je    .Lx83_92
                        cmp              al, 72;                              jne   .Lx83_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx83_92
                                                                              jmp   .Lx83_93
.Lx83_92:               mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx83_94
.Lx83_93:               mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx83_94:               lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx83_77
.Lx83_73:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx83_77
.Lx83_72:               mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx83_77:               mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n36_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_var_ref_α
n30_call_builtin_prolog_β:
                                                                              jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n32_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n34_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_proc_staged_α: mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx91_20
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx91_21
.Lx91_20:               mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx91_21:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx91_22
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx91_23
.Lx91_22:               mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx91_23:               lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx91_24
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx91_25
.Lx91_24:               mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx91_25:               lea              rax, [rip + .Lx91_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx91_1
                        lea              rcx, [rip + .Lx91_3]
                        lea              rdx, [rip + .Lx91_4];                jmp   rax
.Lx91_3:                mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx91_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx91_2
.Lx91_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx91_2
.Lx91_4:                mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx91_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx91_2
.Lx91_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx91_2
.Lx91_1:                call             rt_faildescr@PLT
.Lx91_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx91_29
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
.Lx91_29:               mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n36_call_builtin_prolog_α
                                                                              jmp   n35_suspend_α
n34_call_proc_staged_β: call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n36_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1088
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
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    n36_call_builtin_prolog_α
                        lea              r11, [rip + .Lx91_7]
                        push             r11
                        lea              rcx, [rip + .Lx91_3]
                        lea              rdx, [rip + .Lx91_4];                jmp   rax
.Lx91_7:                add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n36_call_builtin_prolog_α
                                                                              jmp   n35_suspend_α
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "append/3"
#-----------------------------------------------------------------------------------------------------------------------
n35_suspend_α:          mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx93_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lx93_61:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n35_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rax, [rip + n35_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   append$2F3_γ
n35_suspend_β:                                                                jmp   n34_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    append$2F3_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   append$2F3_ω
n36_call_builtin_prolog_β:
                                                                              jmp   append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_β:
                                                                              jmp   n14_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11;                            je    .Lx94_50
                        mov              qword ptr [rsp + 1088], r11
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lx94_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1192]
                        add              rsp, 1216;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
append$2F3_ω:
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
                        sub              rsp, 4928
                        mov              qword ptr [rsp + 4904], rcx
                        mov              qword ptr [rsp + 4912], rdx
                        mov              qword ptr [rsp + 4920], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 4896
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 18
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx253_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx253_101
.Lx253_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx253_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx253_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx253_101
.Lx253_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx253_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n96_lit_string_α
n95_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              qword ptr [rsp + 4544], 2            # result
                        mov              dword ptr [rsp + 4548], 21
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 4552], rax;         jmp   n97_lit_string_α
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              qword ptr [rsp + 4560], 2            # result
                        mov              dword ptr [rsp + 4564], 5
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n98_var_ref_α
.Lx255_0:               .quad            .Lx255_0_s
.Lx255_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 4864]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx;         jmp   n99_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4576]
                        mov              qword ptr [rsp + 4528], rax
                        mov              rax, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 4536], rax
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 4512], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 4520], rax
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 4496], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 4504], rax
                        .section         .rodata
.Lrkfn259:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn259]
                        lea              rsi, [rsp + 4496]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4480], rax
                        mov              qword ptr [rsp + 4488], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_var_α
n99_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             mov              rax, qword ptr [rsp + 4864]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n101_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      mov              qword ptr [rsp + 4464], 2            # result
                        mov              dword ptr [rsp + 4468], 5
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n102_call_builtin_prolog_α
.Lx262_0:               .quad            .Lx262_0_s
.Lx262_0_s:             .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 4432], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 4440], rax
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 4416], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 4424], rax
                        .section         .rodata
.Lrkfn264:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rsp + 4416]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4400], rax
                        mov              qword ptr [rsp + 4408], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_var_α
n102_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             mov              rax, qword ptr [rsp + 4864]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 4392], rax;         jmp   n104_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4376], rax
                        .section         .rodata
.Lrkfn268:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rsp + 4368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n105_var_α
n104_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             mov              rax, qword ptr [rsp + 4864]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 4328], rax;         jmp   n106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              qword ptr [rsp + 4336], 2            # result
                        mov              dword ptr [rsp + 4340], 5
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rsp + 4344], rax;         jmp   n107_call_builtin_prolog_α
.Lx271_0:               .quad            .Lx271_0_s
.Lx271_0_s:             .string          "world"
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4312], rax
                        mov              rax, qword ptr [rsp + 4320]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 4328]
                        mov              qword ptr [rsp + 4296], rax
                        .section         .rodata
.Lrkfn273:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]
                        lea              rsi, [rsp + 4288]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4272], rax
                        mov              qword ptr [rsp + 4280], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n108_var_α
n107_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             mov              rax, qword ptr [rsp + 4864]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 4872]
                        mov              qword ptr [rsp + 4264], rax;         jmp   n109_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4256]
                        mov              qword ptr [rsp + 4240], rax
                        mov              rax, qword ptr [rsp + 4264]
                        mov              qword ptr [rsp + 4248], rax
                        .section         .rodata
.Lrkfn277:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rsp + 4240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n110_var_ref_α
n109_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4864]
                        mov              qword ptr [rsp + 4208], rax
                        mov              qword ptr [rsp + 4216], rdx;         jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4192], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4200], rax
                        .section         .rodata
.Lrkfn281:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn281]
                        lea              rsi, [rsp + 4192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4176], rax
                        mov              qword ptr [rsp + 4184], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_lit_string_α
n111_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:      mov              qword ptr [rsp + 4128], 2            # result
                        mov              dword ptr [rsp + 4132], 21
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 4136], rax;         jmp   n113_lit_string_α
.Lx282_0:               .quad            .Lx282_0_s
.Lx282_0_s:             .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              qword ptr [rsp + 4144], 2            # result
                        mov              dword ptr [rsp + 4148], 4
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 4152], rax;         jmp   n114_var_ref_α
.Lx283_0:               .quad            .Lx283_0_s
.Lx283_0_s:             .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n114_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4848]
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx;         jmp   n115_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4160]
                        mov              qword ptr [rsp + 4112], rax
                        mov              rax, qword ptr [rsp + 4168]
                        mov              qword ptr [rsp + 4120], rax
                        mov              rax, qword ptr [rsp + 4144]
                        mov              qword ptr [rsp + 4096], rax
                        mov              rax, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 4104], rax
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 4080], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4088], rax
                        .section         .rodata
.Lrkfn287:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]
                        lea              rsi, [rsp + 4080]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n116_var_ref_α
n115_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4848]
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx;         jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4800]
                        mov              qword ptr [rsp + 4048], rax
                        mov              qword ptr [rsp + 4056], rdx;         jmp   n118_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4016], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4024], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 4008], rax
                        .section         .rodata
.Lrkfn293:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]
                        lea              rsi, [rsp + 4000]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3984], rax
                        mov              qword ptr [rsp + 3992], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n119_var_ref_α
n118_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4848]
                        mov              qword ptr [rsp + 3952], rax
                        mov              qword ptr [rsp + 3960], rdx;         jmp   n120_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4816]
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx;         jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3968]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 3976]
                        mov              qword ptr [rsp + 3944], rax
                        mov              rax, qword ptr [rsp + 3952]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 3960]
                        mov              qword ptr [rsp + 3928], rax
                        .section         .rodata
.Lrkfn299:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]
                        lea              rsi, [rsp + 3920]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n122_var_ref_α
n121_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4848]
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx;         jmp   n123_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4832]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx;         jmp   n124_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 3856], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 3864], rax
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3848], rax
                        .section         .rodata
.Lrkfn305:              .string          "$get_code"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn305]
                        lea              rsi, [rsp + 3840]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3824], rax
                        mov              qword ptr [rsp + 3832], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n125_var_ref_α
n124_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4848]
                        mov              qword ptr [rsp + 3808], rax
                        mov              qword ptr [rsp + 3816], rdx;         jmp   n126_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3808]
                        mov              qword ptr [rsp + 3792], rax
                        mov              rax, qword ptr [rsp + 3816]
                        mov              qword ptr [rsp + 3800], rax
                        .section         .rodata
.Lrkfn309:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rsp + 3792]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n127_lit_string_α
n126_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              qword ptr [rsp + 3760], 2            # result
                        mov              dword ptr [rsp + 3764], 8
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n128_var_ref_α
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          "readback"
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4800]
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx;         jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4816]
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx;         jmp   n130_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n130_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4832]
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx;         jmp   n131_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3736], rax
                        mov              rax, qword ptr [rsp + 3632]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3640]
                        mov              qword ptr [rsp + 3720], rax
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3704], rax
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3688], rax
                        lea              rdi, [rsp + 3680]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3664], rax
                        mov              qword ptr [rsp + 3672], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n132_call_builtin_prolog_α
n131_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3608], rax
                        .section         .rodata
.Lrkfn319:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn319]
                        lea              rsi, [rsp + 3600]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n133_lit_string_α
n132_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:      mov              qword ptr [rsp + 3568], 2            # result
                        mov              dword ptr [rsp + 3572], 0
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n134_call_builtin_prolog_α
.Lx320_0:               .quad            .Lx320_0_s
.Lx320_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3560], rax
                        .section         .rodata
.Lrkfn322:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn322]
                        lea              rsi, [rsp + 3552]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n135_lit_string_α
n134_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      mov              qword ptr [rsp + 3488], 2            # result
                        mov              dword ptr [rsp + 3492], 21
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n136_lit_string_α
.Lx323_0:               .quad            .Lx323_0_s
.Lx323_0_s:             .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              qword ptr [rsp + 3504], 2            # result
                        mov              dword ptr [rsp + 3508], 6
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n137_var_ref_α
.Lx324_0:               .quad            .Lx324_0_s
.Lx324_0_s:             .string          "append"
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4784]
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx;         jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3480], rax
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3448], rax
                        .section         .rodata
.Lrkfn328:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]
                        lea              rsi, [rsp + 3440]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n139_var_α
n138_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 3400], rax;         jmp   n140_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:      mov              qword ptr [rsp + 3408], 2            # result
                        mov              dword ptr [rsp + 3412], 4
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 3416], rax;         jmp   n141_call_builtin_prolog_α
.Lx331_0:               .quad            .Lx331_0_s
.Lx331_0_s:             .string          "more"
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3384], rax
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3368], rax
                        .section         .rodata
.Lrkfn333:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn333]
                        lea              rsi, [rsp + 3360]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n142_var_α
n141_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3320], rax
                        .section         .rodata
.Lrkfn337:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn337]
                        lea              rsi, [rsp + 3312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n144_var_ref_α
n143_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4784]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      mov              qword ptr [rsp + 3280], 2            # result
                        mov              dword ptr [rsp + 3284], 1
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n146_lit_string_α
.Lx340_0:               .quad            .Lx340_0_s
.Lx340_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 5
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n147_lit_string_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "force"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      mov              qword ptr [rsp + 3104], 2            # result
                        mov              dword ptr [rsp + 3108], 4
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n148_call_builtin_prolog_α
.Lx342_0:               .quad            .Lx342_0_s
.Lx342_0_s:             .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3160], rax
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3144], rax
                        lea              rdi, [rsp + 3136]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n149_lit_string_α
n148_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:      mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 2
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n150_call_builtin_prolog_α
.Lx344_0:               .quad            .Lx344_0_s
.Lx344_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3256], rax
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3240], rax
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3224], rax
                        lea              rdi, [rsp + 3216]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n151_call_builtin_prolog_α
n150_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3064], rax
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3048], rax
                        .section         .rodata
.Lrkfn347:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn347]
                        lea              rsi, [rsp + 3040]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n152_lit_string_α
n151_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 21
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n153_lit_string_α
.Lx348_0:               .quad            .Lx348_0_s
.Lx348_0_s:             .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      mov              qword ptr [rsp + 2784], 2            # result
                        mov              dword ptr [rsp + 2788], 4
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n154_var_ref_α
.Lx349_0:               .quad            .Lx349_0_s
.Lx349_0_s:             .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4768]
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx;         jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      mov              qword ptr [rsp + 3008], 2            # result
                        mov              dword ptr [rsp + 3012], 1
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n156_lit_string_α
.Lx352_0:               .quad            .Lx352_0_s
.Lx352_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              qword ptr [rsp + 2912], 2            # result
                        mov              dword ptr [rsp + 2916], 4
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n157_lit_string_α
.Lx353_0:               .quad            .Lx353_0_s
.Lx353_0_s:             .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      mov              qword ptr [rsp + 2832], 2            # result
                        mov              dword ptr [rsp + 2836], 4
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n158_call_builtin_prolog_α
.Lx354_0:               .quad            .Lx354_0_s
.Lx354_0_s:             .string          "text"
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2888], rax
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2872], rax
                        lea              rdi, [rsp + 2864]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n159_lit_string_α
n158_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              qword ptr [rsp + 2816], 2            # result
                        mov              dword ptr [rsp + 2820], 2
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 2824], rax;         jmp   n160_call_builtin_prolog_α
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2984], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2968], rax
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2952], rax
                        lea              rdi, [rsp + 2944]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n161_call_builtin_prolog_α
n160_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2928]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2760], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2744], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2728], rax
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2712], rax
                        .section         .rodata
.Lrkfn359:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn359]
                        lea              rsi, [rsp + 2704]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n162_var_ref_α
n161_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4768]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n163_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4752]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n164_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2648], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2632], rax
                        .section         .rodata
.Lrkfn365:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn365]
                        lea              rsi, [rsp + 2624]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n165_var_ref_α
n164_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4768]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n166_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2584], rax
                        .section         .rodata
.Lrkfn369:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn369]
                        lea              rsi, [rsp + 2576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n167_lit_string_α
n166_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 9
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n168_var_ref_α
.Lx370_0:               .quad            .Lx370_0_s
.Lx370_0_s:             .string          "firstchar"
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4752]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2504], rax
                        lea              rdi, [rsp + 2496]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n170_call_builtin_prolog_α
n169_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2456], rax
                        .section         .rodata
.Lrkfn375:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn375]
                        lea              rsi, [rsp + 2448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n171_lit_string_α
n170_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 0
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n172_call_builtin_prolog_α
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2408], rax
                        .section         .rodata
.Lrkfn378:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]
                        lea              rsi, [rsp + 2400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n173_lit_string_α
n172_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 5
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n174_lit_string_α
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 15
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n175_lit_string_α
.Lx380_0:               .quad            .Lx380_0_s
.Lx380_0_s:             .string          "existence_error"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 11
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n176_var_ref_α
.Lx381_0:               .quad            .Lx381_0_s
.Lx381_0_s:             .string          "source_sink"
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4704]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n177_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2008], rax
                        lea              rdi, [rsp + 2000]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n178_var_ref_α
n177_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4720]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n179_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n179_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2152], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2120], rax
                        lea              rdi, [rsp + 2112]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    n188_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n180_call_builtin_prolog_α
n179_call_builtin_prolog_β:
                                                                              jmp   n188_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx388_102
                        mov              rax, qword ptr [rsp + 2192]
                        mov              rdx, qword ptr [rsp + 2200];         jmp   .Lx388_101
.Lx388_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx388_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx388_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx388_101
.Lx388_100:             lea              rdi, [rsp + 2208]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx388_101:             mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              al, 104;                             je    n188_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n181_lit_string_α
n180_call_builtin_prolog_β:
                                                                              jmp   n188_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:      mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 22
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n182_lit_string_α
.Lx389_0:               .quad            .Lx389_0_s
.Lx389_0_s:             .string          "/tmp/rung65_absent.txt"
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:      mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 4
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n183_var_ref_α
.Lx390_0:               .quad            .Lx390_0_s
.Lx390_0_s:             .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4736]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2328], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2312], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2296], rax
                        .section         .rodata
.Lrkfn394:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn394]
                        lea              rsi, [rsp + 2288]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              al, 104;                             je    n185_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n186_lit_string_α
n184_call_builtin_prolog_β:
                                                                              jmp   n185_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2248], rax
                        .section         .rodata
.Lrkfn396:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn396]
                        lea              rsi, [rsp + 2240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              al, 104;                             je    n188_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n186_lit_string_α
n185_call_builtin_prolog_β:
                                                                              jmp   n188_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 12
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n187_call_builtin_prolog_α
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "existence_ok"
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn399:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]
                        lea              rsi, [rsp + 1872]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n190_lit_string_α
n187_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:      mov              qword ptr [rsp + 1936], 2            # result
                        mov              dword ptr [rsp + 1940], 13
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n189_call_builtin_prolog_α
.Lx400_0:               .quad            .Lx400_0_s
.Lx400_0_s:             .string          "existence_bad"
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1928], rax
                        .section         .rodata
.Lrkfn402:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn402]
                        lea              rsi, [rsp + 1920]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n190_lit_string_α
n189_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 0
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n191_call_builtin_prolog_α
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n191_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1832], rax
                        .section         .rodata
.Lrkfn405:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn405]
                        lea              rsi, [rsp + 1824]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n192_lit_string_α
n191_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      mov              qword ptr [rsp + 1600], 2            # result
                        mov              dword ptr [rsp + 1604], 5
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n193_lit_string_α
.Lx406_0:               .quad            .Lx406_0_s
.Lx406_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:      mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 12
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n194_lit_string_α
.Lx407_0:               .quad            .Lx407_0_s
.Lx407_0_s:             .string          "domain_error"
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:      mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 7
                        mov              rax, qword ptr [rip + .Lx408_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n195_lit_string_α
.Lx408_0:               .quad            .Lx408_0_s
.Lx408_0_s:             .string          "io_mode"
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 5
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n196_call_builtin_prolog_α
.Lx409_0:               .quad            .Lx409_0_s
.Lx409_0_s:             .string          "bogus"
#-----------------------------------------------------------------------------------------------------------------------
n196_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1432], rax
                        lea              rdi, [rsp + 1424]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n197_var_ref_α
n196_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4672]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n198_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1560], rax
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1544], rax
                        lea              rdi, [rsp + 1536]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n207_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n199_call_builtin_prolog_α
n198_call_builtin_prolog_β:
                                                                              jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx414_102
                        mov              rax, qword ptr [rsp + 1616]
                        mov              rdx, qword ptr [rsp + 1624];         jmp   .Lx414_101
.Lx414_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx414_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx414_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx414_101
.Lx414_100:             lea              rdi, [rsp + 1632]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx414_101:             mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n207_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n200_lit_string_α
n199_call_builtin_prolog_β:
                                                                              jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:      mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 21
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n201_lit_string_α
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "/tmp/rung65_scrip.txt"
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      mov              qword ptr [rsp + 1776], 2            # result
                        mov              dword ptr [rsp + 1780], 5
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n202_var_ref_α
.Lx416_0:               .quad            .Lx416_0_s
.Lx416_0_s:             .string          "bogus"
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4688]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n203_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n203_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1752], rax
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1720], rax
                        .section         .rodata
.Lrkfn420:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn420]
                        lea              rsi, [rsp + 1712]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              al, 104;                             je    n204_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n205_lit_string_α
n203_call_builtin_prolog_β:
                                                                              jmp   n204_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n204_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1672], rax
                        .section         .rodata
.Lrkfn422:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn422]
                        lea              rsi, [rsp + 1664]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n207_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n205_lit_string_α
n204_call_builtin_prolog_β:
                                                                              jmp   n207_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 9
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n206_call_builtin_prolog_α
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "iomode_ok"
#-----------------------------------------------------------------------------------------------------------------------
n206_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn425:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn425]
                        lea              rsi, [rsp + 1296]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n209_lit_string_α
n206_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 10
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n208_call_builtin_prolog_α
.Lx426_0:               .quad            .Lx426_0_s
.Lx426_0_s:             .string          "iomode_bad"
#-----------------------------------------------------------------------------------------------------------------------
n208_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn428:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn428]
                        lea              rsi, [rsp + 1344]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n209_lit_string_α
n208_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:      mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 0
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n210_call_builtin_prolog_α
.Lx429_0:               .quad            .Lx429_0_s
.Lx429_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1256], rax
                        .section         .rodata
.Lrkfn431:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]
                        lea              rsi, [rsp + 1248]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n211_lit_string_α
n210_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:      mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 5
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n212_lit_string_α
.Lx432_0:               .quad            .Lx432_0_s
.Lx432_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:      mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 19
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n213_var_ref_α
.Lx433_0:               .quad            .Lx433_0_s
.Lx433_0_s:             .string          "instantiation_error"
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4624]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n214_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n214_call_builtin_prolog_α:
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
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n223_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n215_call_builtin_prolog_α
n214_call_builtin_prolog_β:
                                                                              jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx437_102
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048];         jmp   .Lx437_101
.Lx437_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx437_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx437_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx437_101
.Lx437_100:             lea              rdi, [rsp + 1056]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx437_101:             mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n223_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n216_var_ref_α
n215_call_builtin_prolog_β:
                                                                              jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4640]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n217_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 4
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n218_var_ref_α
.Lx440_0:               .quad            .Lx440_0_s
.Lx440_0_s:             .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4656]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n219_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn444:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn444]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n220_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n221_lit_string_α
n219_call_builtin_prolog_β:
                                                                              jmp   n220_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n220_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1096], rax
                        .section         .rodata
.Lrkfn446:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn446]
                        lea              rsi, [rsp + 1088]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n223_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n221_lit_string_α
n220_call_builtin_prolog_β:
                                                                              jmp   n223_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 7
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n222_call_builtin_prolog_α
.Lx447_0:               .quad            .Lx447_0_s
.Lx447_0_s:             .string          "inst_ok"
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn449:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn449]
                        lea              rsi, [rsp + 832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n225_lit_string_α
n222_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:      mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 8
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n224_call_builtin_prolog_α
.Lx450_0:               .quad            .Lx450_0_s
.Lx450_0_s:             .string          "inst_bad"
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn452:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn452]
                        lea              rsi, [rsp + 880]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n225_lit_string_α
n224_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:      mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 0
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n226_call_builtin_prolog_α
.Lx453_0:               .quad            .Lx453_0_s
.Lx453_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n226_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn455:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn455]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n227_lit_string_α
n226_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:      mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 5
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n228_lit_string_α
.Lx456_0:               .quad            .Lx456_0_s
.Lx456_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:      mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 12
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n229_lit_string_α
.Lx457_0:               .quad            .Lx457_0_s
.Lx457_0_s:             .string          "domain_error"
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:      mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 11
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n230_lit_integer_α
.Lx458_0:               .quad            .Lx458_0_s
.Lx458_0_s:             .string          "source_sink"
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n231_call_builtin_prolog_α
.Lx459_0:               .quad            123
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n232_var_ref_α
n231_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4592]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n233_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n242_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n234_call_builtin_prolog_α
n233_call_builtin_prolog_β:
                                                                              jmp   n242_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx464_102
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584];          jmp   .Lx464_101
.Lx464_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx464_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx464_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx464_101
.Lx464_100:             lea              rdi, [rsp + 592]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx464_101:             mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n242_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n235_lit_integer_α
n234_call_builtin_prolog_β:
                                                                              jmp   n242_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_integer_α:     mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n236_lit_string_α
.Lx465_0:               .quad            123
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:      mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 4
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n237_var_ref_α
.Lx466_0:               .quad            .Lx466_0_s
.Lx466_0_s:             .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 4608]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_prolog_α:
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
                        .section         .rodata
.Lrkfn470:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn470]
                        lea              rsi, [rsp + 672]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n239_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n240_lit_string_α
n238_call_builtin_prolog_β:
                                                                              jmp   n239_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n239_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn472:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn472]
                        lea              rsi, [rsp + 624]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n242_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n240_lit_string_α
n239_call_builtin_prolog_β:
                                                                              jmp   n242_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:      mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 13
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n241_call_builtin_prolog_α
.Lx473_0:               .quad            .Lx473_0_s
.Lx473_0_s:             .string          "sourcesink_ok"
#-----------------------------------------------------------------------------------------------------------------------
n241_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn475:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn475]
                        lea              rsi, [rsp + 256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n244_lit_string_α
n241_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:      mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 14
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n243_call_builtin_prolog_α
.Lx476_0:               .quad            .Lx476_0_s
.Lx476_0_s:             .string          "sourcesink_bad"
#-----------------------------------------------------------------------------------------------------------------------
n243_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn478:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn478]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n244_lit_string_α
n243_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_string_α:      mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 0
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n245_call_builtin_prolog_α
.Lx479_0:               .quad            .Lx479_0_s
.Lx479_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n245_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn481:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn481]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n246_lit_string_α
n245_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 4
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n247_call_builtin_prolog_α
.Lx482_0:               .quad            .Lx482_0_s
.Lx482_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n247_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn484:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn484]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n248_lit_string_α
n247_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:      mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n249_call_builtin_prolog_α
.Lx485_0:               .quad            .Lx485_0_s
.Lx485_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n249_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn487:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn487]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n252_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n250_move_label_α
n249_call_builtin_prolog_β:
                                                                              jmp   n252_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n250_move_label_α:      lea              rax, [rip + n252_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n251_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n251_disjunction_β:                                                           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
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
n252_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n251_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 4904]
                        add              rsp, 4928;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 4912]
                        add              rsp, 4928;                           jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "append/3"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
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
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
