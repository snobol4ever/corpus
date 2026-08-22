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
                        sub              rsp, 2480
                        mov              qword ptr [rsp + 2456], rcx
                        mov              qword ptr [rsp + 2464], rdx
                        mov              qword ptr [rsp + 2472], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 2448
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx181_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx181_101
.Lx181_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx181_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx181_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx181_101
.Lx181_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx181_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n96_var_ref_α
n95_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2400]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2280], rax
                        .section         .rodata
.Lrkfn185:              .string          "$telling"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]
                        lea              rsi, [rsp + 2272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_var_ref_α
n97_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2416]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n99_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2232], rax
                        .section         .rodata
.Lrkfn189:              .string          "$seeing"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rsp + 2224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n100_lit_string_α
n99_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 3
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n101_var_ref_α
.Lx190_0:               .quad            .Lx190_0_s
.Lx190_0_s:             .string          "std"
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2400]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n102_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2416]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx;         jmp   n103_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2152], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2136], rax
                        lea              rdi, [rsp + 2128]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n104_call_builtin_prolog_α
n103_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2072], rax
                        .section         .rodata
.Lrkfn197:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rsp + 2064]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n105_lit_string_α
n104_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 0
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n106_call_builtin_prolog_α
.Lx198_0:               .quad            .Lx198_0_s
.Lx198_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2024], rax
                        .section         .rodata
.Lrkfn200:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn200]
                        lea              rsi, [rsp + 2016]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_lit_string_α
n106_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 15
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n108_call_builtin_prolog_α
.Lx201_0:               .quad            .Lx201_0_s
.Lx201_0_s:             .string          "/tmp/rung80.txt"
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1976], rax
                        .section         .rodata
.Lrkfn203:              .string          "$tell"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rsp + 1968]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_lit_string_α
n108_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      mov              qword ptr [rsp + 1936], 2            # result
                        mov              dword ptr [rsp + 1940], 5
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n110_lit_integer_α
.Lx204_0:               .quad            .Lx204_0_s
.Lx204_0_s:             .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:     mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n111_call_builtin_prolog_α
.Lx205_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n112_call_builtin_prolog_α
n111_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1848], rax
                        .section         .rodata
.Lrkfn208:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn208]
                        lea              rsi, [rsp + 1840]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_lit_string_α
n112_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n114_call_builtin_prolog_α
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1800], rax
                        .section         .rodata
.Lrkfn211:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rsp + 1792]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n115_lit_string_α
n114_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 0
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n116_call_builtin_prolog_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1752], rax
                        .section         .rodata
.Lrkfn214:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn214]
                        lea              rsi, [rsp + 1744]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n117_lit_string_α
n116_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 4
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n118_lit_string_α
.Lx215_0:               .quad            .Lx215_0_s
.Lx215_0_s:             .string          "beta"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 3
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n119_call_builtin_prolog_α
.Lx216_0:               .quad            .Lx216_0_s
.Lx216_0_s:             .string          "two"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1672], rax
                        lea              rdi, [rsp + 1664]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_call_builtin_prolog_α
n119_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1624], rax
                        .section         .rodata
.Lrkfn219:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rsp + 1616]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n121_lit_string_α
n120_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:      mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n122_call_builtin_prolog_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1576], rax
                        .section         .rodata
.Lrkfn222:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn222]
                        lea              rsi, [rsp + 1568]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n123_lit_string_α
n122_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 0
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n124_call_builtin_prolog_α
.Lx223_0:               .quad            .Lx223_0_s
.Lx223_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn225:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n125_call_builtin_prolog_α
n124_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_prolog_α:
                        .section         .rodata
.Lrkfn227:              .string          "$told"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rsp + 1504]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_lit_string_α
n125_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 15
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n127_call_builtin_prolog_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          "/tmp/rung80.txt"
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn230:              .string          "$append"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n128_lit_string_α
n127_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      mov              qword ptr [rsp + 1424], 2            # result
                        mov              dword ptr [rsp + 1428], 5
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n129_lit_integer_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "gamma"
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n130_call_builtin_prolog_α
.Lx232_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1384], rax
                        lea              rdi, [rsp + 1376]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n131_call_builtin_prolog_α
n130_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lrkfn235:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n132_lit_string_α
n131_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n133_call_builtin_prolog_α
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1288], rax
                        .section         .rodata
.Lrkfn238:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rsp + 1280]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n134_lit_string_α
n133_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:      mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 0
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n135_call_builtin_prolog_α
.Lx239_0:               .quad            .Lx239_0_s
.Lx239_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn241:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n136_call_builtin_prolog_α
n135_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        .section         .rodata
.Lrkfn243:              .string          "$told"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn243]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n137_var_ref_α
n136_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2384]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n138_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1176], rax
                        .section         .rodata
.Lrkfn247:              .string          "$telling"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rsp + 1168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n139_lit_string_α
n138_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 10
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n140_var_ref_α
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "after_told"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2384]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n141_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        lea              rdi, [rsp + 1088]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n142_call_builtin_prolog_α
n141_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax
                        .section         .rodata
.Lrkfn253:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rsp + 1040]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n143_lit_string_α
n142_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 0
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n144_call_builtin_prolog_α
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn256:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n145_lit_string_α
n144_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 15
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n146_call_builtin_prolog_α
.Lx257_0:               .quad            .Lx257_0_s
.Lx257_0_s:             .string          "/tmp/rung80.txt"
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn259:              .string          "$see"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn259]
                        lea              rsi, [rsp + 944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n147_var_ref_α
n146_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n148_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn263:              .string          "$read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]
                        lea              rsi, [rsp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n149_var_ref_α
n148_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2336]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn267:              .string          "$read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n151_var_ref_α
n150_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2352]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n152_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn271:              .string          "$read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
                        lea              rsi, [rsp + 800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n153_var_ref_α
n152_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2368]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n154_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn275:              .string          "$read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn275]
                        lea              rsi, [rsp + 752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n155_call_builtin_prolog_α
n154_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_prolog_α:
                        .section         .rodata
.Lrkfn277:              .string          "$seen"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rsp + 736]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n156_lit_string_α
n155_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 5
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n157_var_ref_α
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          "read4"
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n158_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2336]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n159_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2352]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n160_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2368]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n161_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n162_call_builtin_prolog_α
n161_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn289:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn289]
                        lea              rsi, [rsp + 512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n163_lit_string_α
n162_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 0
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n164_call_builtin_prolog_α
.Lx290_0:               .quad            .Lx290_0_s
.Lx290_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn292:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn292]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n165_var_ref_α
n164_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2304]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n166_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn296:              .string          "$seeing"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn296]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n167_lit_string_α
n166_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 10
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n168_var_ref_α
.Lx297_0:               .quad            .Lx297_0_s
.Lx297_0_s:             .string          "after_seen"
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2304]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n170_call_builtin_prolog_α
n169_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn302:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n171_lit_string_α
n170_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 0
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n172_call_builtin_prolog_α
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn305:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn305]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n173_lit_string_α
n172_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 4
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n174_call_builtin_prolog_α
.Lx306_0:               .quad            .Lx306_0_s
.Lx306_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n174_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn308:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn308]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n175_lit_string_α
n174_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 0
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n176_call_builtin_prolog_α
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn311:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn311]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n177_call_proc_staged_α
n176_call_builtin_prolog_β:
                                                                              jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx313_0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx313_1
                        mov              rdi, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx313_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx313_3]
                        push             rcx
                        lea              rcx, [rip + .Lx313_3]
                        lea              rdx, [rip + .Lx313_4];               jmp   rax
.Lx313_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx313_2
.Lx313_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx313_2
.Lx313_1:               call             rt_faildescr@PLT
.Lx313_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx313_29
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
.Lx313_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n180_call_builtin_prolog_α
                                                                              jmp   n178_move_label_α
n177_call_proc_staged_β:
                                                                              jmp   n180_call_builtin_prolog_α
.Lx313_0:               .quad            .Lx313_0_s
.Lx313_0_s:             .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n178_move_label_α:      lea              rax, [rip + n177_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n179_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n179_disjunction_β:                                                           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_prolog_α:
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
n180_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n179_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2456]
                        add              rsp, 2480;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 2464]
                        add              rsp, 2480;                           jmp   rcx
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
